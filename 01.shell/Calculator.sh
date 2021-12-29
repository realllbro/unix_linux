#!/bin/bash
# 정수 연산 테스트 입니다.

declare -i v_name  # bash용
typeset -i v_name  # ksh용
(( n=5+5 ))
echo $n