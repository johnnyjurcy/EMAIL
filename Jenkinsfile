#!/usr/bin/env groovy
node{    
  checkout scm
  stage("email"){
    def sts;
    echo "this testing mail"
    try{
       withCredentials([string(credentialsId: 'VeracodeWebhookUrl', variable: 'SECRET')]) {
    echo "My secret text is '${SECRET}'"
         office365ConnectorSend color: '#09ce02', message: '''
     BUILD_NUMBER  : ${BUILD_NUMBER}
   BUILD_ID  : ${BUILD_ID}
   BUILD_DISPLAY_NAME  : ${BUILD_DISPLAY_NAME}
   JOB_NAME  : ${JOB_NAME}
   JOB_BASE_NAME  : ${JOB_BASE_NAME}
   BUILD_TAG  : ${BUILD_TAG}
   EXECUTOR_NUMBER  : ${EXECUTOR_NUMBER}
   NODE_NAME  : ${NODE_NAME}
   NODE_LABELS  : ${NODE_LABELS}
   WORKSPACE  : ${WORKSPACE}
   JENKINS_HOME  : ${JENKINS_HOME}
   JENKINS_URL  : ${JENKINS_URL}
   BUILD_URL  :${BUILD_URL}
   JOB_URL  : ${JOB_URL}

''', status: 'SUCCESS', webhookUrl:"${SECRET}"
        
         //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'https://outlook.office.com/webhook/46f5052d-1320-4d8f-95b8-a78a83263d0b@93f33571-550f-43cf-b09f-cd331338d086/IncomingWebhook/f35469519c334e62b598596e3a092b18/ee32dfd8-3d11-4116-8327-d4b2585a2e5a'
   
  } //set SECRET with the credential content
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
