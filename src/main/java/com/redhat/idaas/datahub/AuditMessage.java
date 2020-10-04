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

import java.util.Map;

public class AuditMessage {

    private String auditEntireMessage;
    private String messageprocesseddate;
    private String messageprocessedtime;
    private String processingtype;
    private String industrystd;
    private String component;
    private String messagetrigger;
    private String processname;
    private String auditdetails;
    private String camelID;
    private String exchangeID;
    private String internalMsgID;
    private String bodyData;

    private Map<String, String> headers;
    public String getAuditEntireMessage() {
        return auditEntireMessage;
    }

    public void setAuditEntireMessage(String auditEntireMessage) { this.auditEntireMessage = auditEntireMessage;}

    public Map<String, String> getHeaders() {
        return headers;
    }

    public void setHeaders(Map<String, String> headers) {
        this.headers = headers;
    }
}
