pipeline {
    agent any
    environment {
        MAVEN_HOME = tool('maven')
    }
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
               sh 'sudo bash /usr/bin/dependency-check.sh --scan ./../Studentapp/'
            }
        }
        stage('mvn-sonar'){
            steps{
                sh 'java --version'
                sh 'mvn -v'
                sh 'export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.15.0.9-2.el7_9.x86_64'
                sh 'mvn -v'
                sh '${MAVEN_HOME}/bin/mvn -B sonar:sonar -Dsonar.projectKey=student -Dsonar.host.url=http://jenkins-sonar-nexus.nstdevsecops.xyz:9000 -Dsonar.login=sqp_af754668df9217f3335045c64e969f71f3b57ac2'
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
