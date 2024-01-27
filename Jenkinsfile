pipeline{
    agent any

    stages{
        stage('checkout'){
            steps{
            git branch: "master", url: "https://github.com/shashirajraja/onlinebookstore.git" 
            }
        }
        stage('build'){
            steps{
            sh 'mvn clean install'
            }
        }
        stage('delpoy'){
            steps{
            sh '''
                mv "/var/lib/jenkins/workspace/jenkins_docker_project_1/target/*.war" "/opt/tomcat/webapps/"
            '''
            }
        }
    }
}
