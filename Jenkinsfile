pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Run a command with sudo
                    sh 'sudo ./tomcat_installation.sh'
                }
            }
        }
	stage('deploy')	{
            steps {
                script {
                    // Run a command with sudo
                    sh 'sudo cp ./SampleWebApp.war /var/lib/tomcat9/webapps/ROOT/'
                }
            }
 
	}
    }
}
