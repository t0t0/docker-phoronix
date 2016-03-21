#! /bin/bash

while [[ empty ]]; do
	echo "Provide the test ID"
	read test_id
	if [ -z "$test_id" ]
		then echo "Please provide a test ID"
	else 
		phoronix-test-suite benchmark $test_id && break
	fi

done
exit 0