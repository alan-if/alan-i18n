#!/bin/bash

adv=vampiro
inc=../Foundation

echo -e "\033[34;1m==========================================================================\033[0m"
echo -e "\033[033mCompiling \"$adv.alan\""
echo -e "\033[34;1m==========================================================================\033[0m"
if  alan -verbose -include $inc $adv.alan ; then
	echo -e "\033[34;1m==========================================================================\033[0m"
	echo -e "\033[033mTesting \"$adv.a3c\""
	echo -e "\033[34;1m==========================================================================\033[0m"
	if arun -v -r $adv.a3c < $adv.a3s > $adv.a3t ; then
		echo -e "\033[32;1m/// Done ///\033[0m"
	else
		echo -e "\n\033[31;1m/// Aborting: Test Failed ///\033[0m" ; \
		exit 1
	fi
else
	echo -e "\n\033[31;1m/// Aborting: Compilation Failed ///\033[0m" ; \
	exit 1
fi
