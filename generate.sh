
echo 'Last updated **'`date +%d/%m/%Y`'**' > README.md
cat Header.md >> README.md
URL=./
for f in $(find . -name '*.png' -or -name '*.svg'); 
do echo $URL${f:(+2)} &&  echo '<img src="'$URL${f:(+2)}'" width="200"  /> | ' '`'${f:(2)}'`' ' ' >> README.md
done