cat Header.md > README.md
URL=./
for f in $(find . -name '*.png' -or -name '*.svg'); 
do echo $URL${f:(+2)} &&  echo '![Icon]('$URL${f:(+2)}')\n\n' '`'${f:(2)}'`' '\n\n' >> README.md
done