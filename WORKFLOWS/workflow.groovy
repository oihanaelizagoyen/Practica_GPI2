pipeline {
    agent any 
    
    stages {
        stage("Testing") {
            steps{
                sh'''
                cd /home/alumno/Practica_GPI2/AUTOMATIZACIONES/
                sudo ./MCT_automatizacion_ejecucion_tests.sh
                '''
            }
        }
        stage("AnalizandoCompilandoEmpaquetando") {
            parallel{
                stage("AnalisisComlacionEmpaquetado Mifare Classic Tool"){
                    steps{
                        sh'''
                        cd /home/alumno/Practica_GPI2/AUTOMATIZACIONES/
                        sudo ./MCT_automatizacion_analisis_construccion_empaquetado.sh
                        '''
                    }
                }
                stage("AnalisisComlacionEmpaquetado easybuggy"){
                    steps{
                        sh'''
                        cd /home/alumno/Practica_GPI2/AUTOMATIZACIONES/
                        sudo ./eb_automatizacion_analisis_construccion_empaquetado.sh
                        '''
                    }
                }
            }
        }
    }
}
