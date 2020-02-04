#!/bin/bash

BUILD_ID="`cat scan.log | grep "The build_id of the new build is " | awk -F'"' '{print $2}'`"


grep='^[0-9]+$'

if [[ $BUILD_ID =~ $grep ]]; then
    API="`curl -k -s -u $demo_API_user:$demo_API_pass -X GET \
      'https://ec2-3-125-29-45.eu-central-1.compute.amazonaws.com:8443/codescanresults?build_id='${BUILD_ID}''`"

    if [[ $API =~ '"completed" : "false"' ]]; then
        echo "BUILD_ID: $BUILD_ID"
        echo "veracode scan not complete"
        echo "sleep 2 mins"
        echo "API: $API"
        sleep 2m
        exit 2
    elif [[ $API =~ '"pass" : "true"' ]]; then
        echo "BUILD_ID: $BUILD_ID"
        echo "veracode scan score passes"
        echo "API: $API"
        curl --compressed -s -k -v -u $demo_user:$demo_pass https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${BUILD_ID} > veracode_scan_summary.pdf
        API="`curl -k -s -u $demo_API_user:$demo_API_pass -X GET \
         'https://ec2-3-125-29-45.eu-central-1.compute.amazonaws.com:8443/copysummaryreports3?build_id='${BUILD_ID}''`"
        exit 0
    elif [[ $API =~ '"pass" : "false"' ]]; then
        echo "BUILD_ID: $BUILD_ID"
        echo "veracode scan score fails"
        echo "API: $API"
        curl --compressed -s -k -v -u $demo_user:$demo_pass https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${BUILD_ID} > veracode_scan_summary.pdf
        API="`curl -k -s -u $demo_API_user:$demo_API_pass -X GET \
         'https://ec2-3-125-29-45.eu-central-1.compute.amazonaws.com:8443/copysummaryreports3?build_id='${BUILD_ID}''`"
        exit 1
    elif [[ $API =~ "Error:  The most likely cause" ]]; then
        echo "BUILD_ID: $BUILD_ID"
        echo "Is not a real build_id ... check logs"
        cat scan.log
        echo "API: $API"
        exit 3
    elif [[ $API =~ "Failed to connect to" ]]; then
        echo "BUILD_ID: $BUILD_ID"
        echo "veracode cannot be reached"
        echo "API: $API"
        exit 3
    else
        echo "BUILD_ID: $BUILD_ID"
        echo "Unknown Error"
        echo "API: $API"
        exit 3
    fi
else
    echo "veracode scan broke review logs"
    cat scan.log
    exit 3
fi
