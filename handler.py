import json
import subprocess

def cli(event, context):

    print(subprocess.check_output(['ls', '-al']))
    #print(subprocess.check_output(['./aws', 'l']))

    return {
        "message": "Go Serverless v1.0! Your function executed successfully!",
        "event": event
    }
