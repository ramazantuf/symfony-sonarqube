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
          sh "curl -sS https://getcomposer.org/installer | php"
          sh "mv composer.phar /usr/local/bin/composer"
          sh "${scannerHome}/bin/sonar-scanner"
        }
      }
    }
  }
}
