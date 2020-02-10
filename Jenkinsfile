#!/usr/bin/env groovy
node{    
  checkout scm
  stage("email"){
    def sts;
    echo "this testing mail"
    try{
      // withCredentials([string(credentialsId: 'VeracodeWebhookUrl', variable: 'SECRET')]) {}
    //echo "My secret text is '${SECRET}'"
      office365ConnectorSend color: '#09ce02',message: " BUILD_NUMBER  : ${env.BUILD_NUMBER} \n BUILD_ID  : ${env.BUILD_ID}\n BUILD_DISPLAY_NAME  : ${env.BUILD_DISPLAY_NAME} JOB_NAME  : ${env.JOB_NAME}JOB_BASE_NAME  : ${env.JOB_BASE_NAME}BUILD_TAG  : ${env.BUILD_TAG} EXECUTOR_NUMBER  : ${env.EXECUTOR_NUMBER}NODE_NAME  : ${env.NODE_NAME}NODE_LABELS  : ${env.NODE_LABELS} WORKSPACE  : ${env.WORKSPACE} JENKINS_HOME  : ${env.JENKINS_HOME}JENKINS_URL  : ${env.JENKINS_URL}BUILD_URL  : ${env.BUILD_URL}JOB_URL  : ${env.JOB_URL}", status: 'SUCCESS', webhookUrl:"${env.VeracodeUrl}"
         //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
         //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. '${env.BUILD_URL}' You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com', cc:'${SECRET}'
     
        
         //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'https://outlook.office.com/webhook/46f5052d-1320-4d8f-95b8-a78a83263d0b@93f33571-550f-43cf-b09f-cd331338d086/IncomingWebhook/f35469519c334e62b598596e3a092b18/ee32dfd8-3d11-4116-8327-d4b2585a2e5a'
   
   //set SECRET with the credential content
       //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
     
      //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'${webhooko}'
      //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'{$VeracodeWebhookUrl}'
    } catch(Exception e){
      echo "error while sending email{$e}"
    }
  }
  stage("2nd stage "){
    echo "echo succesfull in stage 2"
  }
}
