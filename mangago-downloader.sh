manga_name=$1
manga_name_underscore=$2
manga_chapter=$3
manga_pages=$4

echo "----------------------------"
echo "mangago downloader"
echo "----------------------------"

echo "manga trying to download: "$manga_name
echo "manga chapter downloading: "$manga_chapter
echo "manga pages to download: "$manga_pages

for i in {2..4}
do

	echo "exporting page $i"
	curl -v -o $manga_name_$i.html -k -A 'Mozilla/5.0 (X11; Linux x86_64; rv:108.0) Gecko/20100101 Firefox/108.0' https://www.mangago.me/read-manga/$1/an/$2-chapter-$3.html/$i/
done

echo "export done"
ls -l

