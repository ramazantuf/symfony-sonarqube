pipeline {
  agent none
  stages {
    stage("Build & SonarQube Analysis") {
      environment {
        scannerHome = tool 'sonar'
      }
      agent any
      steps {
        
        withSonarQubeEnv('sq') {
          sh "composer install"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
