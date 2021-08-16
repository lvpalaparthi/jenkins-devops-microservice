String ENV = ENV
class Config{
	static envForTest = [
		'dev' : 'testdev',
		'uacc' : 'testuacc',
		'intg' : 'testintg',
		'prod' : 'testprod',
		'test' : 'testshard'
	]
}
node{
	stage('test'){
		 sh "echo ${ENV}"
		 sh "echo ${Config.envForTest.get(ENV)}"
		 sh "echo ${Config.envForTest.get(env.ENV)}"

	}
}

// node {
// 	stage('build and push docker image'){
// 		docker.withRegistry('http://registry.hub.docker.com', 'dockerHub'){
//             def dockerApp = docker.build("lvp123/${image_path}:${version}")
//             dockerApp.push()
//         }
// 	}
// 	stage("Deploy App") {
// 		withCredentials([usernamePassword(
//                 credentialsId: "dockerHub",
//                 usernameVariable: 'username',
//                 passwordVariable: 'password'
//             )]) {
//                    sh "docker login registry.hub.docker.com -u ${username} -p ${password}"
//                 }
// 		 withDockerContainer("lvp123/jenkins-test:1.0"){
// 			 checkout scm
// 			 echo "Working Docker Container from Jenkins!"
// 			 sh "ls -la"
// 			 sh "pwd"
// 		 }

// 	}
// }


// node{
//     stage("Deploy App") {
// 		steps{
// 			def dockerImage = docker.build("lvp123/test:latest")
// 		}
//        withDockerContainer("lvp123/test:latest"){
// 		   sh "docker run -d -t --name bdf-cloud-test lvp123/test:latest"
//            sh "ls -la"
//            sh "pwd"
//        }
//     }
// }
