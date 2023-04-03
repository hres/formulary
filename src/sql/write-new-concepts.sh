#!/bin/bash -e

# Purpose of this shell script is to show missing concepts, and give
# the option to write them

while [ ! $# -eq 0 ]
do
	case "$1" in
		--all | -a)
			write_all_full=true
			break
			;;
		--temp | -t)
			write_all_temp=true
			break
			;;
	esac
	shift
done

baseDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
distDir="$baseDir/../dist"
testDir="$baseDir/../sql/test"

dbName="ccdd_2023_04_03_104848"
echo "Reading from generation $dbName..."
echo

export PGDATABASE=$dbName

# rep: report (name of view that initially reports missing concepts)
# dft: the table that contains definitions
# ncn: new concepts (name of the table that creates / formats new concepts according to rep)
# dff: definition file (name of the csv file that contains the definitions)

pseudodin_map_cols='pseudodin,drug_code,unit_of_presentation,uop_size_amount,uop_size_unit,unit_of_presentation_fr'

rep=('qa_missing_concepts_ntp'           'qa_missing_concepts_pseudodin' 'qa_missing_concepts_tm')
dft=('ccdd.ntp_definition'               'ccdd.pseudodin_map'            'ccdd.tm_definition')
ncn=('qa_new_concepts_ntp'               'qa_new_concepts_pseudodin'     'qa_new_concepts_tm')
dff=('ccdd-ntp-definitions-draft.csv'    'ccdd-pseudodin-map-draft.csv'  'ccdd-tm-definitions-draft.csv')
col=('*'                                 $pseudodin_map_cols             '*')

for i in "${!rep[@]}"
do
  choice=""
  printf "\nTEST REPORT\n"
  printf "${ncn[$i]} -> ${dff[$i]}\n"
  missing_concept_count=$(psql -c "SELECT COUNT(*) AS count FROM ${rep[$i]}" | grep -E ' [0-9]* ' | sed 's/[[:space:]]//g')
  new_concept_count=$(psql -c "SELECT COUNT(*) AS count FROM ${ncn[$i]}" | grep -E ' [0-9]* ' | sed 's/[[:space:]]//g')
  test_report=$(psql -c "SELECT * FROM ${ncn[$i]}_test")

  printf "\nCOUNT\tFROM\t\t\tVIEW NAME\n"
  printf "$missing_concept_count\tmissing concepts\t${rep[$i]}\n"
  printf "$new_concept_count\tnew concepts\t\t${ncn[$i]}\n\n"
  printf "$test_report\n"


  if [ "$write_all_full" == true ]; then
    printf "\nWriting ${dff[$i]} directly...\n"
    psql -c "copy (SELECT ${col[$i]} FROM ${dft[$i]}) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$testDir/${dff[$i]}";
    psql -c "copy (SELECT ${col[$i]} FROM ${ncn[$i]}) to STDOUT with CSV FORCE QUOTE * DELIMITER ',';" >> "$testDir/${dff[$i]}";
    printf "done\n"
  elif [ "$write_all_temp" == true ]; then
    printf "\nWriting ${dff[$i]}...\n"
    psql -c "copy (SELECT ${col[$i]} FROM ${dft[$i]}) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/${dff[$i]}.temp";
    psql -c "copy (SELECT ${col[$i]} FROM ${ncn[$i]}) to STDOUT with CSV FORCE QUOTE * DELIMITER ',';" >> "$distDir/${dff[$i]}.temp";
    printf "done\n"
  else
    printf "\nActions:\n\t[a] Write updated version of ${dff[$i]} to a temporary file\n\t[b] Write directly to definition file\n\t[c] Skip this concept" && echo
    read -n 1 -p "" choice
    echo

    case $choice in
      "a" )
        psql -c "copy (SELECT ${col[$i]} FROM ${dft[$i]}) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$distDir/${dff[$i]}.temp"
        psql -c "copy (SELECT ${col[$i]} FROM ${ncn[$i]}) to STDOUT with CSV FORCE QUOTE * DELIMITER ',';" >> "$distDir/${dff[$i]}.temp"
        continue;;
      "b" )
        psql -c "copy (SELECT ${col[$i]} FROM ${dft[$i]}) to STDOUT with CSV HEADER FORCE QUOTE * DELIMITER ',';" > "$testDir/${dff[$i]}"
        psql -c "copy (SELECT ${col[$i]} FROM ${ncn[$i]}) to STDOUT with CSV FORCE QUOTE * DELIMITER ',';" >> "$testDir/${dff[$i]}"
        continue;;
      "c" )
        echo Skipped
        continue;;
      *) echo "Invalid option"; break;;
    esac
  fi

done
