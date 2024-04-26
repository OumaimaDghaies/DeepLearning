pipeline {
    agent any

    stages {
        stage('Préparation') {
            steps {
                checkout scm
                // Exécution directe de Python sans utiliser 'tools'
                sh 'python3 -m pip install --user -r requirements.txt'
            }
        }
        
        
    }

    
}
