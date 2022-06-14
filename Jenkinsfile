pipeline {
    agent {label 'gopi'}
    stages {
        stage('git-clone') {
            steps {
               git credentialsId: '244e4871-cd45-4d95-9ae0-0248a32a4728', url: 'https://github.com/gopichandperugu/Studentapp.git'
            }
        }
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
        stage('mvn-Package') {
            steps {
               sh 'mvn package'
            }
        }
    }
}
