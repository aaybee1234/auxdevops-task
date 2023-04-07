#!/bin/bash

# Define the web endpoint URL
endpoint="https://covid.ourworldindata.org/data/owid-covid-data.csv"

# Define the data directory
data_dir="data-retrieval-script/data"

# Create the data directory if it does not exist
if [ ! -d "$data_dir" ]; then
    mkdir -p "$data_dir"
fi

# Create a time-stamped directory for the downloaded data files
timestamp=$(date +%Y%m%d%H%M%S)
data_dir="$data_dir/$timestamp"
mkdir "$data_dir"

# Download the data file from the web endpoint
curl -o "$data_dir/owid-covid-data.csv" "$endpoint"

# Delete data copies that are more than three (3) days old
find "$data_dir" -type f -mtime +3 -delete
