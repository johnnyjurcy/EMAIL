#!/usr/bin/env groovy
node{
  checkout scm
  stage("email"){
    echo "this testing mail"
      //emailext body: 'bosyd sdkjdf kl', subject: 'tasting mail', to: 'gajendra-kt@dxc.ocm'
     // mail bcc: '', body: 'TESTING from mail section', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email esc ', to: 'gajendra-kt@dxc.com'
     // mail bcc: '', body: 'TESTING from mail section ', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email sec ', to: 'gajendrarok@gmail.com'
    try{
       //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendrarok@gmail.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
      emailext body: ''' 
   <!DOCTYPE html>
<html>
<head>
  <meta  charset=utf-8"/>
  <title>Spoon-Knife</title>
</head>
<body>
{% if !BUILD_STATUS %}
<h4>
$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS:
Check console output at $BUILD_URL to view the results.
$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS!</h4>
{% endif%}

<p>
from outside
build is : ${env.BUILD_ID} 
</p>

<h3>Veracode scan BUILD_ID: $BUILD_NUMBER  completed.</h3>
<h3> You can check scan report at : https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=$BUILD_NUMBER </h3>
</p>


<h1>Build ${build.result}</h1>
<table>
  <tr><th>Build URL:</th><td><a href="${rooturl}${build.url}">${rooturl}${build.url}</a></td></tr>
  <tr><th>Project:</th><td>${project.name}</td></tr>
  <tr><th>Date of build:</th><td>${it.timestampString}</td></tr>
  <tr><th>Build duration:</th><td>${build.durationString}</td></tr>
</table>
<% changeSet = false
if (changeSet) {
   %> <h5> if ic called </h5>
  <%}%>
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
  
