pipeline {
  agent none
  stages {
    stage("Build & SonarQube Analysis") {
      agent any
      steps {
        withSonarQubeEnv('sq') {
          sh "echo Ramazan"
        }
      }
    }
  }
}
