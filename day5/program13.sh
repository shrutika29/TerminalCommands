#!/bin/bash

result=0;
read -p "Enter 1 for Feet t Inch 2 for Feet to Meter 3 for Inch to Feet 4 for Meter to Feet :" operation

case "$operation" in
			1)
					read -p "Enter lenght in feet :" inpFeet
					echo "In Inches : "$(( $inpFeet*12))
			;;

			2)
               read -p "Enter lenght in feet :" inpFeet
               echo "In Meters : "$( bc <<< "scale=4; ($inpFeet/3.281)")
         ;;


			 3)
               read -p "Enter lenght in Inch :" inpInch
               echo "In Inches : "$( bc <<< "scale=4; ($inpInch/12)")
         ;;


			 4)
               read -p "Enter lenght in Meters :" inpMeter
               echo "In Feet : "$( bc <<< "scale=4; ($inpMeter*3.281)")
         ;;

			 *)
               echo "Invalid Input ";
         ;;

esac
