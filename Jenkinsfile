#!/usr/bin/env groovy
 def status;
node{  
  stage ('testing'){
    try {
    // Fails with non-zero exit if dir1 does not exist
    def dir1 = sh(script:' echo 'hjbjhbjh'', returnStdout:true).trim()
} catch (Exception ex) {
     println("Unable... to read dir1: ${ex}")
    }
    
  }
 stage('stage 2'){
  def ret = sh(script: 'uname', returnStdout: true)
  echo "thisos ${et}"
 }
}
