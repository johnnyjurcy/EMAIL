#!/usr/bin/env groovy
node{
  checkout scm
  stage("email"){
    echo "this testing mail"
    try{
       mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
      emailext body: ''' 
<!DOCTYPE html>
<html>
<body >
<h2 bgcolor='red'>Veracode scan BUILD_ID: $BUILD_NUMBER  failed</h2>
<h3>LOG:</h3><h2> loYou can check scan report at : https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=$BUILD_NUMBER </h2>
</body>
</html> ''', 
  subject: 'Raffia Veracode Scan report  ',
      from: 'gajendra-kt@dxc.com' ,
      to: 'gajendra-kt@dxc.com' 
    } catch(Exception e){
      echo "error while sending email{$e}"
    }
  }
}
