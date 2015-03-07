type HTMLElement:void {
	.name:string
	.value?:string
	.tag*:HTMLElement
}

type HTMLDocument:void {
	.head?:HTMLElement
	.body?:HTMLElement
}

type HTMLSelection:void {
	.html:string
	.selection:string
}

type HTMLSelectionResult:void {
	.element*:HTMLElement
}

interface XmlUtilsInterface{
RequestResponse:
	parse( string )(HTMLDocument),
	select(HTMLSelection)(HTMLSelectionResult)
}

outputPort HTMLParser {
	Interfaces: XmlUtilsInterface
}

embedded {
Java:
	"net.htmlparser.HTMLParser" in HTMLParser
}