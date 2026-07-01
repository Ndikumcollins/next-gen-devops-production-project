pipeline {
    agent any

    stages {
        stage('Master Plan: Initialize') {
            steps {
                echo 'Executing DevOps Master Plan...'
            }
        }
        stage('Run Automated Script') {
            steps {
                // This runs our newly rewritten shell script!
                sh 'bash ./myscript.sh'
            }
        }
    }
}
