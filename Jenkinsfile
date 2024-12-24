pipeline {
	agent any
	stages {
		stage('checkout') {
			steps{
				echo "Skipping this " 
			}
		}
		stage('tomcat_installation') {
			steps{
				sh target/tomcat_installation.sh
			}
		}
		stage('deploy_war') {
			steps{
				/usr/bin/cp /target/SampleWebApp.war /var/lib/tomcat9/webapps/ROOT/SampleWebApp.war
			}
		}
	}
}
			
