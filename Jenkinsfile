pipeline {
	agent any
	stages {
		stage('checkout') {
			steps{
				git 'https://github.com/pruds89/Insured_Assurance_project.git'
			}
		}
		stage('tomcat_installation') {
			steps{
				sh target/tomcat_installation.sh
			}
		}
		stage('deploy_war') {
			steps{
				/usr/bin/cp target/SampleWebApp.war /var/lib/tomcat9/webapps/ROOT/SampleWebApp.war
			}
		}
	}
}
			
