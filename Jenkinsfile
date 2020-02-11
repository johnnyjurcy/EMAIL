#!/usr/bin/env groovy
node{   
  def VeracodeUrl= "https://outlook.office.com/webhook/46f5052d-1320-4d8f-95b8-a78a83263d0b@93f33571-550f-43cf-b09f-cd331338d086/IncomingWebhook/f35469519c334e62b598596e3a092b18/ee32dfd8-3d11-4116-8327-d4b2585a2e5a" 
  def imageName= "Raffia"
  checkout scm
  stage("failure "){
    echo "this testing mail"
    try{
      def a = 10;
      def b=0;
       def c;
      c=a/b;
     
    } catch(Exception e){
      echo "error while sending email{$e}"
       office365ConnectorSend color: '#ff0000',message: " <h2>${imageName}-${env.JOB_NAME}: Veracode Scan upload  Failed </h2><h3>BUILD_NUMBER : ${env.BUILD_NUMBER}<br>  NODE_NAME  : ${env.NODE_NAME} ERROR_LOG: ${e} </b></h3>", status: 'FAILURE', webhookUrl:"${VeracodeUrl}"
          emailext body: "<h2>Error occurred during veracode sccan upload</h2>  <h4> Status code: 3 <br> ERROR_LOG:</b>${e} <br> BUILD_URL:${env.BUILD_URL}</h4>", subject: "${imageName}-${env.JOB_NAME} Veacode Scan upload  Failed ", from:'gajendrarok@gmail.com', to: 'gajendra-kt@dxc.com'
    }
  }
  stage("2nd stage "){
    //office365ConnectorSend color: '#09ce02',message: "<h2>${imageName}-${env.JOB_NAME}: Veracode Scan completed Succesfully </h2> <h3>BUILD_NUMBER  : ${env.BUILD_NUMBER}<br>  NODE_NAME  : ${env.NODE_NAME}</h3>", status: 'SUCCESS', webhookUrl:"${VeracodeUrl}"
    emailext body: "<h2> ${imageName}-Veracode Scan completed Succesfully</h2> <h4>Status code: 3 <br> Veracode scan BUILD_ID: ${env.BUILD_ID} completed.You can check scan report at  https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID}<br><b>BUILD_URL</b>${env.BUILD_URL}</h4>", subject: "${imageName}-${env.JOB_NAME}-Veracode Scan completed Succesfully ", from:'gajendrarok@gmail.com', to: 'gajendra-kt@dxc.com'     
       
  }
}
