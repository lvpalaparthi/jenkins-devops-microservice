node("any") {
	agent{dockerfile true}
	stage('Build') {
		echo "Build"
	}
	stage('Test') {
		sh 'node --version'
		echo "Test"
	}
}
