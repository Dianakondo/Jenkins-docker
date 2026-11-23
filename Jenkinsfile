node{
  def app
    stage('Clone') {
        checkout scm 
    } 
    stage('Build image') {
        app = docker.build("diana/nginx")
    }
    stage('Run image') {
        docker.image('diana/nginx').withRun('-p 8085:80') { c ->
        sh 'docker ps'
        sh 'sleep 3'
        sh "curl -s http://\$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${c.id}):80"}
    }
}
