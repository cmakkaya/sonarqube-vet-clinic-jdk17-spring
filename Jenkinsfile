pipeline {
    agent any 
    environment {
        PATH=sh(script:"echo $PATH:/usr/local/bin", returnStdout:true).trim()       
    }
     
    stages{
        
        stage("Sonarqube Analysis "){
            steps{
                sh ''' mvn sonar:sonar -Dsonar.url=http://44.210.86.227:9000/ -Dsonar.login=squ_e61a060b7f4dfb577da02beb0ff5a53310e0a435 -Dsonar.projectName=petclinic \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=petclinic '''
    
                }
            }
        }
    }
