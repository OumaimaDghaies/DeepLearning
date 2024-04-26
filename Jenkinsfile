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
        stage('TestDL') {
            steps {
                script {
                    // Assurez-vous d'activer l'environnement virtuel avant l'exécution
                    sh '''
                    . venv/bin/activate
                    python3 main2.py
                    deactivate
                    '''
                }
            }
        }
    }
}
