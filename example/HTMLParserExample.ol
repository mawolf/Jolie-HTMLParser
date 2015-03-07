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
		parse@HTMLParser("<html><head><title>test title</title></head><body><h1>headline</h1></body></html>")(res)
	}
}