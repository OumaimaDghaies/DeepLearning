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
        
        stage('Test') {
            steps {
                script {
                    // Commande pour exécuter un script Python
                    sh 'python3 main2.py'
                    
                }
            }
        }

        stage('Déploiement') {
            steps {
                // Commandes pour démarrer votre application Streamlit
                script {
                    sh 'streamlit run main2.py &'
                }
            }
        }
    }

    
}
