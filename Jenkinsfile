pipeline{
    agent any

    stages{
        stage('checkout'){
            steps{
            git branch: "master", url: "https://github.com/Huzaifu/onlinebookstore.git" 
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
                mv "/var/lib/jenkins/workspace/jenkins_docker_project_1/target/onlinebookstore.war" "/opt/tomcat/webapps/"
            '''
            }
        }
        stage('Build image'){
            steps{
            sh 'docker build -t onlinebookstore .'
            }
        }
        stage('Add tag to this image'){
            steps{
                sh 'docker tag onlinebookstore huzaifasarfraz/onlinebookstore'
            }
        }
        stage('Login to DockerHub'){
            steps{
                sh 'docker login -u huzaifasarfraz -p pakistan.2203.'
            }
        }
        stage('Push this image'){
            steps{
                sh 'docker push huzaifasarfraz/onlinebookstore'
            }
        }
        stage('Remove this image'){
            steps{
                sh '''
                    docker rmi onlinebookstore
                    docker rmi huzaifasarfraz/onlinebookstore
                '''
            }
        }
        stage('Pull this image'){
            steps{
                sh 'docker pull huzaifasarfraz/onlinebookstore'
            }
        }
        stage('Run this image'){
            steps{
                sh 'docker run -p -d 8082:8080 huzaifasarfraz/onlinebookstore'
            }
        }
    }
}
