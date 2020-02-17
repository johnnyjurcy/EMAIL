#!/usr/bin/env groovy
 def status;
node{  
   stage('stage1'){
   returnResult = sh(returnStatus: true, script: 'cron()')
    echo "stage 1 called: ${ returnResult} "

    }
}

