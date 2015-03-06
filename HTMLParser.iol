type HTMLElement:void {
	.name:string
	.children*:HTMLElement
}

type HTMLDocument:void {
	.head?:HTMLElement
	.body?:HTMLElement
}

interface XmlUtilsInterface{
RequestResponse:
	parse( string )(HTMLDocument)
}

outputPort HTMLParser {
	Interfaces: XmlUtilsInterface
}

embedded {
Java:
	"net.htmlparser.HTMLParser" in HTMLParser
}