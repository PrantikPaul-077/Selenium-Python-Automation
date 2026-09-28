pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                bat 'python -m pip install --upgrade pip'
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat 'robot -d results -v HEADLESS:true tests'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: 'results/**', allowEmptyArchive: true
            publishHTML(target: [
                allowMissing: true,
                alwaysLinkToLastBuild: true,
                keepAll: true,
                reportDir: 'results',
                reportFiles: 'report.html',
                reportName: 'Robot Framework Report'
            ])
        }
    }
}
