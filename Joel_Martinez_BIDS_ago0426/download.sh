#!/bin/bash

XNAT_SERVER="https://http://172.24.80.68:8080"
PROJECT_ID="psicrest"
SUBJECT_ID="907"
USERNAME="santosg57"
PASSWORD="Imagen04"

# Download subject data as a zip file via the XNAT REST API
curl -u "$USERNAME:$PASSWORD" \
  -X GET "$XNAT_SERVER/data/projects/$PROJECT_ID/subjects/$SUBJECT_ID/experiments?format=zip" \
  -o "${SUBJECT_ID}_data.zip"

echo "Download complete: ${SUBJECT_ID}_data.zip"


