# Project 3 - Securing Recipe Vault Web App

In this project, I have:

-   Deployed and assessed a simple web application environment’s security posture
-   Tested the security of the environment by simulating attack scenarios and exploiting cloud configuration vulnerabilities
-   Implemented monitoring to identify insecure configurations and malicious activity
-   Applied methods learned in the course to harden and secure the environment
-   Designed a DevSecOps pipeline

## Project Files

-   `E1T4.md`: Text file identifying 2 poor security practices with justification for the `AWS-WebServiceDiagram-v1-insecure.png` architectural model.
-   `E2T2.md`: Text file providing recommendations on how to remediate the vulnerabilities.
-   `E3T1.md`: Text file listing GuardDuty findings that were detected related to the brute force attack ande explaination about how GuardDuty detected the attack.
-   `E4T1.md`: Text file listing 2-3 changes that can be made to environment to prevent an ssh brute force attack from the internet and also 2-3 points about how to secure the sensitive data in S3.
-   `E4T4.md`: Text file listing changes done through the console or CLI and describing the outcome if the original cloud formation templates are applied to this environment
-   `E5T2.md`: Text file listing appropriate tools to incorporate into the pipeline and ensure that security vulnerabilities are found.
-   `c3-s3_solution.yml`: CloudFormation template that deploys an S3 bucket for storage of recipes with default AES-256 encryption enabled.
-   `c3-app_solution.yml`: CloudFormation template that deploys ec2 instances for the project starter. Made changes so that Security group rules only accept traffic from specific ports in this template.