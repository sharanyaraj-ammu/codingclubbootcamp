#! /bin/bash 
echo "Enter a string"
#Take input from user
read text
#Counting words
word=$(echo -n "$text" | wc -w)
#Counting characters
char=$(echo -n "$text" | wc -c)
#Counting Number of white spaces (Here,specificaly " ")
#sed "s/ change this to whitespace //g"
space=$(expr length "$text" -length 'echo "$text" | sed "s/ //g"')
#Counting special characters 
special=$(expr length "${text//[^\~!@#$&*()]/}")

echo "Number of Words = $word"
echo "Number of Characters = $char"
echo "Number of White Spaces = $space"
echo "Number of Special symbols = $special"
OUTPUT:
Enter a string 
Sujatha Is Great !!
Number of Number of Words =4
Number of Characters =19
Number of White Spaces =2
Number of Special specials =2

