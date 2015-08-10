#!/system/bin/sh
# purpose: edit the value of variabilites.xml in lokki app.
# tool:XMLStarlet

filename=/home/czhu/lokki/initialmodel.cfr

UpdateLogout(){
#update the value of LogoutButton
content=`xml ed -P -u '/resources/item[@name="LogoutButton"]' -v "true" ~/githubproject/lokki-android/App/src/main/res/values/variabilities.xml`

#clear the variabilities.xml
echo -n "" > ~/githubproject/lokki-android/App/src/main/res/values/variabilities.xml

#assign the new content to variabilities.xml
echo "$content" >> ~/githubproject/lokki-android/App/src/main/res/values/variabilities.xml

}

if grep -E "LogoutButton = \"true\"" $filename -o
	then UpdateLogout;
else
	echo "not found"
fi

