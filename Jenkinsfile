#!/usr/bin/env groovy
 def status;
node{  
  stage ('testing'){
    try {
    // Fails with non-zero exit if dir1 does not exist
    def dir1 = sh(script:'ls -la ', returnStdout:true).trim()
} catch (Exception ex) {
     println("Unable to read dir1: ${ex}")
    }
    
  }
}
