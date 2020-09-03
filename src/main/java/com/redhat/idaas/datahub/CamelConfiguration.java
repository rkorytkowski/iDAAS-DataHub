package com.redhat.idaas.datahub;

import org.apache.camel.Exchange;
import org.apache.camel.ExchangePattern;
import org.apache.camel.LoggingLevel;
import org.apache.camel.Processor;
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

  //https://camel.apache.org/manual/latest/processor.html

  public abstract class MyProcessor implements Processor {
    public void process(Exchange exchange) throws Exception {
      String payload = exchange.getIn().getBody(String.class);
      // do something with the payload and/or exchange here
      //exchange.getIn().setBody("Changed body");
      exchange.getIn().getHeaders();
      // Java.Util.Map Code

    }
  }
  @Override
  public void configure() throws Exception {
    // OpsMgmt_Transactions
    from("kafka:localhost:9092?topic=opsmgmt_transactions&brokers=localhost:9092").process("MyProcessor");
  }

}
