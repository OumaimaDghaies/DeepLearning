pipeline {
    agent any

    stages {
        stage('Préparation') {
            steps {
                checkout scm
                sh '''
                    python3 -m venv venv
                    . venv/bin/activate
                    pip install -r requirements.txt
                '''
            }
        }
        stage('TestDL') {
            steps {
                sh './jenkins/scripts/test.sh'
            }
        }
        
        
    }

    
}
