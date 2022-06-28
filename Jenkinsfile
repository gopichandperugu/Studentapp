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
        stage('mvn-sonar'){
            steps{
                sh 'mvn sonar:sonar -Dsonar.projectKey=pipeline-practise -Dsonar.host.url=http://34.125.149.108:9000 -Dsonar.login=cd1023876cebbda95240ba15749accd78acb3703'
            }
        }
        stage('mvn-Package') {
            steps {
               sh 'mvn package'
            }
        }
    }
}
