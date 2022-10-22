#!/bin/sh
#Jayla House
#CS 4350-UnixSystems Programming
#Section Number: 001
#Due Date: 9/22/2021 no later than 5:15pm
restart="Y"
while [ $restart = "Y" ]
do
   echo -n "Enter four integer values (x1,x2,y1,y2) ----> "
   read x1 x2 y1 y2;
   echo ""
   var1=$(expr $x2 - $x1)
   var2=$(expr $y2 - $y1)
   var1=$(expr $var1 \* $var1)
   var2=$(expr $var2 \* $var2)
   var3=$(expr $var1 + $var2)
   radius=$(expr 'scale=2;sqrt('$var3')' | bc)
   pie=3.14159
   circumference=$(expr "scale=2;2 *($pie * $radius)" | bc)
   area=$(expr 'scale=2;'$pie' * ('$radius^2')' | bc)
   diameter=$(expr 'scale=2;sqrt('4*$area/$pie')' | bc)
   echo "The Radius is        :    $radius"
   echo "The Circumference is :    $circumference"
   echo "The Area is          :    $area"
   echo "The Diameter is      :    $diameter"
   echo ""
   echo -n "Run the script again Y|N ----> "
   read restart;
done
echo ""
echo "End of script"
echo ""
echo "The Script Is Implemented By Jayla House"
echo "9-22-2021"
exit 0
