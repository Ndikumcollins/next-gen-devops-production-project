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
                // This tells Jenkins to run your original nano script!
                // (Make sure this matches the exact filename of your script)
                sh 'bash ./myscript.sh'
            }
        }
    }
}
