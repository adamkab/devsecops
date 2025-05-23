#!/bin/bash
#trivy-k8s-scan

echo $imageName # Getting image name from env variable

# Trivy scan with severity LOW, MEDIUM, HIGH (non-blocking)
trivy image --security-checks vuln -q --severity LOW,MEDIUM,HIGH --light $imageName

# Trivy scan with severity CRITICAL (blocking if found)
trivy image --security-checks vuln -q --severity CRITICAL --light $imageName