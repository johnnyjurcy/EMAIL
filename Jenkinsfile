node{
  checkout scm
  stage("email"){
    echo "this testing mail"
      //emailext body: 'bosyd sdkjdf kl', subject: 'tasting mail', to: 'gajendra-kt@dxc.ocm'
     // mail bcc: '', body: 'TESTING from mail section', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email esc ', to: 'gajendra-kt@dxc.com'
     // mail bcc: '', body: 'TESTING from mail section ', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email sec ', to: 'gajendrarok@gmail.com'
    try{
       //mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendra-kt@dxc.com'
       //emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
      emailext body: ''' <!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>Spoon-Knife</title>
</head>
<body>
<p>
  <h13>Sean made a change</h3>
  <h2>Veracode scan BUILD_ID: {$env.BUILD_ID} completed</h2>
   <h2>Veracode scan BUILD_ID: <{$env.BUILD_ID}> completed</h2>
</p>
<${env.BUILD_ID}> env.BUILD_ID 
<script>env.BUILD_ID</script>
</body>
</html> ''', 
      from: 'gajendra-kt@dxc.com' ,
      to: 'gajendra-kt@dxc.com' 
    } catch(Exception e){
      echo "error wjile sending email{$e}"
    }
  }
}
  
