pipeline {
  agent { label 'docker' }
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t nairravish/jenkins-docker-image .'
      }
    }
    stage('Publish') {
      when {
        branch 'master'
      }
      steps {
        withDockerRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
          sh 'docker push nairravish/jenkins-docker-image'
        }
      }
    }
  }
}
