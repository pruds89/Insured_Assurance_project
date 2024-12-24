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
    }
}
