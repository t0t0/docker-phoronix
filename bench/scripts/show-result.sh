#! /bin/bash

while [[ empty ]]; do
	echo "Which test result do you want to access?"
	read test_result
	if [ -z "$test_result" ]
		then echo "Please provide a test result name"
	else 
		phoronix-test-suite result-file-to-text $test_result && break
	fi

done
exit 0


	