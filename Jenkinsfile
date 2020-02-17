#!/usr/bin/env groovy
 def status;
node{  
   stage('stage1'){
    def commit = sh (returnStatus : true ,  script: '''echo hi ''').split()


    echo "${commit} "

    }
}

