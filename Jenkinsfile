pipeline {
    agent {label 'gopi'}
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
        stage('mvn-Package') {
            steps {
               sh 'mvn package'
            }
        }
    }
}
