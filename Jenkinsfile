pipeline {
  agent none
  stages {
    stage("Build & SonarQube Analysis") {
      agent any
      steps {
        def scannerHome = tool 'SonarScanner';
        withSonarQubeEnv('sq') {
          sh "echo Ramazan"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
