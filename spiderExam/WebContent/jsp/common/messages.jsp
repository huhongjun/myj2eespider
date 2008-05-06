	<logic:messagesPresent>
	    <html:messages id="error">
	        <br/><span class="error"><bean:write name="error" filter="false"/></span>
	    </html:messages>
	</logic:messagesPresent>
	
	<logic:messagesPresent message="true">
	    <html:messages id="message" message="true">
	    	<br/><span class="message"><bean:write name="message" filter="false"/></span>
	    </html:messages>
	</logic:messagesPresent>
