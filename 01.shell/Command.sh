#!/bin/bash
# 명령 치환 예제 입니다.

declare variable_name=`command`
declare variable_name2=$(command)

echo $variable_name
echo $variable_name2

echo "Today is `date`"
echo "Today is $(date)"