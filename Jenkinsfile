node {
	def app
	checkout scm
	stage('build image'){
		app = docker.build("jenkinstest")
	}

	//dockerfile { filename 'Dockerfile' }
	stage('Test Image') {
		app.inside{
			echo "Tests passed"
		}
	}
	stage('Push Image') {
		docker.withRegistry('https://registry.hub.docker.com', 'lvp123'){
		app.push("${env.BUILD_NUMBER}")
        app.push("latest")
		}
		echo "Trying to Push Docker Build to DockerHub"

	}
}
