#!/bin/bash

adv=cloakv3
inc=../StartLib

rm -f *.a3t

echo -e "\n### Compiling \"$adv.alan\" ###"
if  ! alan -include $inc $adv.alan ; then
	echo -e "\n/// Aborting: Compilation Failed ///" ; \
	exit 1
fi

echo -e "\n### Testing \"$adv.a3c\" ###\n"
for a3s in *.a3s; do
	if ! arun -r -l $adv.a3c < $a3s 1>/dev/null ; then
		echo -e "\n/// Aborting: Test Failed ///" ; \
		exit 1
	fi
	a3t="${a3s%.a3s}.a3t"
	mv $adv.a3t $a3t
	echo "-- $a3t"
done

echo -e "\n/// Done ///"
