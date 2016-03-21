#! /bin/bash

while [[ empty ]]; do
	echo "Which test result do you want to remove?"
	read test_result
	if [ -z "$test_result" ]
		then echo "Please provide a test result name"
	else 
		phoronix-test-suite remove-result $test_result && break
	fi

done
exit 0