#! /bin/bash

while [[ empty ]]; do
	echo "Specify the test you wish to install."
	read test_id; 
	if [ -z "$test_id" ]
		then echo "Please provide a test name"
	else
		phoronix-test-suite install $test_id  && break
	fi
done
exit 0