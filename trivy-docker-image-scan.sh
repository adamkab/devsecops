#!/bin/bash

dockerImageName=$(awk 'NR==1 {print $2}' Dockerfile)
echo $dockerImageName

# Run Trivy scans using the local CLI
trivy image -q  --severity HIGH --light postgres
trivy image -q  --severity CRITICAL --light postgres