import json
import csv
import boto3


s3 = boto3.client('s3')
dynamodb = boto3.client('dynamodb')

def lambda_handler(event, context):
    bucket = events["Records"][0]["s3"]["bucket"]["name"]
    key =    events["Records"][0]["s3"]["object"]["key"]

    item = s3.get_object(Bucket=bucket, Key=key)
    
    

