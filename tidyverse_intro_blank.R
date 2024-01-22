
R version 4.3.2 Patched (2024-01-16 r85813) -- "Eye Holes"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin23.2.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> ## Strip code from files and keep comments
> 
> infile <- commandArgs(TRUE)
> 
> 
> txt <- readLines(infile)
> keep <- grepl("^#", txt, perl = TRUE)
> txt[!keep] <- ""
> txt
  [1] "## Tidyverse Intro Code File"                                                    
  [2] ""                                                                                
  [3] ""                                                                                
  [4] "## Load the tidyverse package"                                                   
  [5] ""                                                                                
  [6] ""                                                                                
  [7] "## Load the datasets package"                                                    
  [8] ""                                                                                
  [9] ""                                                                                
 [10] "## Print the entire 'airquality' dataset (from the \"datasets\" package)"        
 [11] ""                                                                                
 [12] ""                                                                                
 [13] ""                                                                                
 [14] "## Print out the first few rows of the 'airquality' dataset"                     
 [15] ""                                                                                
 [16] ""                                                                                
 [17] ""                                                                                
 [18] ""                                                                                
 [19] "## Get more information on the airquality dataset"                               
 [20] "## ?airquality"                                                                  
 [21] ""                                                                                
 [22] ""                                                                                
 [23] "## Convert the 'airquality' data frame to a tibble (and save to a different"     
 [24] "## object name)"                                                                 
 [25] ""                                                                                
 [26] ""                                                                                
 [27] ""                                                                                
 [28] "## Print out tibble"                                                             
 [29] ""                                                                                
 [30] ""                                                                                
 [31] ""                                                                                
 [32] "## Print out one variable/column (use $ to access one column)"                   
 [33] ""                                                                                
 [34] ""                                                                                
 [35] ""                                                                                
 [36] "## Print out one variable/column (use $ to access one column)"                   
 [37] ""                                                                                
 [38] ""                                                                                
 [39] ""                                                                                
 [40] "## Make a summary of the 'Ozone' variable"                                       
 [41] ""                                                                                
 [42] ""                                                                                
 [43] ""                                                                                
 [44] "## Make a summary of the 'Temp' variable"                                        
 [45] ""                                                                                
 [46] ""                                                                                
 [47] "## Compute a single statistic (the median) for Temp"                             
 [48] ""                                                                                
 [49] ""                                                                                
 [50] "## Compute a single statistic"                                                   
 [51] ""                                                                                
 [52] ""                                                                                
 [53] "## Print out Ozone variable (note NA values)"                                    
 [54] ""                                                                                
 [55] ""                                                                                
 [56] ""                                                                                
 [57] "## Check help file for mean"                                                     
 [58] "## ?mean"                                                                        
 [59] ""                                                                                
 [60] ""                                                                                
 [61] "## Remove NA values from data when computing the mean using na.rm argument"      
 [62] ""                                                                                
 [63] ""                                                                                
 [64] "## Use tidyverse pipe to compute mean ozone"                                     
 [65] ""                                                                                
 [66] ""                                                                                
 [67] ""                                                                                
 [68] ""                                                                                
 [69] "## Use filter() function to remove NA values"                                    
 [70] ""                                                                                
 [71] ""                                                                                
 [72] ""                                                                                
 [73] ""                                                                                
 [74] "## Filter NA values and then compute the mean"                                   
 [75] ""                                                                                
 [76] ""                                                                                
 [77] ""                                                                                
 [78] ""                                                                                
 [79] ""                                                                                
 [80] "## Compute summary stat for more variables (Ozone, Wind, Temp)"                  
 [81] ""                                                                                
 [82] ""                                                                                
 [83] ""                                                                                
 [84] ""                                                                                
 [85] ""                                                                                
 [86] ""                                                                                
 [87] ""                                                                                
 [88] "## Bivariate relationships"                                                      
 [89] "## Look at relationship between Temp and Wind"                                   
 [90] ""                                                                                
 [91] ""                                                                                
 [92] ""                                                                                
 [93] ""                                                                                
 [94] ""                                                                                
 [95] ""                                                                                
 [96] "## Divide the range of Temp into 2 categories and create new variable 'temp_cat'"
 [97] ""                                                                                
 [98] ""                                                                                
 [99] ""                                                                                
