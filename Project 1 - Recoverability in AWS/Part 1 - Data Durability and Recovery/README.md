##  Part 1: Data Durability And Recovery
The following were the tasks completed in this part:
* Use CloudFormation to create one VPC in each region. Name the VPC in the active region "Primary" and name the VPC in the standby region "Secondary".
* The screenshots of both VPCs are saves as `Primary_VPC.png` and `Secondary_VPC.png`

### Highly durable RDS Database

1.  Create a new RDS Subnet group in the active and standby region using private subnets.
2.  Create a new MySQL, multi-AZ database in the active region. The database must:
    -   Be a “burstable” instance class.
    -   Have only the “UDARR-Database” security group.
    -   Have an initial database called “udacity.”
3.  Create a read replica database in the standby region. This database has the same requirements as the database in the active region.
The various configurations of the db instances, subnetgroups and subnet routings are saved as the many png files.

### Availability Estimate

The `estimates.txt` describes the achievable Recovery Time Objective (RTO) and Recovery Point Objective (RPO) for this Multi-AZ, multi-region database in terms of:

1.  Minimum RTO for a single AZ outage
2.  Minimum RTO for a single region outage
3.  Minimum RPO for a single AZ outage
4.  Minimum RPO for a single region outage

### Demonstrate normal usage

In the active region:

1.  Create an EC2 keypair in the region
2.  Launch an Amazon Linux EC2 instance in the active region. Configure the instance to use the VPC's public subnet and security group ("_UDARR-Application_").
3.  SSH to the instance and connect to the "udacity" database in the RDS instance.
4.  Verify that you can create a table, insert data, and read data from the database.
5.  You have now demonstrated that you can read and write to the primary database

The text file `primary.txt` contains the log of connecting to the database, creating the table, writing to and reading from the table.

### Monitor database

1.  Observe the “DB Connections” to the database and how this metric changes as you connect to the database. The result is saved as `monitoring_connections.png`
2.  Observe the “Replication” configuration with your multi-region read replica. The result is saved as `monitoring_replication.png`