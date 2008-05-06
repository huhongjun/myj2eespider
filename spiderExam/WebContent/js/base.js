//Faz mouseover no displaytag :)
function highlightTableRows(tableId) {
    var previousClass = null;
    var table = document.getElementById(tableId);
    if (table == null)
    	return false;
    var tbody = table.getElementsByTagName("tbody")[0];
    var rows = tbody.getElementsByTagName("tr");
    
    // procura a primeira coluna que tenha link em todas as linhas
    for (i=0; i < rows.length; i++) {
        rows[i].onmouseover = function() { previousClass=this.className;this.className+=' over' };
        rows[i].onmouseout = function() { this.className=previousClass };
    	var cells = rows[i].getElementsByTagName("td");
    	
    	for (j=0; j < cells.length; j++) { //loop em todas as colunas dessa linha
    		if (cells[j].getElementsByTagName("a").length > 0) {
    			rows[i].onclick = function(evt) {   
  					//verifica se o click foi dado em uma TD			
  					var srcElement;
				  	if (evt && evt.target) {
				    	srcElement = evt.target;
				    	if (srcElement.nodeType == 3) {
				     		srcElement = srcElement.parentNode;
				    	}
				  	}
				  	else if (window.event) {
				   		srcElement = window.event.srcElement;
				  	}
				 	tagName = srcElement.tagName.toLowerCase();
				  	if (tagName != 'td') {return;}
    			    	
    			    //--se chegou aqui, ? porque clicou em uma TD, ent?o executa o link				
    				var link = this.getElementsByTagName("a")[0];
    			
    				if (link.onclick) { //olha se o link da a??o est? no onclick ou no href
    					 call=link.getAttribute("onclick");
               	     	 // this will not work for links with onclick handlers that return false
               	     	 eval(call);
               		} else {
               	    	 location.href = link.getAttribute("href");
              		}
              		this.style.cursor="wait";
    			} //if do onclick
    			
   				break; //achou o link, pula para a pr?xima linha
    		} //if
    	} //for
    } //for
}
