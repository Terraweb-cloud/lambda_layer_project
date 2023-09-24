###############################################################################################
#         AWS LAMBDA FUNCTION TO DISPLAY LIST OF ALL AWS S3 BUCKETS IN TABULAR OUTPUT         #
###############################################################################################

# We imported a library called tublate to help us beutify the output into a tabular format
import boto3
from tabulate import tabulate

def lambda_handler(event, context):
    # Initialize the S3 client
    s3 = boto3.client('s3')

    # List your S3 buckets
    buckets = s3.list_buckets()

    # Extract bucket information
    bucket_list = []
    for bucket in buckets['Buckets']:
        bucket_name = bucket['Name']
        creation_date = bucket['CreationDate'].strftime("%Y-%m-%d %H:%M:%S")
        bucket_list.append([bucket_name, creation_date])

    # Define table headers
    headers = ["Bucket Name", "Creation Date"]

    # Convert the data into a tabular format
    tabular_data = tabulate(bucket_list, headers, tablefmt="grid")

    # Print the tabular data (for Lambda, this will be logged)
    print(tabular_data)

    # Return a response (optional)
    return {
        "statusCode": 200,
        "body": "S3 Bucket List printed in tabular format."
    }
