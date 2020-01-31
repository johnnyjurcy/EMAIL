node{
  stage("email"){
    echo "this testing mail"
    try{
    emailext body: 'A Test EMail', subject: 'Test', to: 'gajendra-kt@dxc.com'
    }
    catch(e){
      echo "error wjile sending email{$e}"
    }
  
  }
}
