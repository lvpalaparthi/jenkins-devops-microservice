import groovy.transform.Field
import groovy.json.JsonSlurper
import groovy.json.*

def gitShortHash = ""
def docker_registry = 'http://registry.rxcorp.com'
def registry = "registry.rxcorp.com"
def version = ""
def image_path = env.JOB_NAME
def docker_image = ""
//def branch_name = ""
//def build_number = ""
def appName = "bdfcloud"

node {
	def projectName = "bdfcloud"
	checkout scm
	//branch_name = env.BRANCH_NAME.toLowerCase()
	//build_number = env.BUILD_ID

	// if(branch_name == "master"){
	// 	print(image_path)
	// }
	print(image_path)
	// print(env)
    // stage("print env"){
    //     sh 'printenv'
    // }

	stage('build and push docker image'){
		//version = "${branch_name}_${build_number}"
		version = "1.0"
        docker_image = "${registry}/${image_path}:${version}"
		print("Docker image: ${docker_image}")
		docker.withRegistry(docker_registry, 'dockerHub'){
            def dockerApp = docker.build("lvp123/${image_path}:${version}")
            dockerApp.push()
        }
	}

	stage("Deploy App") {
		withCredentials([usernamePassword(
                credentialsId: "dockerHub",
                usernameVariable: 'lvp123',
                passwordVariable: 'mypassword'
            )]) {
                   sh "docker login registry.rxcorp.com -u ${username} -p ${password}"
                }
		 withDockerContainer("lvp123/${image_path}:${version}"){
			 checkout scm
			 echo "Working Docker Container from Jenkins!"
		 }

	}
}



// node {
// 	def app
// 	checkout scm
// 	stage('build image'){
// 		app = docker.build("lvp123/jenkinstest")
// 	}

// 	//dockerfile { filename 'Dockerfile' }
// 	stage('Test Image') {
// 		app.inside{
// 			echo "Tests passed"
// 		}
// 	}
// 	stage('Push Image') {
// 		docker.withRegistry('https://registry.hub.docker.com', 'dockerHub'){
// 		app.push()
// 		}
// 		echo "Trying to Push Docker Build to DockerHub"

// 	}
// }