#!/usr/bin/env groovy
 def status;
triggers {
    status = cron("* * * * *")
  }
node{  
  stage ('testing'){
    echo "testing stage is callled "
    echo "corn res is: ${status}"
} 
  
}
