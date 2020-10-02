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

import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

@Component
public class AuditProcessor implements Processor {

    private static final Logger log = LoggerFactory.getLogger(CamelConfiguration.class);

    @Override
    public void process(Exchange exchange) {
        AuditMessage message = new AuditMessage();
        message.setMessage((String) exchange.getIn().getBody());
        message.setHeaders(new HashMap<>());

        Map<String, Object> headers = exchange.getIn().getHeaders();
        for (Map.Entry<String, Object> header : headers.entrySet()) {
            if (header.getValue() instanceof byte[]) {
                message.getHeaders().put(header.getKey(), new String((byte[]) header.getValue(), Charset.defaultCharset()));
            }
        }

        exchange.getOut().setBody(message);
    }
}
