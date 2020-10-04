/**
 *  Copyright 2005-2018 Red Hat, Inc.
 *
 *  Red Hat licenses this file to you under the Apache License, version
 *  2.0 (the "License"); you may not use this file except in compliance
 *  with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 *  implied.  See the License for the specific language governing
 *  permissions and limitations under the License.
 */
package com.redhat.idaas.datahub;

import org.apache.camel.builder.RouteBuilder;
import org.apache.camel.model.dataformat.JsonLibrary;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
import org.apache.camel.component.kafka.KafkaComponent;
import org.apache.camel.component.kafka.KafkaEndpoint;

@Component
public class CamelConfiguration extends RouteBuilder {

  private static final Logger log = LoggerFactory.getLogger(CamelConfiguration.class);

  @Autowired
  private ConfigProperties config;

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

  private String getKafkaTopicUri(String topic) {
    String kafkaURI;
    String topicName ="opsmgmt_platformtransactions";
    kafkaURI = "kafka:" + topicName +
            "?brokers=" +
            config.getKafkaBrokers();
    return kafkaURI;
  }

  @Override
  public void configure() {
    // OpsMgmt_Transactions
    //from("kafka:opsmgmt_transactions?brokers=" + config.getKafkaBrokers()).removeHeader("breadcrumbId").convertBodyTo(String.class)
    //        .process("auditProcessor").marshal().json(JsonLibrary.Jackson)
    //        .to("file:" + config.getAuditDir());
    from(getKafkaTopicUri("opsmgmt_platformtransactions"))
        .removeHeader("breadcrumbId").convertBodyTo(String.class)
        .process("auditProcessor").marshal().json(JsonLibrary.Jackson)
        .to("file:" + config.getAuditDir());
    ;
  }

}
