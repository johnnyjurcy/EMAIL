node{
  checkout scm
  stage("email"){
    echo "this testing mail"
   // try{
   emailext body: 'A Test EMail', subject: 'Test', from:'gajendra-kt@dxc.com',to: 'gajendra-kt@dxc.com'
    emailext body: 'A Test EMail', subject: 'Test', from:'gajendra-kt@dxc.com',  to: 'gajendrarok@gmail.com'
     emailext (body: 'A Test EMail', subject: 'Test', from:'gajendra-kt@dxc.com',to: 'gajendra-kt@dxc.com')
    emailext (body: 'A Test EMail', subject: 'Test', from:'gajendra-kt@dxc.com',  to: 'gajendrarok@gmail.com')
    
      //emailext body: 'bosyd sdkjdf kl', subject: 'tasting mail', to: 'gajendra-kt@dxc.ocm'
      mail bcc: '', body: 'TESTING', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing ', to: 'gajendra-kt@dxc.com'
      mail bcc: '', body: 'TESTING', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing ', to: 'gajendrarok@gmail.com'



   // }
   // catch(Exception e){
     // echo "error wjile sending email{$e}"
   // }
  
  }
}
