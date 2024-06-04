# Phase 3 Workbook

1. Create modules folder
   1. Create ./modules/ec2 folder
   2. Create ./modules/networking folder
   3. Create ./modules/ami_redhat9 folder
   4. Create ./modules/security_groups
2. Create ./scripts folder
3. Main.tf
   1. Add all 4 module configs.
4. ./modules/ec2/main.tf
   1. Add all the required resources.
   2. Create AMI and Public/Private IP outputs.
5. ./modules/ami_redhat/main.tf
   1. Search for the newest redhat 9 ami image.
   2. Make sure the owner is Redhat.