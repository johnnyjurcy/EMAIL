node{
  checkout scm
  stage("email"){
    echo "this testing mail"
    try{
    emailext body: 'A Test EMail', subject: 'Test', to: 'gajendra-kt@dxc.com'
    emailext body: 'A Test EMail', subject: 'Test', to: 'gajendrarok@gmail.com'
    }
    catch(Exception e){
      echo "error wjile sending email{$e}"
    }
  
  }
}
