pipeline {
    agent any 
     environment {
      DOCKERHUB_CREDENTIALS = credentials('docker')
  }
       
    stages {
        stage ('Git') {
            steps {
                
              
                git branch: 'main',
  
    url: 'https://github.com/slim-tana/cicd.git'
            }
        }
        stage ('Maven Clean') {
            steps {

                sh 'mvn clean'
            }
        }
        stage ('Maven Compile') {
            steps {

                sh "mvn compile"
            }
        }

        
     stage ('Sonar') {
            steps {
               withSonarQubeEnv(installationName: 'sonar', credentialsId: 'sonar') {
                sh 'mvn clean package sonar:sonar'
                }
            }
        
          
        }

      
        
        stage("Publish to Nexus ") {
            steps {
                sh 'mvn deploy'
                    }
                }
        
        stage('BUILDING IMAGE'){
    steps {
        sh 'ls target/'
        sh 'docker build -t exam .'
    }
}
        stage('push') {
        steps{
            
              
                
                    sh 'docker login -u slimmtana -p dckr_pat_iZJHMOGSFs9d0AHFrNawLQf-BuQ'
                
                sh 'docker tag exam slimmtana/exam'
                sh 'docker push slimmtana/exam'
                
        }
        
        
        
        }

    stage('docker compose'){
         steps {
            sh 'docker-compose up -d'
               }
                            }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }  
    }


    
