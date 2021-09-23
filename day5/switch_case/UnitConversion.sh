echo "Enter User input from (1 to 4)"
read n
case $n in
   1)
      echo " Enter feet"
      read feet
      INCHES=12
      inches=$((INCHES*feet))
      echo "Value in inch is:$inches"
      ;;
   2)
      echo " Enter feet"
      read feet
      METER=0.3048 
      echo $feet $METER | awk '{meter=$feet*$METER; printf"%0.2f\n", meter }'
      ;;
   3)
      echo " Enter inches"
      read inches
      FEET=12
      feet=$((inches/FEET))
      echo "Value in feet is:$feet"
      ;;
   4)
      echo "Enter meter"
      read meter
      FEET=3.28084
      echo $FEET $meter | awk '{feet=$FEET*$meter; printf"%0.2f\n", feet }'
      ;;
esac