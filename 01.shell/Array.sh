#!/bin/bash
# 배열 예제 입니다.

echo $1 $2 $3
# declare -a array_name=(word1 word2 word3)

declare -a fruit=(apples pears plums)
declare -a param_array=($1 $2 $3)

echo ${fruit[0]}

echo ${param_array[0]} ${param_array[1]} ${param_array[2]}
