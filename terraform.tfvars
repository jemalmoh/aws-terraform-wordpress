database_name           = "leenacloud"   // database name
database_user           = "leena" //database username
region                  = "us-east-1" //sydney region
IsUbuntu                = false            // true for ubuntu,false for linux 2  //boolean type

// avaibility zone and their CIDR
AZ1          = "us-east-1a" // for EC2
AZ2          = "us-east-1b" //for RDS 
AZ3          = "us-east-1d" //for RDS
VPC_cidr     = "10.0.0.0/16"     // VPC CIDR
subnet1_cidr = "10.0.1.0/24"     // Public Subnet for EC2
subnet2_cidr = "10.0.2.0/24"     //Private Subnet for RDS
subnet3_cidr = "10.0.3.0/24"     //Private subnet for RDS


PUBLIC_KEY_PATH = "./mykey-pair.pub" // key name for ec2, make sure it is created before terrafomr apply
PRIV_KEY_PATH   = "./mykey-pair"
instance_type   = "t2.micro"    //type of instance
instance_class  = "db.t2.micro" //type of RDS Instance
