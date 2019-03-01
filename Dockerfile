FROM confluentinc/cp-kafka-connect:5.1.2

ENV CONNECT_PLUGIN_PATH="/usr/share/java,/usr/share/confluent-hub-components"

RUN    confluent-hub install --no-prompt confluentinc/kafka-connect-datagen:latest  \
                                                                    confluentinc/kafka-connect-mqtt:1.1.1-preview  \
                                                                     confluentinc/kafka-connect-jdbc:5.1.2 \
                                                                     confluentinc/kafka-connect-jms:5.1.2 \
                                                                     debezium/debezium-connector-postgresql:0.8.3 \
                                                                     confluentinc/kafka-connect-hdfs:5.1.2
                                                                     


