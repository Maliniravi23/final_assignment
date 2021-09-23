#unit conversion
#converting inches to feet
ONE_FEET=12
#then 42 inches to feet
inches=42
feet=$((inches*ONE_FEET))
echo "$inches is $feet feet"
#rectangular plot of 60ft*40ft in meters
LENGTH=60
WIDTH=40
area=$((LENGTH*WIDTH))
echo "Rectanglular plot is $area feet"
#converting feet to meter
METER=3.28
#meter=`echo "scale=2; 60*40*0.3048" | bc`
meter=`echo $LENGTH $WIDTH $METER | awk '{meter=$LENGTH*$WIDTH/$METER; printf"%0.2f\n", meter }'`
echo "Rectangular plot of 60ft*40ft in meter is : $meter"
