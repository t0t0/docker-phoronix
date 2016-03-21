#! /bin/bash

while [[ empty ]]; do
	echo "Choose an option:"
	echo "-------------------------------------"
	echo "1) List all installed tests"
	echo "2) List availble tests"
	echo "3) Install a test"
	echo "4) Run a test"
	echo "5) List all test results"
	echo "6) Show a specific test result"
	echo "7) Remove a test result"
	echo "8) Upload a test result"
	echo "9) Compare with openbenchmarking.org"
	echo "10) Exit"
	echo "-------------------------------------"
	read option
	if [ -z "$option" ]
		then echo "Please provide a valid option"
	else 
		case $option in
			"1") phoronix-test-suite list-installed-tests;;
			"2") phoronix-test-suite list-available-tests;;
			"3") ./install-test.sh;;
			"4") ./run-test.sh;;
			"5") phoronix-test-suite list-saved-results;;	
			"6") ./show-result.sh;;
			"7") ./remove-result.sh ;;
			"8") ./upload.sh ;;
			"9") ./compare.sh ;;
			"10") break;;
		esac
	fi

done
exit 0