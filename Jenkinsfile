pipeline {
    agent any
    environment {
        MAVEN_HOME = tool('maven')
    }
    stages {
        stage('Check-Git-Secrets') {
            steps {
               sh 'sudo /usr/bin/docker -B ps -aq'
               sh 'sudo /usr/bin/docker -B rmi -f $(docker images -aq)'
               sh 'echo "scanning github repository URL to detect secrets post-push"'
               sh 'sudo /usr/bin/docker -B run gesellix/trufflehog --json https://github.com/gopichandperugu/Studentapp.git > trufflehog'
           }
    }
    /*stages {*/
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
               sh 'cat /var/lib/jenkins/workspace/DevSecOps/Studentapp/./dependency-check-report.html'
            }
        }
        stage('SAST-with-sonar'){
            steps{
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
