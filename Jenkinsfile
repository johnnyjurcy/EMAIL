#!/usr/bin/env groovy
node{ 
  def status
  triggers {
     status = sh(cron(* * * * *))
  }
  stage ('testing'){
    echo "testing stage is callled "
    echo "corn res is: ${status}"
} 
  
}
