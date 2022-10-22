#Name: Jayla House
#CS 4350 - Unix Systems Programming
#Section Number: 001
#Assignment Number: 3
#Due Date: 10/4/2021 no later than 5:15 pm
#!/bin/bash

#--------Generating-3-Random-Number--------------------------
generatenum(){
min=99
max=399
number1=0
number2=0
number3=0

while [ "$number1" -le $min ]
do
  number1=$(( $RANDOM % $max ))
done

while [ "$number2" -le $min ]
do
   number2=$(( $RANDOM % $max ))
done

while [ "$number3" -le $min ]
do
   number3=$(( $RANDOM % $max ))
done

echo "The generated numbers are $number1  $number2  $number3"
echo ""
}
#------------------------------------------------------------

#---------Function1-(add 3 random ints and return the square of sum)--------
func1(){
sum=$(expr $number1 + $number2 )
sum=$(expr $sum + $number3 )
sqrt=$(expr 'sqrt('$sum')' | bc)
echo "1) Squaring the sum of $number1 , $number2 , $number3 , is : $sqrt "
echo ""
}
#--------------------------------------------------------------------------

#------function2-(determines and displayes if the int is odd or even)--------
func2(){
if [ 'expr $number1 % 2' == 0 ]
then
   echo "$number1 is even"
else
   echo "$number1 is Odd"
fi
echo ""
}
#----------------------------------------------------------------------------

#------function3-(determines all odd and Even numbers between 1st int and 2nd)----
func3(){
tempNum=$number1
oddNums=()
while [ $tempNum -le $number2 ]
do
   temp=$(expr $tempNum % 2 )
   if [ $temp != 0 ]
   then
      oddNums+=($tempNum)
   fi
   tempNum=$(expr $tempNum + 1 )
done
echo "All odd numbers between 1 and the second number ( 139 ) are : ${oddNums[*]}"

tempNum=$number1
evenNums=()
while [ $tempNum -le $number2 ]
do
   temp=$(expr $tempNum % 2 )
   if [ $temp != 1 ]
   then
      evenNums+=($tempNum)
   fi
   tempNum=$(expr $tempNum + 1 )
done
echo "All even numbers between 1 and the second number ( 139 ) are : ${evenNums[*]}"
echo ""
}
#--------------------------------------------------------------------------------

#------function4-(determines whether third integer is prime)--------------------
func4(){
i=2
flag=0
numTwo=2
tempNum=$(expr $number \ $numTwo)
while [ $i -le $tempNum ]
do
   temp1=$(expr $number % $i )
   if [ $temp1 -eq 0 ]
   then
      flag=1
   fi
i=$(expr $i + 1 )
done
if test $flag -eq 1
then
   echo "Num is not prime"
else
   echo "num is prime"
fi
echo ""
}
#--------------------------------------------------------------------------------

#-----function5-(Seperates and displays the digits of the second integer)-------
func5(){
echo "The second number ($number2) Seperated: ${number2:0:1} ${number2:1:1} ${number2:2:1} "
echo ""
}
#-------------------------------------------------------------------------------

#----function6-(returns the sum of the integers from the first number)----------
func6(){
digit1=${number1:0:1}
digit2=${number1:1:1}
digit3=${number1:2:1}
digitSum=$(expr $digit1 + $digit2 )
digitSum=$(expr $digitSum + $digit3 )
echo "Sum of digits of the first number ($number1) is : $digitSum"
echo ""
}
#------------------------------------------------------------------------------

#----function7-(finds the Smallest of the int bumbers)-------------------------
func7(){

echo "Smallest of ( $number1, $number2, and $number3 ) is : $temp"
echo ""
}
#------------------------------------------------------------------------------

#----function8-(finds the Largest of the int bumbers)-------------------------
#func8(){
#temp=0
#if [ $number1 -gt $number2 ] && [ $number2 -gt $number3 ]
#then
#  temp=$number1
#elif [ $number2 -gt $number1 ] && [$number2 -gt $number3 ]
#then
#   temp=$number2
#elif [ $number3 -gt $number1 ] && [$number3 -gt $number2 ]
#then
#   temp=$number3
#fi
#echo "Largest of ( $number1, $number2, and $number3 ) is : $temp"
#}
#------------------------------------------------------------------------------

#--------------------intro-for-program----------------------
echo "This script that will generate and display 3 distinct random numbers that are" 
echo "between 99 - 399 and it will perform some calculations. "
echo ""
echo "Select one of the following"
echo ""
echo "1) Generate - Generate numbers and perform some calculations"
echo "2) Exit"
echo ""
echo "Enter your selection:"
read choice
echo ""
while [ $choice = "Generate" ]
do
   generatenum
   func1
   func2
   func3
   func4
   func5
   func6
   func7
#   func8
   echo ""
   echo "This script that will generate and display 3 distinct random numbers that are" 
   echo "between 99 - 399 and it will perform some calculations. "
   echo ""
   echo "Select one of the following"
   echo ""
   echo "1) Generate - Generate numbers and perform some calculations"
   echo "2) Exit"
   echo ""
   echo "Enter your selection:"
   read choice
   echo ""
done
#-----------------------------------------------------------

exit 0
