function getElementsByClass(searchClass,node,tag) {

	var classElements = new Array();

	if ( node == null )

		node = document;

	if ( tag == null )

		tag = '*';

	var els = node.getElementsByTagName(tag);

	var elsLen = els.length;

	var pattern = new RegExp("(^|\\s)"+searchClass+"(\\s|$)");

	for (i = 0, j = 0; i < elsLen; i++) {

		if ( pattern.test(els[i].className) ) {

			classElements[j] = els[i];

			j++;

		}

	}

	return classElements;

}

function postIt(id)   {
        form = document.createElement('form');
        form.setAttribute('method', 'POST');
        form.setAttribute('action', '/teams/'+id+'/updateAlignment');
        
        var players = getElementsByClass("drag");
		for ( i=0;i<players.length;i++ ) {
   			myvar = document.createElement('input');
        	myvar.setAttribute('name', 'x-'+players[i].attributes.getNamedItem("name").value);
        	myvar.setAttribute('type', 'hidden');
        	myvar.setAttribute('value', players[i].style.left);
        	form.appendChild(myvar);
        	myvar = document.createElement('input');
        	myvar.setAttribute('name', 'y-'+players[i].attributes.getNamedItem("name").value);
        	myvar.setAttribute('type', 'hidden');
        	myvar.setAttribute('value', players[i].style.top);
        	form.appendChild(myvar);
        	myvar = document.createElement('input');
        	myvar.setAttribute('name', 'pos-'+players[i].attributes.getNamedItem("name").value);
        	myvar.setAttribute('type', 'hidden');
        	myvar.setAttribute('value', players[i].getElementsByTagName("select")[0].value);
        	form.appendChild(myvar);
        	
		}
        
       
        form.submit();   
}