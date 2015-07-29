#!/bin/bash
# purpose: Process a file line by line with PIPED while-read loop.

filename=/home/czhu/Lokki/initialModel.cfr

#desfile=/home/czhu/Lokki/count.txt

#word="LogoutButton.*\"true\""

#count=`grep -in $word $filename -o | wc -w`

#if [ -f "$desfile" ]
#then
 #   echo "$count" >> "$desfile"
#fi
Update(){
	#update the value of LogoutButton
content=`xml ed -P -u '/resources/item[@name="LogoutButton"]' -v "true" ~/githubProject/lokki-android/App/src/main/res/values/variabilities.xml`

#clear the variabilities.xml 
echo -n "" > ~/githubProject/lokki-android/App/src/main/res/values/variabilities.xml

#assign the new content to variabilities.xml 
echo "$content" >> ~/githubProject/lokki-android/App/src/main/res/values/variabilities.xml 

}


if grep -E "LogoutButton = \"true\"" $filename -o 
	then Update;
else
	echo "not found"
fi






