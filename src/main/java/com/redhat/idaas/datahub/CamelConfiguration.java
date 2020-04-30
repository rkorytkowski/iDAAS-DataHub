package com.redhat.idaas.datahub;

import org.apache.camel.ExchangePattern;
import org.apache.camel.LoggingLevel;
import org.apache.camel.builder.RouteBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.apache.camel.component.kafka.KafkaComponent;
import org.apache.camel.component.kafka.KafkaConstants;
import org.apache.camel.component.kafka.KafkaEndpoint;

@Component
public class CamelConfiguration extends RouteBuilder {

  private static final Logger log = LoggerFactory.getLogger(CamelConfiguration.class);

  @Bean
  private KafkaEndpoint kafkaEndpoint(){
    KafkaEndpoint kafkaEndpoint = new KafkaEndpoint();
    return kafkaEndpoint;
  }
  @Bean
  private KafkaComponent kafkaComponent(KafkaEndpoint kafkaEndpoint){
    KafkaComponent kafka = new KafkaComponent();
    return kafka;
  }

  @Override
  public void configure() throws Exception {

    from("kafka:opsMgmt_HL7_RcvdTrans?brokers=localhost:9092")
      .routeId("HL7MessageProcess-DataHub")
      .setBody(body())
      // Enterprise Message By Sending App By Type
      //to("kafka:MMS_MFN?brokers=localhost:9092")
      // Ensure iDAAS Data can track processing
      .to("kafka:opsMgmt_ProcessedTransactions?brokers=localhost:9092")
    ;
    // FHIR Transactions
    from("kafka:opsMgmt_FHIR_RcvdTrans?brokers=localhost:9092")
      .routeId("FHIRMessageProcess-DataHub")
      .setBody(body())
      // Enterprise Message By Sending App By Type
      //to("kafka:MMS_MFN?brokers=localhost:9092")
      // Ensure iDAAS Data can track processing
      .to("kafka:opsMgmt_ProcessedTransactions?brokers=localhost:9092")
    ;
  }
}