[100] ""                                                                                
[101] ""                                                                                
[102] "## Compute the mean of Wind within each of the 2 Temp categories"                
[103] ""                                                                                
[104] ""                                                                                
[105] ""                                                                                
[106] ""                                                                                
[107] ""                                                                                
[108] ""                                                                                
[109] ""                                                                                
[110] "## Use 5 categories of Temp"                                                     
[111] ""                                                                                
[112] ""                                                                                
[113] ""                                                                                
[114] ""                                                                                
[115] ""                                                                                
[116] ""                                                                                
[117] ""                                                                                
[118] "## Compute the mean of Temp within each of the 5 categories of Wind"             
[119] ""                                                                                
[120] ""                                                                                
[121] ""                                                                                
[122] ""                                                                                
[123] ""                                                                                
[124] ""                                                                                
[125] ""                                                                                
[126] "## Look at Solar.R and Ozone"                                                    
[127] ""                                                                                
[128] ""                                                                                
[129] ""                                                                                
[130] ""                                                                                
[131] ""                                                                                
[132] ""                                                                                
[133] "## Filter out NA values (how many rows in the new data frame?)"                  
[134] ""                                                                                
[135] ""                                                                                
[136] ""                                                                                
[137] ""                                                                                
[138] ""                                                                                
[139] "## Create 2 categories of Solar.R and save in new variable called 'solar_cat'"   
[140] ""                                                                                
[141] ""                                                                                
[142] ""                                                                                
[143] ""                                                                                
[144] ""                                                                                
[145] ""                                                                                
[146] "## Compute the mean of ozone within each of 2 categories of Solar.R"             
[147] ""                                                                                
[148] ""                                                                                
[149] ""                                                                                
[150] ""                                                                                
[151] ""                                                                                
[152] ""                                                                                
[153] ""                                                                                
[154] ""                                                                                
[155] "## Compute the mean of ozone within each of 3 or 5 categories of Solar.R"        
[156] ""                                                                                
[157] ""                                                                                
[158] ""                                                                                
[159] ""                                                                                
[160] ""                                                                                
[161] ""                                                                                
[162] ""                                                                                
[163] ""                                                                                
[164] ""                                                                                
[165] ""                                                                                
[166] ""                                                                                
[167] ""                                                                                
[168] ""                                                                                
[169] ""                                                                                
[170] ""                                                                                
[171] ""                                                                                
[172] ""                                                                                
[173] ""                                                                                
[174] ""                                                                                
[175] ""                                                                                
[176] ""                                                                                
[177] ""                                                                                
[178] ""                                                                                
[179] ""                                                                                
[180] ""                                                                                
[181] ""                                                                                
> 
> writeLines(txt)
## Tidyverse Intro Code File


## Load the tidyverse package


## Load the datasets package


## Print the entire 'airquality' dataset (from the "datasets" package)



## Print out the first few rows of the 'airquality' dataset




## Get more information on the airquality dataset
## ?airquality


## Convert the 'airquality' data frame to a tibble (and save to a different
## object name)



## Print out tibble



## Print out one variable/column (use $ to access one column)



## Print out one variable/column (use $ to access one column)



## Make a summary of the 'Ozone' variable



## Make a summary of the 'Temp' variable


## Compute a single statistic (the median) for Temp


## Compute a single statistic


## Print out Ozone variable (note NA values)



## Check help file for mean
## ?mean


## Remove NA values from data when computing the mean using na.rm argument


## Use tidyverse pipe to compute mean ozone




## Use filter() function to remove NA values




## Filter NA values and then compute the mean





## Compute summary stat for more variables (Ozone, Wind, Temp)







## Bivariate relationships
## Look at relationship between Temp and Wind






## Divide the range of Temp into 2 categories and create new variable 'temp_cat'





## Compute the mean of Wind within each of the 2 Temp categories







## Use 5 categories of Temp







## Compute the mean of Temp within each of the 5 categories of Wind







## Look at Solar.R and Ozone






## Filter out NA values (how many rows in the new data frame?)





## Create 2 categories of Solar.R and save in new variable called 'solar_cat'






## Compute the mean of ozone within each of 2 categories of Solar.R








## Compute the mean of ozone within each of 3 or 5 categories of Solar.R


























> 
