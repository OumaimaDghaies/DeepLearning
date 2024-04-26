pipeline {
    agent any

    tools {
        // Assurez-vous que Python et les autres outils nécessaires sont installés
        python 'Python3'
    }

    stages {
        stage('Préparation') {
            steps {
                checkout scm
                // Installation des dépendances
                sh 'python -m pip install -r requirements.txt'
            }
        }
        
        stage('Test') {
            steps {
                // Exécution des tests, par exemple exécuter un script python ou un notebook Jupyter
                script {
                    // Commande pour exécuter un script Python, par exemple main2.py
                    sh 'python main2.py'
                    // Si vous souhaitez exécuter un notebook Jupyter
                    sh 'jupyter nbconvert --to notebook --execute plantCNN.ipynb'
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
