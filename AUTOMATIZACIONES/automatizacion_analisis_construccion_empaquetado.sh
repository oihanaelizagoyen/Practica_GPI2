# Acccedemos a la carpeta del proyecto
cd ../MifareClassicTool/Mifare\ Classic\ Tool/
# Realizamos un análisis de código estático y guardamos el resultado en un fichero
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd check -d . -R rulesets/java/quickstart.xml -f text > ../../ANALISIS_ESTATICO/analisis_MifareClassicTool
# Realizamos la compilación y el empaquetado para generar el entregable
sudo ./gradlew assembleDebug
#Movemos el entregable a la carpeta correspondiente de entregables
sudo cp ./app/build/outputs/apk/debug/app-debug.apk ../../ENTREGABLES/
