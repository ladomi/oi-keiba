#!/bin/bash

cd $(dirname $0)
script_dir=$(pwd)
script_name=$(basename $0)

echo ${script_name} started at $(date)
echo working directory is ${script_dir}


cat > tmp.txt << EOS
        wakuban = elms_td[0].text
        umaban = elms_td[1].text
        bamei = elms_td[2].text
        kishu = elms_td[3].text
        odds = elms_td[4].text.split()[0]
        ninki = elms_td[4].text.split()[1]
            r1_chakujun = elms_td[i].text.split()[0]
            r1_kyousoubi = elms_td[i].text.split()[1]
            r1_babajoutai = elms_td[i].text.split()[2]
            r1_shussoutousuu = elms_td[i].text.split()[3]
            r1_keibajou = elms_td[i].text.split()[4]
            r1_course = elms_td[i].text.split()[5]
            r1_umaban = elms_td[i].text.split()[6]
            r2_chakujun = elms_td[i].text.split()[0]
            r2_kyousoubi = elms_td[i].text.split()[1]
            r2_babajoutai = elms_td[i].text.split()[2]
            r2_shussoutousuu = elms_td[i].text.split()[3]
            r2_keibajou = elms_td[i].text.split()[4]
            r2_course = elms_td[i].text.split()[5]
            r2_umaban = elms_td[i].text.split()[6]
            r3_chakujun = elms_td[i].text.split()[0]
            r3_kyousoubi = elms_td[i].text.split()[1]
            r3_babajoutai = elms_td[i].text.split()[2]
            r3_shussoutousuu = elms_td[i].text.split()[3]
            r3_keibajou = elms_td[i].text.split()[4]
            r3_course = elms_td[i].text.split()[5]
            r3_umaban = elms_td[i].text.split()[6]
            r4_chakujun = elms_td[i].text.split()[0]
            r4_kyousoubi = elms_td[i].text.split()[1]
            r4_babajoutai = elms_td[i].text.split()[2]
            r4_shussoutousuu = elms_td[i].text.split()[3]
            r4_keibajou = elms_td[i].text.split()[4]
            r4_course = elms_td[i].text.split()[5]
            r4_umaban = elms_td[i].text.split()[6]
            r5_chakujun = elms_td[i].text.split()[0]
            r5_kyousoubi = elms_td[i].text.split()[1]
            r5_babajoutai = elms_td[i].text.split()[2]
            r5_shussoutousuu = elms_td[i].text.split()[3]
            r5_keibajou = elms_td[i].text.split()[4]
            r5_course = elms_td[i].text.split()[5]
            r5_umaban = elms_td[i].text.split()[6]
        zenseiseki = elms_td[10].text.split()[0]
        dirthidarimawari = elms_td[10].text.split()[1]
        dirtmigimawari = elms_td[10].text.split()[2]
        toucourse = elms_td[10].text.split()[3]
        seirei = elms_td[0].text
        keiro = elms_td[1].text
        futanjuuryou = elms_td[2].text.split()[0]
        kijouseiseki = elms_td[2].text.split()[1]
            r1_racemei = elms_td[i].text
            r2_racemei = elms_td[i].text
            r3_racemei = elms_td[i].text
            r4_racemei = elms_td[i].text
            r5_racemei = elms_td[i].text
        chichimei = elms_td[0].text
        choukyoushi = elms_td[1].text
        bataijuu = elms_td[2].text.split()[0]
        zougen = elms_td[2].text.split()[1]
            r1_ninki = elms_td[i].text.split()[0]
            r1_bataijuu = elms_td[i].text.split()[1]
            r1_kishu = elms_td[i].text.split()[2]
            r1_futanjuuryou = elms_td[i].text.split()[3]
            r2_ninki = elms_td[i].text.split()[0]
            r2_bataijuu = elms_td[i].text.split()[1]
            r2_kishu = elms_td[i].text.split()[2]
            r2_futanjuuryou = elms_td[i].text.split()[3]
            r3_ninki = elms_td[i].text.split()[0]
            r3_bataijuu = elms_td[i].text.split()[1]
            r3_kishu = elms_td[i].text.split()[2]
            r3_futanjuuryou = elms_td[i].text.split()[3]
            r4_ninki = elms_td[i].text.split()[0]
            r4_bataijuu = elms_td[i].text.split()[1]
            r4_kishu = elms_td[i].text.split()[2]
            r4_futanjuuryou = elms_td[i].text.split()[3]
            r5_ninki = elms_td[i].text.split()[0]
            r5_bataijuu = elms_td[i].text.split()[1]
            r5_kishu = elms_td[i].text.split()[2]
            r5_futanjuuryou = elms_td[i].text.split()[3]
        hahamei = elms_td[0].text
        banushi = elms_td[1].text
            r1_time = elms_td[i].text.split()[0]
            r1_cornertsuukajun = elms_td[i].text.split()[1]
            r1_agari3ftime = elms_td[i].text.split()[2]
            r2_time = elms_td[i].text.split()[0]
            r2_cornertsuukajun = elms_td[i].text.split()[1]
            r2_agari3ftime = elms_td[i].text.split()[2]
            r3_time = elms_td[i].text.split()[0]
            r3_cornertsuukajun = elms_td[i].text.split()[1]
            r3_agari3ftime = elms_td[i].text.split()[2]
            r4_time = elms_td[i].text.split()[0]
            r4_cornertsuukajun = elms_td[i].text.split()[1]
            r4_agari3ftime = elms_td[i].text.split()[2]
            r5_time = elms_td[i].text.split()[0]
            r5_cornertsuukajun = elms_td[i].text.split()[1]
            r5_agari3ftime = elms_td[i].text.split()[2]
        hahachichimei = elms_td[0].text
        seisanbokujou = elms_td[1].text
            henkoujouhou = elms_td[2].text
            r1_1chakubatonotimesa = elms_td[i].text.split()[0]
            r1_1chakubamei = elms_td[i].text.split()[1]
            r2_1chakubatonotimesa = elms_td[i].text.split()[0]
            r2_1chakubamei = elms_td[i].text.split()[1]
            r3_1chakubatonotimesa = elms_td[i].text.split()[0]
            r3_1chakubamei = elms_td[i].text.split()[1]
            r4_1chakubatonotimesa = elms_td[i].text.split()[0]
            r4_1chakubamei = elms_td[i].text.split()[1]
            r5_1chakubatonotimesa = elms_td[i].text.split()[0]
            r5_1chakubamei = elms_td[i].text.split()[1]
EOS

buf=$(sed -e "s/^[ ]*//g" -e "s/ = .*$//g" -e "s/[\n]\+//g" tmp.txt)

echo ${buf} | sed -e "s/ /,/g" > tmp.txt
echo ${buf} | sed -e "s/ /\',\'/g" -e "s/^/\'/g" -e "s/$/\'/g" >> tmp.txt

cat tmp.txt

echo ${script_name} finished at $(date)
