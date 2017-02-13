#!/bin/bash
# to see if machine is enrolled in Find My Mac

	if [ $(nvram -p | grep -c 'fmm-mobileme-token-FMM') -eq 0 ]; then 
		FindMyMac="Not Enabled"
	else
		FindMyMac="Enabled"
	fi

echo "<result>$FindMyMac</result>"
