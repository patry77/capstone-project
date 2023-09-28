import os
import argparse



if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Terraform GCP infrastructure - load balancer')
    parser.add_argument('Argument', help="apply - to create infrastructure, destroy - to destroy infrastructure")
    args = parser.parse_args()
    if args.Argument == "apply":
        os.environ['TF_VAR_project_id'] = 'prime-task-391816'
        os.environ['TF_VAR_credentials_file'] = 'C:\\Users\\patry\\Desktop\\creds\\prime-task-391816-336c44f61718.json'
        os.environ['TF_VAR_zone'] = 'us-west4-a'
        os.system("packer build C:\\Users\\patry\\Desktop\\my-repos\\terraform-learning-1\\packer\\golden_image.json")
        os.system("terraform init")
        os.system("terraform apply -auto-approve")
    if args.Argument == "destroy":
        os.system("terraform destroy -auto-approve")