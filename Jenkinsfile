pipeline {
    agent any 
     environment {
      DOCKERHUB_CREDENTIALS = credentials('docker')
  }
       
    stages {
        stage ('Git') {
            steps {
                
              
                git branch: 'main',
  
    url: 'https://github.com/marwaahadidane/CICD.git'
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

        
     stage ('Scan and Build Jar File') {
            steps {
               withSonarQubeEnv(installationName: 'sonar', credentialsId: 'sonar') {
                sh 'mvn clean package sonar:sonar'
                }
            }
        
          
        }

        stage ('Maven Test JUnit') {
            steps {
                echo 'hello world'
            }
        }
        
        
  
        
        
        
        
        stage("Publish to Nexus Repository Manager") {
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


    
