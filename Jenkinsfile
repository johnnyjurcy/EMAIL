#!/usr/bin/env groovy
 def status;
node{  
   stage('stage1'){
    def commit = sh (returnStdout: true, script: '''echo hiecho lol''').trim()


    echo "commint :${commit}"

    }

