#! /bin/bash

while [[ empty ]]; do
	echo "Provide the test result name"
	read test_id
	if [ -z "$test_id" ]
		then echo "Please provide a test result name"
	else 
		phoronix-test-suite upload-result $test_id && break
	fi

done
exit 0