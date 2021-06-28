#!/bin/sh

set -eux

user=18518231181
password=wangyu123456

echo $user
echo $password


function rand(){
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) 
    echo $(($num%$max+$min))
}

step=$(rand 17500 23000)






curl -X GET --header 'Accept: application/json' 'https://service-cunaufvn-1302033217.bj.apigw.tencentcs.com/release/xm?user=${user}&password=${password}&step=${step}'
