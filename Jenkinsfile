node {
	stage('build image'){
			dockerfile { 
				filename 'Dockerfile' 
			}
	}

	//dockerfile { filename 'Dockerfile' }
	stage('Build') {
		echo "Build"
	}
	stage('Test') {
		sh 'node --version'
		echo "Test"
	}
}
