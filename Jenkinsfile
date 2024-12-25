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
	stage('Test')	{
            steps {
                script {
                    def serviceName = 'tomcat9.service'
                    def status = sh(script: "systemctl is-active ${serviceName}", returnStatus: true)
		    if (status != 0) {
			    error "Service ${serviceName} is not active. Failing the build."
		    } else {
			    echo "Service ${serviceName} is active."
		    }
                }
            }
 
	}	
    }
}
