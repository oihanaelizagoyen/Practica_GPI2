# Acccedemos a la carpeta del proyecto
cd ../MifareClassicTool/Mifare\ Classic\ Tool/
# Ejecutamos los test
./gradlew test 
# Mostramos la ruta en la que se guarda el log de pruebas
echo "El log de las pruebas se encuentra accesible en el siguiente directorio:"
echo "$PWD/app/build/reports/tests/testDebugUnitTest/index.html"
