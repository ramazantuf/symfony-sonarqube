pipeline {
  agent none
  stages {
    stage("Build & SonarQube Analysis") {
      agent any
      steps {
        script {
          scannerHome = tool 'sonar'
        }
        withSonarQubeEnv('sq') {
          sh "composer install"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
