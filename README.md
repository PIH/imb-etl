IMB-ETL - ETL Jobs to support reporting and analytics from OpenMRS at IMB
============================================================================

This project is based off of the original [PIH Pentaho](https://github.com/PIH/pih-pentaho) project, and adapted 
to enable growth beyond Pentaho and to allow for execution through the [PETL](https://github.com/PIH/petl) ETL tool.

# Installation

For implementers, see [Puppet](https://github.com/PIH/mirebalais-puppet/tree/master/mirebalais-modules/petl)

### Install Java
The recommended Java version is **OpenJDK 8 JDK**

### Source MySQL databases
You must have access to all source MySQL databases.
The recommendation is that these databases are replicas of production DBs, not the actual production instances, as a 
precaution to ensure no production data is inadvertently affected by the ETL process.

### Target MySQL databases
* You must have access to a target MySQL instance into which to ETL from the source databases
* You must create new databases inside this MySQL instance all source databases to use
* One database is the target into which each source server ETLs into
* Another database is the target into which the anonymization ETL writes data

Example:

```bash
mysql> create database reporting default charset utf8;
Query OK, 1 row affected (0.00 sec)
mysql> create database anonymized default charset utf8;
Query OK, 1 row affected (0.00 sec)
```

### Install PETL application and jobs

1. Create a directory to serve as your execution environment directory
2. Install the jobs and datasources into this directory
   1. For developers, create a symbolic link to the datasources and jobs folders of this project
   2. For implementers, download the zip artifact from maven and extract it into this directory
3. Install an application.yml file into this directory
   1. For developers, copy [example-application.yml](./example-application.yml), and modify to match your database configuration
   2. For implementers, install the application.yml file, and ensure all the database settings are correct
   3. For more details on configuration options for application.yml, see the [PETL](https://github.com/PIH/petl) project
4. Install the PETL executable jar file
   1. For developers, you can clone and build the PETL application locally and create a symbolic link to target/petl-*.jar
   2. For developers or implementers, you can download the latest PETL jar from Maven
   3. The minimum required PETL version is 3.4.0-SNAPSHOT

# Configuration Notes

The application.yml file sets the refresh-full.yml job up in the "startup.jobs" property.  This is mainly there
to facilitate development and testing, as this is where one simply wants to fire up the application and execute their job.
However, on a typical test or production server, you may want to remove this from the startup.jobs, as keeping it here will
mean that anytime the server or application is restarted, the jobs will run and will drop and recreate the warehouse tables.
You can adjust the schedule and frequency of the job execution within the "schedule" property of refresh-full.yml
In the event you want to simply execute the job and exit the application from an external script, you would want to remove
the schedule property from the refresh-full.yml file, and keep this job listed in the startup.jobs property of application.yml.
This might be desirable, for example, if one needed to control the exact timing of execution in a shell script or cron job
based on external dependencies (eg. the availability of new copies of the source database to execute against).

# Execution

To execute the ETL pipeline, simply run from the installation directory:

```shell
java -jar petl.jar
```

# Pentaho Jobs and Transforms

The "jobs/pentaho" directory represent the core Pentaho ETL jobs that are executed.  These are made up of:

* Kettle jobs (*.kjb):  Represent a sequence of transforms that can be executed or run on a schedule to process data
* Kettle transforms (*.ktr):  Represent specific data transformations (Extract, Transform, and Load) that can be exectuted within one more more jobs
* Other files (.sql, etc): Files used by these jobs and transforms

=====================

DEV ENVIRONMENT SETUP

For development, it is most helpful to utilize Pentaho Spoon, which is a graphical designer and editor for creating, editing, and viewing
Pentaho jobs and transforms.

* Download Pentaho Data Integration from here: https://sourceforge.net/projects/pentaho/files/
  * Click into the latest Pentaho -> Client Tools, and then download the zip named "pdi-ce-xxx.zip"
* Unzip and copy into your preferred executable directory (eg. /opt/pentaho/data-integration)
* Download the latest mysql connector jar from here: https://dev.mysql.com/downloads/file/?id=465644
* Extract the mysql connector jar out of the above zip file and copy it into the data-integration/lib folder
* Create a new mysql database for the warehouse ( eg. _create database openmrs_warehouse default charset utf8;_ )
* Checkout out jobs (this repository).  Make note of the location where this is located.
* Edit or create ~/.kettle/kettle.properties, and add the following: PIH_PENTAHO_HOME=/checked/out/folder/jobs/pentaho
* Create file at ~/.kettle/pih-kettle.properties with the following variables set to your preferred values:

** A sample of what this should look like is in pih-pentaho/config/pih-kettle-default.properties
** Connection settings are there for configuring the source and target databases
** pih.country should be set to the country of interest, and controls certain configurations within the main jobs and transforms
** warehouse.db.key_prefix by default will be 100 unless you override it here.  This is a prefix that is appended to all primary keys for data that is imported.
** Sample for Rwanda below:

```
pih.country  = rwanda

openmrs.db.host = localhost
openmrs.db.port = 3306
openmrs.db.name = openmrs
openmrs.db.user = root
openmrs.db.password = rootpw

warehouse.db.host = localhost
warehouse.db.port = 3306
warehouse.db.name = openmrs_warehouse
warehouse.db.user = root
warehouse.db.password = rootpw
warehouse.db.key_prefix = 10
```

* Run "spoon.sh" to start

Link your shared.xml to the shared file used by the project:
* Go to $HOME/.kettle/shared.xml and delete this file if it exists
* Create a new shared.xml that is a symbolic link to "jobs/pentaho/shared-connections.xml" in this project.

* Test it out by trying to run a job in the pih-pentaho/jobs folder (eg. load-from-openmrs.kjb)
