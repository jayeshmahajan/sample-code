# Run as 
python3 main.py

# output
```
{'ami-id': 'ami-007855ac798b5175e', 'ami-launch-index': '0', 'ami-manifest-path': '(unknown)', 'block-device-mapping': {'ami': '/dev/sda1', 'ephemeral0': 'sdb', 'ephemeral1': 'sdc', 'root': '/dev/sda1'}, 'events': {'maintenance': {'history': '[]', 'scheduled': '[]'}}, 'hostname': 'ip-10-0-0-112.ec2.internal', 'iam': {'info': '{\n  "Code" : "Success",\n  "LastUpdated" : "2023-08-01T00:49:39Z",\n  "InstanceProfileArn" : "arn:aws:iam::642624058809:instance-profile/custom-ec2-admin",\n  "InstanceProfileId" : "AIPAZLH3A6W4V6NBNME2W"\n}', 'security-credentials': {'custom-ec2-admin': '{\n  "Code" : "Success",\n  "LastUpdated" : "2023-08-01T00:49:36Z",\n  "Type" : "AWS-HMAC",\n  "AccessKeyId" : "ASIAZLH3A6W45WOFRBGN",\n  "SecretAccessKey" : "3zPwxav57uFGYWoge/qcUWWRYiEKu2H7dvq8GCl+",\n  "Token" : "IQoJb3JpZ2luX2VjEDEaCXVzLWVhc3QtMSJHMEUCIHc/ibVAAB6WOf8ShuGzp/ToZAaHEZ9G1ePg8AxsspgcAiEAsXCI/tjaLBmFqZN3vUpzsU5rVrdOfFSqo//pSMUtZMwqwgUIyv//////////ARAAGgw2NDI2MjQwNTg4MDkiDAV4Q1r0Cm0qhn7V9yqWBWll4O7+8oufxh7/Arlrrdqhq6ZrcbJLPK793j0hAIgoyYJokMwrbyTxUedap0LlNSiksLlS+3ls0eRU77bxWrY1FDnoNegQa3UfAzrEPBarhkPUAGGkJK1diYLiH9+D99R2iDqvLTw/lPjQeD6PG5cQsiMiAl0vIAZKemtj2Wvis3Ruw1d4c7qnNlFhqgYs2+5U4iTUrdxhaG1X1Cq6Wq0y0kcPyuivP6HbtAmc1GBLY3mPZdHbzT7CnoFA1xecjGuX5ACWCSpVzeh0uzeeszNbF2lBEPr7P6UE7xOhdf/H9AO2E4JqVqhI8wAc7ACe+8r5zT2RJnc/t2zRAbVEVlzbPnsYjUCm02GYhGRqGs4yDQ9MIgW4exfqPSlbtKW5Un0TN53rSte0SBw3t9rHRewC3DudGv88KnDgxb+BnCOvn1QubVNf0vQqTwlUiWY9E+MTCpOgkQU9oeaMzwC4lrZyaRpy9wFLnQNV23HwZ+4l91/hdnEfEwLQQ+h/+l0B6in14ZXGmGpFJlptBuUgnOKmanPCX2YtEG0IWE4eHOaY0QBt5yHhsMZTKapOp4dbRHhUF4WimF3OYQA6B4p4j2irAI7gmDMT5IbRNKE9AyjOhL+uWvz8+leZjqc43fTVB3U6EcsyhFUjz8JA8Lp51j2eEf2dgKIEZA/N9YYKlUn0mQAn5kz843E7yv3bXLHVIcfAheMhzY6wleEutLQL2P+lREe3tltMMSQAtP662qfI+R5FhPYA28mPbzL7X4aaaC75yanN7Cf9ttV5lQEWQDTqBWZfsvV2uE7AugDbjLOOxg71zXH1H8qJRQubYej8fB5WHhhqujaxBniBwb3gnymuFcjLo9nb033eH4y4HTTSjGJQkABsMKOtoaYGOrEBKIVQkuKdo8sdX/1cwidzxjI1G3Aiy2u2bdvh8Ijv4VwcXE/QvJaNwkY+m4UzF98zZx5vvtacUV9oO4I3LsYCAzF8JR7rHl9/xKuG89idY1c5LaPuVrs8ArjRqi+d3JjJUhjUNslDDxRnwL/Ll6SIrS0y/So3BeBHxjRhcChbFQ7SL3vCbNuSG3f41QZln1qJwnzQveXE4inyRhEhk5XmFEgeCU7nFabtw1vYaFJylMD2",\n  "Expiration" : "2023-08-01T07:07:01Z"\n}'}}, 'identity-credentials': {'ec2': {'info': '{\n  "Code" : "Success",\n  "LastUpdated" : "2023-08-01T00:49:35Z",\n  "AccountId" : "642624058809"\n}', 'security-credentials': {}}}, 'instance-action': 'none', 'instance-id': 'i-072e11212dc2b7367', 'instance-life-cycle': 'on-demand', 'instance-type': 't2.xlarge', 'local-hostname': 'ip-10-0-0-112.ec2.internal', 'local-ipv4': '10.0.0.112', 'mac': '0e:df:f4:50:b1:d9', 'metrics': {'vhostmd': '<?xml version="1.0" encoding="UTF-8"?>'}, 'network': {'interfaces': {'macs': {}}}, 'placement': {'availability-zone': 'us-east-1b', 'availability-zone-id': 'use1-az6', 'region': 'us-east-1'}, 'profile': 'default-hvm', 'public-hostname': '', 'public-ipv4': '3.x.x.5', 'public-keys': {'0=xxxxxx': None}, 'reservation-id': 'r-088758785e30f0baa', 'security-groups': 'tuberdata-ec2', 'services': {'domain': 'amazonaws.com', 'partition': 'aws'}, 'system': 'xen'}
```


