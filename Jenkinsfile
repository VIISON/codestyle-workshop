+pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'docker build --no-cache --tag codestyle-presentation ./' 
            }
        }

        stage('deploy') {
            steps {
                sh 'docker --rm -f codestyle-presentation || echo fresh deployment' 
                sh 'docker run -d -p 8080:8080 --name codestyle-presentation codestyle-presentation' 
            }
        }
    }
}
