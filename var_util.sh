#!/bin/bash

cd $(dirname $0)
script_dir=$(pwd)
script_name=$(basename $0)

echo ${script_name} started at $(date)
echo working directory is ${script_dir}


cat > tmp.txt << EOS
        kyousou = elms_td[0].text
        hassoujikoku = elms_td[1].text
        henkou = elms_td[2].text
        kyousoushurui = elms_td[3].text
        kyousoumei = elms_td[4].text
        course = elms_td[5].text
        tenkou = elms_td[6].text
        baba = elms_td[7].text
        tousuu = elms_td[8].text
EOS

buf=$(sed -e "s/^[ ]*//g" -e "s/ = .*$//g" -e "s/[\n]\+//g" tmp.txt)

echo ${buf} | sed -e "s/ /,/g" > tmp.txt
echo ${buf} | sed -e "s/ /\',\'/g" -e "s/^/\'/g" -e "s/$/\'/g" >> tmp.txt

cat tmp.txt

echo ${script_name} finished at $(date)
