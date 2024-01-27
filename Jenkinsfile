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
                mv "$warfile" /opt/tomcat/webapps
            '''
            }
        }
    }
}
