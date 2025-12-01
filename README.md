# 🚀 AWS 3-Tier VPC Architecture using Terraform

This project deploys a secure **3-tier AWS VPC infrastructure** using Terraform.  
It includes Public & Private Subnets, Internet Gateway, NAT Gateway, and an EC2 Application Server running Nginx.  
(AWS RDS not included — can be added later.)

---

## 🌐 AWS CLI Installation

AWS CLI is required to authenticate Terraform with AWS.

### 🪟 Windows Download
Download & install:
https://awscli.amazonaws.com/AWSCLIV2.msi

Verify install:
```powershell
aws --version

**### Linux / Bash Installation**

Run:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

Verify install:
aws --version

**🔐 AWS CLI Configuration (Windows + Linux)**

Run:

aws configure


Enter:

AWS Access Key ID: <your_access_key_id>
AWS Secret Access Key: <your_secret_access_key>
Default region name: ap-south-1
Default output format: json


