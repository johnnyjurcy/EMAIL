#!/usr/bin/env groovy
 def status;
node{  
  stage ('testing'){
    status = sh(cron("* * * * *"))
    echo "testing stage is callled "
    echo "corn res is: ${status}"
} 
  
}
