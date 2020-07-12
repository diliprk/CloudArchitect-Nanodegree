
## Project 2 - Design, Provision and Monitor AWS Infrastructure at Scale
In this project, I have:

-   Designed, provisioned, and monitored infrastructure in AWS using industry-standard and open source tools.
-   Practiced the skills I have learned throughout the course to optimize infrastructure for cost and performance.
-   Used **Terraform** to provision and configure AWS services in a global configuration.

### Project Files
- `Exercise_1`: Contains the terraform code in Hashicorp Configuration Language (`HCL`) to create EC2 instances in AWS.
- `Exercise_2`: Contains code to deploy lamda function in AWS.
- `screenshots`: This folder contains all the screenshots taken during the project.
- `Udacity_Diagram_1.pdf`: Contains a cost-effective AWS infrastructure architecture schematic created using [LucidChart]([https://www.lucidchart.com/](https://www.lucidchart.com/)) for a new social media application development project for 50,000 single-region users.
- `Udacity_Diagram_2.pdf`: Contains a _Serverless_ architecture schematic for a new application development project.
- `UdacityCloudTrailLog.csv`: Contains a portion of the CloudTrail log showing the creation of new users, usergroups with customized policies.
- `Initial_Cost_Estimate.csv`: Cost estimated using [AWS Pricing Calculator](https://calculator.aws/#/) for the AWS architecture specified in `Udacity_Diagram_1.pdf`.
    - Targeted a monthly estimate between $8,000-$10,000.
- `Reduced_Cost_Estimate.csv`: Cost estimated using AWS Pricing Calculator for the AWS architecture in `Udacity_Diagram_1.pdf`.
    - Targeted a monthly estimate to a maximum of ~ $6,500.
- `Increased_Cost Estimate.csv`: Cost estimated using AWS Pricing Calculator for the architecture in `Udacity_Diagram_1.pdf`, albeit with some modifications for better performance and failovers provisions for disaster recovery.
    - Targeted a monthly estimate to a maximum of $20,000.

All the Starter code files provided by Udacity can be accessed [here](https://github.com/udacity/cand-c2-project).

### Budget estimates Links

1. ### [Initial estimate](https://calculator.aws/#/estimate?id=6d66b0bd80f200bf8093318b59b8d6c392ac27e4)

2. ### [Reduced estimate](https://calculator.aws/#/estimate?id=75ac7d57abacc04102667d004d76d4b7ceca13be)
- The **changes** made for this estimate are:
	- Use smaller (`t2.medium`) EC2 and (`db.m5.xlarge`) RDS instances compared to the Initial Estimate. 
	- Use Reserved instances booked for a year, without paying up front.<br>

- The **rationale** for these  changes made for this reduced estimate are:
	- Smaller EC2 and RDS instances bring significant cost savings but would reduce performance. 
	- Reserved instances also reduce costs but locks the application to the selected infrastructure and limits rearchitecting of the application.

3. ### [Increased estimate](https://calculator.aws/#/estimate?id=d348dbe79fb8845cab4781600fb1b754ad906ede)
- The **changes** made for this estimate are:
	- Larger (`db.m5.4xlarge`) RDS and (`t3.xlarge`) EC2 instances are deployed to handle increased data load and offer improved performance. 
	- Third availability zone setup in secondary region (`ap-south-1`) has its own VPC NAT Gateway, Cloudfront, ELB, Elastic IP, RDS Read Replica and EC2 AutoScaling.<br>

- The **rationale** for these  changes made for this increased estimate are:
	- Third AZ in the secondary region (`ap-south-1`) allows for failover if the primary region (`us-east-1a`) goes down in the event of a disaster. 
	- Larger RDS instances improve database performance and bigger EC2 instances improve application performance considering the overall growth of the platform over time.