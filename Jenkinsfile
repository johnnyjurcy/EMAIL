node{
  checkout scm
  stage("email"){
    echo "this testing mail"
      //emailext body: 'bosyd sdkjdf kl', subject: 'tasting mail', to: 'gajendra-kt@dxc.ocm'
     // mail bcc: '', body: 'TESTING from mail section', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email esc ', to: 'gajendra-kt@dxc.com'
     // mail bcc: '', body: 'TESTING from mail section ', cc: '', from: 'gajendra-kt@dxc.com', replyTo: '', subject: 'testing email sec ', to: 'gajendrarok@gmail.com'
    try{
       mail subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com',to: 'gajendra-kt@dxc.com'
       emailext  body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", subject: 'testing email email ext ', from:'gajendrarok@gmail.com', to: 'gajendrarok@gmail.com'
    } catch(Exception e){
      echo "error wjile sending email{$e}"
    }
  }
  

	

    stage(" VeracodeScan") {
        try{
                    def veraImage = docker.build("vera-image", "./Veracode")
                    veraImage.inside {
                        withCredentials([usernamePassword(credentialsId: 'automation-user', usernameVariable: 'automation_user', passwordVariable: 'automation_pass')]) {
                            sh 'bash ./Veracode/install-veracode-wrapper.sh'
                            sh "zip -r raffia.zip ."
                            sh "java -jar VeracodeJavaAPI.jar -action uploadandscan -vid $automation_user -vkey $automation_pass -appname Automation/raffia  -createprofile true -criticality high -version $imageName-$BUILD_NUMBER -filepath raffia.zip &> scan.log"
                        }
                    }    
        }
        catch(Exception e){
            echo "Error occurred during veracode upload and scan ${e}"
            Scan_Status = false
        }
    }
    
    stage("VeracodeCompletion") {
        try{
            
               
                    withCredentials([
                        usernamePassword(credentialsId: 'automation-API-user', usernameVariable: 'automation_API_user', passwordVariable: 'automation_API_pass'),
                        usernamePassword(credentialsId: 'automation-user', usernameVariable: 'automation_user', passwordVariable: 'automation_pass')
                    ]) {
                        retry(20) {
                            def returnResult = sh(returnStatus: true, script: 'bash Veracode/check-veracode.sh')
                            if (returnResult == 0) {
                                archiveArtifacts artifacts: 'veracode_scan_summary.pdf', fingerprint: true
                                emailext subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com', to: 'gajendra-kt@dxc.com'
                            } else if (returnResult == 1) {
                                archiveArtifacts artifacts: 'veracode_scan_summary.pdf', fingerprint: true
                                emailext subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' completed. You can check scan report at https://analysiscenter.veracode.com/api/4.0/summaryreportpdf.do?build_id=${env.BUILD_ID} ", from: 'gajendra-kt@dxc.com', to: 'gajendra-kt@dxc.com'
                            } else if (returnResult == 3) {
                                //archiveArtifacts artifacts: 'veracode_scan_summary.pdf', fingerprint: true
                                emailext subject: "Veracode scan BUILD_ID: '${env.BUILD_ID}' ", body: "Veracode scan BUILD_ID: '<${env.BUILD_ID}>' failed. check return code is 3", from: 'gajendra-kt@dxc.com', to: 'gajendra-kt@dxc.com'
                            } else {
                                error "return code is $returnResult, retrying ...."
                            }
                        }
                    }
        }
        catch(Exception e){
            echo "Error occurred during veracode scan Completion ${e}"
        }
    }
}
