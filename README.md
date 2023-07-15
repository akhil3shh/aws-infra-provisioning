# AWS Infrastructure Provisioning

The project aims to streamline the deployment process and ensure that the cloud infrastructure is highly available and reliable.  
The goal is to set up infrastructure on AWS using Terraform and Jenkins which includes 4 web servers and 2 database instances.

# Major steps of the project:   
1.) Writing a Terraform Script that provisions the servers and databases in a highly available environment.   
2.) Uniquely naming each instance and installing Apache on the instances.   
3.) Pushing the Terraform script to GitHub for version control.   
4.) Creating a Jenkins CI/CD pipeline that automatically detects changes in the terraform script on GitHub and deploys the changes.    

# AWS Resources:   
1.) Virtual Private Cloud (AWS VPC)  
2.) Public and Private Subnets  
3.) EC2 Instances   
4.) Amazon Relational Database Service (RDS) Database     
5.) Route Tables    
6.) Security Group    
7.) Internet Gateway    

# For Jenkins pipeline:  
Upload all HCL configuration files to GitHub, create a pipeline, integrate the repository with this pipeline and make sure to check the 
GitHub hook trigger for GITScm polling option. Write the script and build the pipeline.   
  
After the pipeline builds successfully, all settings and configurations have been applied and the resources are deployed in AWS.
