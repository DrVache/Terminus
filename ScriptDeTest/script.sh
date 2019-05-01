#!/bin/bash
echo "//////////////// BASICS COMMAND ////////////////"
#home="/net/cremi/lmoraiz"
home="/home/luka"
actuel="$PWD"
echo $actuel
cd
if [ "$PWD" == "$home" ]
  then
    echo "Test 'cd' without argument passed : PASSED"
  else
    echo "Test 'cd' without argument passed : NOT PASSED"
fi

cd "$actuel"
if [ "$PWD" == "$actuel" ]
  then
    echo "Test 'cd' with argument passed : PASSED"
  else
    echo "Test 'cd' with argument passed : NOT PASSED"
fi
fileContent=$(<catTest.txt)
catResult=$(cat catTest.txt)
if [ "$fileContent" == "$catResult" ]
  then
    echo "Test 'read' : PASSED"
  else
    echo "Test 'read' : NOT PASSED"
fi

lsResult=$(ls)
lsResultToHave="catTest.txt
script.sh"
if [ "$lsResult" == "$lsResultToHave" ]
  then
    echo "Test 'ls' : PASSED"
  else
    echo "Test 'ls' : NOT PASSED"
fi

helpResult=$(help)
if [ "$helpResult" != "" ]
  then
    echo "Test 'help' : PASSED"
  else
    echo "Test 'help' : NOT PASSED"
fi

executionResult=$(./.test.sh)
if [ "$executionResult" == "2" ]
  then
    echo "Test './' : PASSED"
  else
    echo "Test './' : NOT PASSED"
fi

echo "//////////////// OTHERS COMMAND ////////////////"
