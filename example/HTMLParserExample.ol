include "console.iol"
include "../HTMLParser.iol"

interface TestInterface {
  RequestResponse: 
  	getData(void)(HTMLDocument)
}

inputPort testInputPort {
	Protocol: http
	Location: "socket://localhost:8000/"
	Interfaces: TestInterface
}

main
{
	getData()( res ) {
		parse@HTMLParser("<html><head><title>Test Site</title></head><body><h1>test</h1></body></html>")(res)
	}
}