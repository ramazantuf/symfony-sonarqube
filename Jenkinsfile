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
          sh "echo Ramazan"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
