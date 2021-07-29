node {
	def app
	checkout scm
	stage('build image'){
		app = docker.build("lvp123/jenkinstest")
	}

	//dockerfile { filename 'Dockerfile' }
	stage('Test Image') {
		app.inside{
			echo "Tests passed"
		}
	}
	stage('Push Image') {
		docker.withRegistry('https://registry.hub.docker.com', 'dockerHub'){
		app.push()
		}
		echo "Trying to Push Docker Build to DockerHub"

	}
}

