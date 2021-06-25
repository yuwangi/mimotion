#!/bin/sh

set -eux

function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) 
    echo $(($num%$max+$min))
}

step=$(rand 17500 23000)

user=${{ secrets.PHONE }}
password=$}{secrets.PASSWORD}}

echo ${user}
echo ${password}
echo ${step}

curl -X GET --header 'Accept: application/json' 'https://service-cunaufvn-1302033217.bj.apigw.tencentcs.com/release/xm?user=${user}&password=${password}&step=${step}'
