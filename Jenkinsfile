node{
   stage('SCM Checkout'){
       git url:'https://github.com/Camfez92/PRAXIS-FE-main', branch:'main'
   }
   stage('Build Docker Image'){
     sh 'docker build -t hangavi/hw5:frontend .'
   }
   stage('Push Docker Image'){
       withCredentials([string(credentialsId: 'contrasena_docker', variable: 'contrasena')]) {
            sh "docker login -u hangavi -p ${contrasena}"
       }
       sh 'docker push hangavi/hw5:frontend'
   }
}