```

{
   "ami-id":"ami-007855ac798b5175e",
   "ami-launch-index":"0",
   "ami-manifest-path":"(unknown)",
   "block-device-mapping":{
      "ami":"/dev/sda1",
      "ephemeral0":"sdb",
      "ephemeral1":"sdc",
      "root":"/dev/sda1"
   },
   "events":{
      "maintenance":{
         "history":"[]",
         "scheduled":"[]"
      }
   },
   "hostname":"ip-10-0-0-112.ec2.internal",
   "iam":{
      "info":"{\n  \"Code\" : \"Success\",\n  \"LastUpdated\" : \"2023-08-01T00:49:39Z\",\n  \"InstanceProfileArn\" : \"arn:aws:iam::642624058809:instance-profile/custom-ec2-admin\",\n  \"InstanceProfileId\" : \"AIPAZLH3A6W4V6NBNME2W\"\n}",
      "security-credentials":{
         "custom-ec2-admin":"{\n  \"Code\" : \"Success\",\n  \"LastUpdated\" : \"2023-08-01T00:49:36Z\",\n  \"Type\" : \"AWS-HMAC\",\n  \"AccessKeyId\" : \"ASIAZLH3A6W45WOFRBGN\",\n  \"SecretAccessKey\" : \"3zPwxav57uFGYWoge/qcUWWRYiEKu2H7dvq8GCl+\",\n  \"Token\" : \"IQoJb3JpZ2luX2VjEDEaCXVzLWVhc3QtMSJHMEUCIHc/ibVAAB6WOf8ShuGzp/ToZAaHEZ9G1ePg8AxsspgcAiEAsXCI/tjaLBmFqZN3vUpzsU5rVrdOfFSqo//pSMUtZMwqwgUIyv//////////ARAAGgw2NDI2MjQwNTg4MDkiDAV4Q1r0Cm0qhn7V9yqWBWll4O7+8oufxh7/Arlrrdqhq6ZrcbJLPK793j0hAIgoyYJokMwrbyTxUedap0LlNSiksLlS+3ls0eRU77bxWrY1FDnoNegQa3UfAzrEPBarhkPUAGGkJK1diYLiH9+D99R2iDqvLTw/lPjQeD6PG5cQsiMiAl0vIAZKemtj2Wvis3Ruw1d4c7qnNlFhqgYs2+5U4iTUrdxhaG1X1Cq6Wq0y0kcPyuivP6HbtAmc1GBLY3mPZdHbzT7CnoFA1xecjGuX5ACWCSpVzeh0uzeeszNbF2lBEPr7P6UE7xOhdf/H9AO2E4JqVqhI8wAc7ACe+8r5zT2RJnc/t2zRAbVEVlzbPnsYjUCm02GYhGRqGs4yDQ9MIgW4exfqPSlbtKW5Un0TN53rSte0SBw3t9rHRewC3DudGv88KnDgxb+BnCOvn1QubVNf0vQqTwlUiWY9E+MTCpOgkQU9oeaMzwC4lrZyaRpy9wFLnQNV23HwZ+4l91/hdnEfEwLQQ+h/+l0B6in14ZXGmGpFJlptBuUgnOKmanPCX2YtEG0IWE4eHOaY0QBt5yHhsMZTKapOp4dbRHhUF4WimF3OYQA6B4p4j2irAI7gmDMT5IbRNKE9AyjOhL+uWvz8+leZjqc43fTVB3U6EcsyhFUjz8JA8Lp51j2eEf2dgKIEZA/N9YYKlUn0mQAn5kz843E7yv3bXLHVIcfAheMhzY6wleEutLQL2P+lREe3tltMMSQAtP662qfI+R5FhPYA28mPbzL7X4aaaC75yanN7Cf9ttV5lQEWQDTqBWZfsvV2uE7AugDbjLOOxg71zXH1H8qJRQubYej8fB5WHhhqujaxBniBwb3gnymuFcjLo9nb033eH4y4HTTSjGJQkABsMKOtoaYGOrEBKIVQkuKdo8sdX/1cwidzxjI1G3Aiy2u2bdvh8Ijv4VwcXE/QvJaNwkY+m4UzF98zZx5vvtacUV9oO4I3LsYCAzF8JR7rHl9/xKuG89idY1c5LaPuVrs8ArjRqi+d3JjJUhjUNslDDxRnwL/Ll6SIrS0y/So3BeBHxjRhcChbFQ7SL3vCbNuSG3f41QZln1qJwnzQveXE4inyRhEhk5XmFEgeCU7nFabtw1vYaFJylMD2\",\n  \"Expiration\" : \"2023-08-01T07:07:01Z\"\n}"
      }
   },
   "identity-credentials":{
      "ec2":{
         "info":"{\n  \"Code\" : \"Success\",\n  \"LastUpdated\" : \"2023-08-01T00:49:35Z\",\n  \"AccountId\" : \"642624058809\"\n}",
         "security-credentials":{
            
         }
      }
   },
   "instance-action":"none",
   "instance-id":"i-072e11212dc2b7367",
   "instance-life-cycle":"on-demand",
   "instance-type":"t2.xlarge",
   "local-hostname":"ip-10-0-0-112.ec2.internal",
   "local-ipv4":"10.0.0.112",
   "mac":"0e:df:f4:50:b1:d9",
   "metrics":{
      "vhostmd":"<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
   },
   "network":{
      "interfaces":{
         "macs":{
            
         }
      }
   },
   "placement":{
      "availability-zone":"us-east-1b",
      "availability-zone-id":"use1-az6",
      "region":"us-east-1"
   },
   "profile":"default-hvm",
   "public-hostname":"",
   "public-ipv4":"52.x.x.5",
   "public-keys":{
      "0=xxxxx":"None"
   },
   "reservation-id":"r-088758785e30f0baa",
   "security-groups":"xxxx-ec2",
   "services":{
      "domain":"amazonaws.com",
      "partition":"aws"
   },
   "system":"xen"
}
```
