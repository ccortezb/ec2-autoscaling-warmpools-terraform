#!/bin/bash
 sudo docker run --rm -it -v ~/.aws:/root/.aws amazon/aws-cli autoscaling describe-warm-pool --auto-scaling-group-name "$1" --region us-east-1
