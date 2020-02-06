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
      
      office365ConnectorSend color: '#96CEB4', message: 'Example', status: 'Example', webhookUrl:'code-verification-notifications - Server Lifecycle Management <9e13b2e5.CSCPortal.onmicrosoft.com@amer.teams.ms>'
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
