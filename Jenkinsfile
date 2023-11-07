pipeline {
    agent any 
    environment {
        PATH=sh(script:"echo $PATH:/usr/local/bin", returnStdout:true).trim()       
    }
     
    node {
        stage('SCM') {
            checkout scm
        }
        stage('SonarQube Analysis') {
            def mvn = tool 'Default Maven';
            withSonarQubeEnv() {
            sh "${mvn}/bin/mvn clean verify sonar:sonar -Dsonar.projectKey=petclinic -Dsonar.projectName='petclinic'"
            }
        }
        }