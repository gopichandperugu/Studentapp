pipeline {
    agent any
    stages {
        stage('mvn-clean') {
            steps {
               sh 'mvn clean'
            }
        }
        stage('mvn-compile') {
            steps {
               sh 'mvn compile'
            }
        }
        stage('OWASP-Dependecy-check') {
            steps {
               sh 'bash /usr/bin/dependency-check.sh --scan *'
            }
        }
        stage('mvn-sonar'){
            steps{
                sh 'mvn sonar:sonar -Dsonar.projectKey=student -Dsonar.host.url=http://jenkins-sonar-nexus.nstdevsecops.xyz:9000 -Dsonar.login=sqp_af754668df9217f3335045c64e969f71f3b57ac2'
            }
        } 
        stage('mvn-Package') {
            steps {
               sh 'mvn package'
            }
        }
        /*stage('mvn-Deploy-nexus-backup') {
            steps {
               sh 'mvn deploy'
            }
        }*/
    }
}
