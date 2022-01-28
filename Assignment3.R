# - Module # 3 Introduction to Data.frame

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)

polls <- cbind(Name, ABC, CBS)

polls

#     Name      ABC  CBS 
#[1,] "Jeb"     "4"  "12"
#[2,] "Donald"  "62" "75"
#[3,] "Ted"     "51" "43"
#[4,] "Marco"   "21" "19"
#[5,] "Carly"   "2"  "1" 
#[6,] "Hillary" "14" "21"
#[7,] "Berine"  "15" "19"

# using cbind as shown above, it looks like numeric values are treated as characters
# making is impossible to apply descriptive statistics functions

#updating the above script with data.frame data structure

polls.df <- data.frame(Name, ABC, CBS, stringsAsFactors = FALSE)
polls.df

#The issue with numeric was solved with the use of data.frame and sapply function
#> polls.df
##    Name ABC CBS
#1     Jeb   4  12
#2  Donald  62  75
#3     Ted  51  43
#4   Marco  21  19
#5   Carly   2   1
#6 Hillary  14  21
#7  Berine  15  19

# Working with descriptive statistical packages
# using sapply with mean function
sapply(polls.df[c('ABC', 'CBS')], mean, 2)

#using summary function
summary(polls.df)


