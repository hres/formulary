commit bb6cf700d14fe506dceef2b6f8cdbc644f9a6012
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 10 09:43:06 2017 -0500

    version 7.1
    added distinct to mp_table_top250
    corrected name in tm_table_top250

commit 5ae457f6e4da749ff91439a98e8cf7ba01b35dc0
Merge: e924da8 1645637
Author: bclaught <bclaught@uwaterloo.ca>
Date:   Thu Feb 9 14:55:35 2017 -0500

    Merge pull request #5 from bclaught/master
    
    updated readme, version 7 of ntp_generation.r

commit 16456379afcb943e4fd4d0a9babaa1cc9fb5568d
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Feb 9 14:55:07 2017 -0500

    UTF-8 at the top
    TBDs -> 500

commit 74128ad1573449f2b417598d983b97c55b988321
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Feb 9 14:45:18 2017 -0500

    one relationship table
    minor bug fix at line 321 (added ungroup)

commit 43f07fbad8712341ae561fe40c772bc144b95b73
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Feb 9 14:11:20 2017 -0500

    added spec changes after 2017-02-09 eRx meeting

commit e924da834715f9945f7dd6c6a84ac1bcc2324779
Merge: a4feb07 aff93d1
Author: bclaught <bclaught@uwaterloo.ca>
Date:   Wed Feb 8 16:21:40 2017 -0500

    Merge pull request #4 from bclaught/master
    
    Pull request for version 6 of ntp_generation.R

commit aff93d10af5115114d0c2302a4dcdddbb468280a
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Feb 8 16:20:06 2017 -0500

    Updated ntp_generation.R script so that the columns in the final tables have correct names that match the readme.

commit d3c91b5d9a4ac77b0754467db373f7e3977e27f6
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Feb 8 16:19:24 2017 -0500

    Updated readme as per Beverly Knight's suggestions.

commit 736b908387be411095516d647cca95c402135d94
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 3 16:32:33 2017 -0500

    if the dosage unit is "ACT", change to "ACTUATION"

commit b94cd60b2499585c68b51717449f85dbb2a7265d
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 3 16:32:07 2017 -0500

    Included the list of unapproved dosages and added a filter to the strength/dosage term so that they are not included.

commit e26214605f1df8eba268bf144bb67e4fa8186778
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 3 16:04:03 2017 -0500

    Encoding in UTF-8 and changed to .txt from .csv

commit e44a9b423112444bdccb500b40ce9c61ac8a1309
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 3 15:34:29 2017 -0500

    Changed README
    
    DIN -> mp_code in main tables
    Created the two mapping table... tables
    Characters got switched to Strings

commit b3a8113399898975a5276b60717a5070050bc704
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Feb 3 15:28:38 2017 -0500

    Added comments
    Created two mapping tables for ntp and tm
    Changed the delimiter in the output tables to pipes

commit 7e285c7090bf370f7c9dea8951f74c5be637c534
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Feb 1 09:07:04 2017 -0500

    Added data lengths to columns

commit a4feb07e7e6c1e835e1d4ba1fd524a21242b70d2
Merge: e844b54 f0467f3
Author: bclaught <bclaught@uwaterloo.ca>
Date:   Mon Jan 30 11:47:27 2017 -0500

    Merge pull request #3 from bclaught/master
    
    more tweaks to ntp_generation.R

commit f0467f3723f1ed8b85ca246da87cda46a738df3c
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Mon Jan 30 11:44:50 2017 -0500

    Added more table descriptions.

commit ed266c8c59c80fff0aa2c71cd08e969a4e552bd0
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Mon Jan 30 10:23:09 2017 -0500

    Adding table descriptions for README

commit beed7094398bac134fb92c44e2b23b32e4f4df7d
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Mon Jan 30 09:20:09 2017 -0500

    Added some readability

commit f9d1a1d95085f0233edd2c0d8f83d982b29fa974
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Jan 27 15:39:54 2017 -0500

    Unknowingly committed a bug with the name generation. It caused other problems relating to how the strengths were getting ordered, repeating tm_sets...

