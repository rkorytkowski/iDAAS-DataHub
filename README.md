# iDAAS-Data-DataHub
iDAAS DataHub platform is intended for persisting of data needed within the iDAAS. The current main usage is 
for auditing and logging activities. 

This solution contains three supporting directories. The intent of these artifacts to enable
resources to work locally: <br/>
1. platform-addons: needed software to run locally. This currently contains amq-streams-1.5 (which is the upstream of Kafka 2.5)<br/>
2. platform-scripts: support running kafka, creating/listing and deleting topics needed for this solution
and also building and packaging the solution as well. All the scripts are named to describe their capabilities <br/>
3. platform-datatier: DDL that support this implementation 

## Supported RDBMS
Here are links to the Community Edition RDBMS We are using:

<a href="https://www.mariadb.com/" target="_blank">MySQL Community Edition</a>: v8 or better<br>

## Scenario: Integration 
This repository follows a very common implementation. The implementation
is processing all the data from the topic named opmgmt_transactions.

### Integration Data Flow Steps
 
1. The Topic opmgmt_transactions is subscribed to for transactions.<br/>
2. The data will be processed from the queue and the header attributes will all be parsed.<br/>
3. The header attributes should then be persisted to the appropriate database fields in appauditing_auditlog and
   appauditing_auditlog_msgs depending upon data attributes.<br/>
    
## Builds
This section will cover both local and automated builds.

### Local Builds
Within the code base you can find the local build commands in the /platform-scripts directory
1.  Run the build-solution.sh script
It will run the maven commands to build and then package up the solution. The package will use the usual settings
in the pom.xml file. It pulls the version and concatenates the version to the output jar it builds.
Additionally, there is a copy statement to remove any specific version, so it outputs idaas-connect-hl7.jar

### Automated Builds
Automated Builds are going to be done in Azure Pipelines

## Ongoing Enhancements
We maintain all enhancements within the Git Hub portal under the 
<a href="https://github.com/RedHat-Healthcare/iDAAS-DataHub/projects" target="_blank">projects tab</a>

## Defects/Bugs
All defects or bugs should be submitted through the Git Hub Portal under the 
<a href="https://github.com/RedHat-Healthcare/iDAAS-DataHub/issues" target="_blank">issues tab</a>

## Chat and Collaboration
You can always leverage <a href="https://redhathealthcare.zulipchat.com" target="_blank">Red Hat Healthcare's ZuilpChat area</a>
and find all the specific areas for iDAAS-DataHub. We look forward to any feedback!!

If you would like to contribute feel free to, contributions are always welcome!!!! 

Happy using and coding....
