pipeline {
  agent none
  stages {
    stage("Build & SonarQube Analysis") {
      agent any
      steps {
        script {
          def scannerHome = tool 'sonar'
        }
        withSonarQubeEnv('sq') {
          sh "sudo apt install composer && composer install"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
