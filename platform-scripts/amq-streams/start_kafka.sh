source kafka_version.sh
mkdir tmp
cd tmp
wget "https://www.apache.org/dyn/mirrors/mirrors.cgi?action=download&filename=kafka/$KAFKA_VERSION/kafka_2.13-$KAFKA_VERSION.tgz" -O "kafka_2.13-$KAFKA_VERSION.tgz" -nc
tar -xzf "kafka_2.13-$KAFKA_VERSION.tgz"
cd "kafka_2.13-$KAFKA_VERSION"

## These are very specific Linux/Mac Instruntions
## Unzip the Zip file from platform-addons to your home/RedHatTech directory
#kafkaDir=$HOME'/RedHatTech/kafka_2.12-2.5.0.redhat-00003'
#echo "Directory: "$kafkaDir
#cd $kafkaDir

echo "Starting Zookeeper"
bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null 2>&1 &
echo "Starting Kafka"
bin/kafka-server-start.sh config/server.properties > /dev/null 2>&1 &
