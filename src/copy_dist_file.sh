# Sample script to write/copy artifacts

mkdir /home/dbuijs/formulary/releases/20180712/
cp /home/dbuijs/formulary/src/dist/20180712/*release_candidate* /home/dbuijs/formulary/releases/20180712/
cp /home/dbuijs/formulary/src/dist/20180712/coded_attribute* /home/dbuijs/formulary/releases/20180712/
cp /home/dbuijs/formulary/src/dist/20180712/device* /home/dbuijs/formulary/releases/20180712/
mkdir /home/dbuijs/formulary/releases/20180712/20180712_from_20180612/
cp /home/dbuijs/formulary/src/dist/20180712/20180712_[^f]* /home/dbuijs/formulary/releases/20180712/20180712_from_20180612/
cp /home/dbuijs/formulary/src/dist/20180712/20180712_from_20180612* /home/dbuijs/formulary/releases/20180712/20180712_from_20180612/

cp *_qa_release_20180601.csv /home/dbuijs/formulary/QAfiles/20180601/
cp coded_attribute_20180601.csv /home/dbuijs/formulary/QAfiles/20180601/
cp device-ntp_full_release_20180601.csv /home/dbuijs/formulary/QAfiles/20180601/
mkdir /home/dbuijs/formulary/QAfiles/20180601/20180601_from_20180504/
cp 20180601_[^f]* /home/dbuijs/formulary/QAfiles/20180601/20180601_from_20180504/
  