commit c6de78c26c4c36cd16764c032d6649234d185e80
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Jan 27 11:22:02 2017 -0500

    moved mapping_for_top_250.csv to data folder, and fixed three issues as discussed in 2017-01-26 meeting with ePrescribing:
    
    * Renaming IDs to Codes
    * Removing columns doseform and tm_set from the mapping table
    * replacing all instances of "ml" with "mL"
    * file formatting should be good now.
    
    TODO: prepare readme file and column descriptions.

commit 60add50e5a12872709fcafd5ee1d9ba4a7cf0453
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 26 15:24:20 2017 -0500

    Fixed errors with strength and dosage, missing/duplicate drug strengths, leading and trailing zeroes.

commit e3a5d9dd2b1a5d195547602f6eaffaf873e4e74a
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 19 11:13:49 2017 -0500

    Needed data for ntp_generation.R

commit e844b54e3b3a45fb5b881e879d46326d9a6b7a83
Merge: 7cb5cd1 31d4a05
Author: bclaught <bclaught@uwaterloo.ca>
Date:   Thu Jan 19 11:04:00 2017 -0500

    Merge pull request #2 from bclaught/my-branch
    
    My branch

commit 31d4a053f6f2985ea1d53f823ab54a5055f29707
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 19 11:02:11 2017 -0500

    top250 changes

commit cde62b4a05f5e5562e421c8d1ccbd86f0ca66d1d
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 19 10:59:56 2017 -0500

    Major changes to the script.
    
    Seamless use should now be possible.
    
    * Fixed table generation
    * Cleaner(-ish) code
    * Fixes for top 250

commit 165e1e7acea112a9a886aed073941df8e978b4ae
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Jan 13 16:47:48 2017 -0500

    adding comments to tables before leaving

commit 73fc444b91671c89ff89d5173eba62fd4475facc
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Fri Jan 13 14:46:33 2017 -0500

    not at all happy with the code structure, but fixed up tables to an extent.
    
    will need to refactored (a lot of the code was done on intuition and not based on readablility)

commit 3e8fa84063f22ab9f6c9648803b668ae98c4042f
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 12 16:39:34 2017 -0500

    made amendments and got top 250 for main mp tables

commit f99810dfc2f51756094dd90cdfaa91f331ffa2b3
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 12 16:07:45 2017 -0500

    fixed a couple bugs with the tables after meeting with Dan
    
    still more issues but tables exist!

commit 43c78e14628c835d1bfe0d0caf8751d022433ff4
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Thu Jan 12 14:22:49 2017 -0500

    Added many new tables. Very messy right now.
    
    * dpd_active_ingredients
    * substance_sets
    * products
    * mp_source
    * mp_table
    * NTP_table
    * tm_table
    * mapping_table

commit 7cb5cd1cee4db08a95f3285aed633340b60948ab
Merge: 8cbea0d 72fa6ad
Author: dbuijs <dbuijs@gmail.com>
Date:   Wed Jan 11 11:18:35 2017 -0500

    Merge pull request #1 from bclaught/my-branch
    
    My branch

commit 72fa6ad6595d25d5b75cfb1243036697d13d4936
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Jan 11 11:12:24 2017 -0500

    finished up comments

commit cfeed3908197bc05780616b5663dc36d83437e11
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Jan 11 10:26:31 2017 -0500

    minor bug on line 130 (wrong variable name)
    
    more comments

commit c931da8d2aeeb0381685334dcfbafcbcf0b1fd94
Author: bclaught <bclaught@rstudio.hres.ca>
Date:   Wed Jan 11 09:34:56 2017 -0500

    Added first comments, no code fixes.

commit 8cbea0d27e4ae6abe2f44e73982990569dc9275d
Author: dbuijs <dbuijs@gmail.com>
Date:   Tue Jan 10 15:51:39 2017 -0500

    Added sample file templates

commit b6ce30136f39cd05aa6d4c598df9b2781e92b582
Author: dbuijs <dbuijs@gmail.com>
Date:   Tue Jan 10 15:47:04 2017 -0500

    added comments

commit df5d354b5b20677f432a1ca5915d523cf587f1ee
Author: dbuijs <dbuijs@gmail.com>
Date:   Fri Jan 6 14:44:21 2017 -0500

    Initial Commit

commit 90862c7e669384db9bd6c093f84ff09570e18eff
Author: dbuijs <dbuijs@rstudio.hres.ca>
Date:   Tue Dec 6 13:16:26 2016 -0500

    Initial commit
