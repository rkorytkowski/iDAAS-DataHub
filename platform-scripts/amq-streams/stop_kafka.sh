source kafka_version.sh
cd "tmp/kafka_2.13-$KAFKA_VERSION"

echo "Stopping Kafka"
bin/kafka-server-stop.sh config/server.properties
echo "Stopping Zookeeper"
bin/zookeeper-server-stop.sh config/zookeeper.properties

rm -rf /tmp/kafka-logs /tmp/zookeeper
