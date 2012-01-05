ICD-10 Meta Data

ICD-10 meta data is a special excerpt of the Four Character Version of ICD-10. 
The files contain all three and four character codes with their titles and the 
blocks and chapters. This information is linked to the Special Tabulation Lists 
from the appendix of Volume 1.

Meta data can be used e.g. to

    * translate codes into texts,
    * tabulate codes based on ICD blocks, chapters and Special Tabulation Lists ,
    * check codes for formal correctness,

Meta data should not be used as coding software because important parts of ICD-10 
are missing: without the inclusion and exclusion note coding may be incorrect.

Data Structure

All files are available in extended ASCII code and can be used for import into 
relational data bases. Meta data are split into several files:

    * CHAPTERS.TXT
          * Field 1: chapter number, 2 characters
          * Field 2: chapter title, up to 110 characters
    * BLOCKS.TXT
          * Field 1: first three character code of a block, 3 characters
          * Field 2: block title, up to 210 characters
    * CODES.TXT
          * Field 1: level in the hierarchy of the classification, 1 character
                * 3 = three character code
                * 4 = four character code
                * 5 = five character code
          * Field 2: place in the classification tree, 1 character
                * T = terminal node (leaf node, valid for coding)
                * N = non-terminal node (not valid for coding)
          * Field 3: type of code in WHO edition, 1 character
                * P = valid as primary code
                * O = only valid as secondary, optional code
                * V = not valid for coding
          * Field 4: type of terminal node, 1 character
                * X = explicitly listed in the classification (pre-combined)
                * S = derived from a subclassification (post-combined)
          * Field 5: chapter number, 2 characters
          * Field 6: first three character code of a block, 3 characters
          * Field 7: code without possible dagger, up to 6 characters
          * Field 8: like field 7, without possible asterisk
          * Field 9: like field 8, without dot
          * Field 10: title, up to 255 characters (four character subdivisions of Y83 had to be abbreviated)
          * Field 11: reference to special tabulation list for mortality 1
          * Field 12: reference to special tabulation list for mortality 2
          * Field 13: reference to special tabulation list for mortality 3
          * Field 14: reference to special tabulation list for mortality 4
          * Field 15: reference to special tabulation list for morbidity



