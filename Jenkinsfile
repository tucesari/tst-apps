pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn clean compile'
                }
            }
        }

        stage ('Testing Stage') {

            steps {
                withMaven(maven : 'maven_3_5_0') {
                    sh 'mvn test'
                }
            }
        }


//        stage ('Deployment Stage') {
//            steps {
//                withMaven(maven : 'maven_3_5_0') {
//                    sh 'mvn deploy'
//                }
//            }
//        }

         stage('Build Docker image') {
          steps {

                    sh 'docker stop demo'
                    sh 'docker rm demo'
                    sh 'docker build -t demoImage E:\smf\demo'
                    sh 'docker run --name demo -p 8090:8090 demoImage'

          }
    }
}