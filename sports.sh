#!/bin/sh

set -eux

function rand(){#随机数
    min=$1
    max=$(($2-$min+1))
    num=$(($RANDOM+1000000000)) 
    echo $(($num%$max+$min))
}

step=$(rand 17500 23000)


curl -X GET --header 'Accept: application/json' 'https://service-cunaufvn-1302033217.bj.apigw.tencentcs.com/release/xm?user=${{PHONE}}&password=${{PASSWORD}}&step=${{step}}'
