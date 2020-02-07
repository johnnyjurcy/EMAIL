#!/usr/bin/env groovy
node{
  def hook;
  withCredentials([string(credentialsId: 'VeracodeWebhookUrl', variable: 'SECRET')]) {
    echo "My secret text is '${SECRET}'"
    hook=$SECRET
  } //set SECRET with the credential content
        
  checkout scm
  stage("email"){
    echo "this testing mail"
    try{
      echo "My secret text is '${hook}'"
       //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
     
      //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'${webhooko}'
      //office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'{$VeracodeWebhookUrl}'
    } catch(Exception e){
      echo "error while sending email{$e}"
    }
  }
}
