#!/usr/bin/env groovy
 def status;
node{  
   stage('stage1'){
    def commit = sh (returnStatus : true ,  script: 'STRING="Hello World" echo $STRING')
    echo "${commit} "

    }
}

