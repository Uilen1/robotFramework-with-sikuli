node(){
    try{
        deleteDir()

        stage('Desktop tests'){
            echo "########################################\n" +
                 "#                                      #\n" +
                 "#          EVIDENCIA DE TESTES         #\n" +
                 "#                                      #\n" +
                 "########################################\n"
            
            git branch: 'master', url: 'https://github.com/Uilen1/robotFramework-with-sikuli.git'
            bat 'run.bat'
            echo "########################################\n" +
                 "#                                      #\n" +
                 "#            FIM DOS TESTES            #\n" +
                 "#                                      #\n" +
                 "########################################\n"

        }
        post{
            always {
                robot archiveDirName: 'robot-plugin', outputPath: '.', overwriteXAxisLabel: ''
            }
        }

    }
    catch(Exception e){
        throw e
    }

}
