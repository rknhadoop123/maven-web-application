node {
  stage('SCM CheckOut') {
git 'https://github.com/rknhadoop123/maven-web-application.git'
    

}
stage('Compile-Package'){
//Get maven home path
def mvnHOME = tool name: 'M2_HOME', type: 'maven'

sh "${mvnHOME}/bin/mvn package"
}
  stage('Deploy-Tomcat'){
       sshagent(['tomcat-pl']) {
       sh  'scp -o StrictHostKeyChecking=no  target/*.war 54.169.41.150:/usr/local/tomcat9/webapps/'
}
        }
        }
