echo "Paste the download link of papermc"
read download

echo "Set minimum ram in GB"
read minram

echo "Set maximum ram in GB"
read maxram

echo "Downloading" $download

mkdir mcserver
cd mcserver/

wget -O server.jar $download
touch server.sh

echo "java -Xms"$minram"G -Xmx"$maxram"G -jar server.jar nogui" > server.sh

sh server.sh
echo "eula=true" >> eula.txt

echo "Finished"
