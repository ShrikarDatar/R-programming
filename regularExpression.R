
#consider charchter vector modes of transport include 4 modes of transport search for pattern "ei" in mode of transport
modes=c("Airways","Railways","Roadways","Seaways")
grep(pattern = "\\w[i]",modes,value=TRUE)
grep(pattern = "\\w[e]",modes,value=TRUE)
grep(pattern = "\\w[ei]",modes,value=TRUE)

#Consider string "My roll number is 2" extract digit from the string
str="My roll number is 2"
str_extract_all(str,"[0-9]+")

#input a string which consists of space and remove spaces it
str="my name is shree"
gsub("\\s","",str)


#create a variable name as a set which consists of the "Current year is 2019" find the digit and display 
#1.varify if their is digit in string variable
#2.Find  all position of text where their is digit
#3.create variable called pattern & implement required pattern for finding one digit and one case Alpahnumeric given text
#4.create a pettern that checknif their is lower case charchter followed by any charchter & then by digit in given text
#5.find following one space followed by two lower case letter & one more space used as function that returns starting pointof the formal string & place it in result variabl
str1="Current year is 2019"
str_extract_all(str1,"[0-9]+")
str_locate_all(str1,"[0-9]+")
pat1="[[:alnum:]]"
str_extract(str1,pat1)
pat2="[[:digit:]]"
str_extract(str1,pat2)
