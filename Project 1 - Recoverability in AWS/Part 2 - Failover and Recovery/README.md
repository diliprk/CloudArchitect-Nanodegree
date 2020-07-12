##  Part 2:  Failover And Recovery
The tasks to be completed in this part were:

In the standby region:
1.  Create an EC2 keypair in the region
2.  Launch an Amazon Linux EC2 instance in the standby region. Configure the instance to use the VPC's public subnet and security group ("UDARR-Application").
3.  SSH to the instance and connect to the read replica database.
4.  Verify if you are not able to insert data into the database but are able to read from the database.
5.  You have now demonstrated that you can only read from the read replica database.
6. Promote the read replica
7.  Verify that if you are able to insert data into and read from the read replica database.
8.  You have now demonstrated that you can read and write the promoted database in the standby region.

* The log of connecting to the database, writing to and reading from the table is saved in  text files called `log_rr_before_promotion.txt` and `log_rr_after_promotion.txt`.

* The screenshot `rr_before_promotion.png` contains the database configuration, before promoting the read replica database in the next step. 

* The screenshot `rr_after_promotion.png` contains the database configuration after the database promotion. 