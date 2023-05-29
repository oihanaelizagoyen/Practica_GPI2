# Acccedemos a la carpeta del proyecto
cd ../easybuggy/
# Realizamos un análisis de código estático y guardamos el resultado en un fichero
/home/alumno/pmd-bin-7.0.0-rc2/bin/pmd check -d . -R rulesets/java/quickstart.xml -f text > ../ANALISIS_ESTATICO/analisis_easybuggy
# Realizamos la compilación y el empaquetado para generar el entregable
mvn clean compile
# Realizamos el empaquetado
mvn package
#Movemos el entregable a la carpeta correspondiente de entregables
cp ./target/ROOT.war ../ENTREGABLES/
