pipeline {
  agent any
  checkout SCM

  stage("email"){
        emailext body: 'A Test EMail',  subject: 'Test', to: 'gajendra-kt@dxc.com'

}
}
