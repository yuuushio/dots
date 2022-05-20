#! /bin/sh

book_list=`ls ~/Books`
len_of_list=${#book_list}
#sel_book=`ls | dmenu`
IFD='\n'
read -ra ADDR <<< "$book_list"
for i in "${ADDR[@]}"; do
	echo "$i"
done
IFS=' '
echo $len_of_list
