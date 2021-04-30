#!/bin/bash

#asgname = $1 

activities=$(aws autoscaling describe-scaling-activities --auto-scaling-group-name "$1")
for row in $(echo "${activities}" | jq -r '.Activities[] | @base64'); do
	    _jq() {
		         echo ${row} | base64 --decode | jq -r ${1}
			     }
		        start_time=$(_jq '.StartTime')
			   end_time=$(_jq '.EndTime')
			      activity=$(_jq '.Description')
			         echo $activity Duration: $(dateutils.ddiff $start_time $end_time)
			 done
