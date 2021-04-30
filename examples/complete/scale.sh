
#!/bin/bash

aws autoscaling set-desired-capacity --auto-scaling-group-name "$1" --desired-capacity $2
