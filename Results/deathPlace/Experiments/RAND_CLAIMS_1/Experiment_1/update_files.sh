FILES=ASP_NO_BING_Evidence/*

for file in $FILES;
do

tail -n +98 $file > $file.1
rm $file
cat ASP_rules | cat - $file.1 >temp && mv temp $file
rm $file.1
done
