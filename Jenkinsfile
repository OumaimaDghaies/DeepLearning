pipeline {
    agent any

    stages {
        stage('Préparation') {
            steps {
                checkout scm
                sh '''
                # Création de l'environnement virtuel s'il n'existe pas
                [ -d venv ] || python3 -m venv venv

                # Activation de l'environnement virtuel
                . venv/bin/activate

                # Installation des dépendances
                pip install -r requirements.txt

                # Désactivation de l'environnement virtuel
                deactivate
                '''
            }
        }
       

        stage('Déploiement') {
            steps {
                // Commandes pour démarrer votre application Streamlit
                script {
                    sh '''
                    # Ensure the virtual environment is activated
                    . venv/bin/activate

                    # Run the Streamlit application
                    streamlit run main2.py

                    # Optionally, deactivate the virtual environment afterward
                    deactivate
                    '''
                }
            }
        }

    }
}
