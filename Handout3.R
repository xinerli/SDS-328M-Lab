
###################### Lab 3 #########################
# Session -> Set Working Directory -> Choose Directory 
# (choose the directory where you download your data)

setwd("D:/2018 Fall/Biostats/Lab")
rowan <- read.csv("Handout3_rowan.csv", header = T)
head(rowan)
str(rowan)
table(rowan$species) # M, O, S

# Subset data (species or nesting)
yes <- rowan[rowan$nesting == 'y', ]
no <- rowan[rowan$nesting =='n', ]


# Center/spread (both are right skewed)
hist(yes$resp.rate)
hist(no$resp.rate)
     
# Descriptive statistic
median(yes$resp.rate, na.rm = TRUE)
# or 
IQR(yes$resp.rate, na.rm = TRUE)


median(no$resp.rate, na.rm = TRUE)
IQR(no$resp.rate, na.rm = TRUE)


# Graph
boxplot(rowan$resp.rate ~ rowan$nesting, main = '', 
        xlab='Birds Nesting', ylab='Respiration rate')

# Outliers (filled circles)are either 3¡ÁIQR or more above the third quartile or 
# 3¡ÁIQR or more below the first quartile.
# Suspected outliers (unfilled circles) are are slightly more central versions of outliers: 
# either 1.5¡ÁIQR or more above the third quartile or 1.5¡ÁIQR or more below the first quartile.
