#!/bin/bash
sleep 2
echo 
echo "    ________________________________________________________________    ";
echo "   |                                    _                           |   ";
echo "   |   |/ • ._   _| |  _     /\   _|   |_)  _  ._ _   _      _  ._  |   ";
echo "   |   |\ | | | (_| | (/_   /--\ (_|   | \ (/_ | | | (_) \/ (/_ |   |   ";
echo "   |                                                                |   ";
echo "    ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯    ";
echo
echo "                     Brought to you by scugn1zz0";                      
echo
echo
echo
echo " This simple script removes *special offers* from your Kindle ";
echo
sleep 1
echo " NOTE: you need to run this script every time you update your Kindle!"
echo
echo

sleep 2

read -p "Are you sure you want to continue [y/n]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sleep 2
	
	rm -r /Volumes/Kindle/system/.assets
	if [ $? -eq 0 ]; then
		echo
	else
	echo "not working..."
	echo "your kindle may be not supported, or it was just not recognised (disconnect it and try again)"
	fi

	echo "wait a moment...";
	sleep 4

	touch /Volumes/Kindle/system/.assets
	if [ $? -eq 0 ]; then
		echo
		echo "done!"
	else
	echo "not working..."
	echo "your kindle may be not supported, or it was just not recognised (disconnect it and try again)"
	fi
fi

