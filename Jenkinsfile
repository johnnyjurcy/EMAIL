#!/usr/bin/env groovy
node{
  checkout scm
  stage("email"){
    echo "this testing mail"
    try{
       //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
      emailext body: ''' 
<html>
<body >
 <div bgcolor='red'><h3>>Veracode scan BUILD_ID: $BUILD_NUMBER  failed</h3>
<h4>LOG: $e </h4>
</body>
</html> ''', 
  subject: 'Raffia Veracode Scan report  ',
      from: 'gajendra-kt@dxc.com' ,
      to: 'gajendra-kt@dxc.com' 
      
      office365ConnectorSend color: '#09ce02', message: 'Testing email from Jenkins file ', status: 'Example', webhookUrl:'https://outlook.office.com/webhook/46f5052d-1320-4d8f-95b8-a78a83263d0b@93f33571-550f-43cf-b09f-cd331338d086/IncomingWebhook/f35469519c334e62b598596e3a092b18/ee32dfd8-3d11-4116-8327-d4b2585a2e5a'
    } catch(Exception e){
      echo "error while sending email{$e}"
      emailext body: ''' 
<!DOCTYPE html>
<html>
<body >
 <div bgcolor='red'><h3>>Veracode scan BUILD_ID: $BUILD_NUMBER  failed</h3>
<h4>LOG: $e </h4>
</body>
</html> ''', 
  subject: 'Raffia Veracode Scan report  ',
      from: 'gajendra-kt@dxc.com' ,
      to: 'gajendra-kt@dxc.com' 
    }
  }
}
