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

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "idaas")
public class ConfigProperties {

    //private String kafkaBrokers = "localhost:9092";
    private String kafkaBrokers;
    //private String auditDir = "audit";
    private String auditDir;

    public String getKafkaBrokers() {
        return kafkaBrokers;
    }

    public void setKafkaBrokers(String kafkaBrokers) {
        this.kafkaBrokers = kafkaBrokers;
    }

    public String getAuditDir() {
        return auditDir;
    }

    public void setAuditDir(String auditDir) {
        this.auditDir = auditDir;
    }

}
