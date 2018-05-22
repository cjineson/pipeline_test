node("docker") {
    //docker.withRegistry('localhost:5000', '<<your-docker-registry-credentials-id>>') {
    docker.withRegistry('localhost:5000') {
    
        git url: "https://github.com/cjineson/pipeline_test.git", credentialsId: 'cjineson'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "pipeline_test"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}