<%@ include file="/init.jsp" %>
<portlet:actionURL name="myAction" var="myAction" />
<aui:form action="<%= myAction %>" method="post" name="myForm">
        <aui:input label="My Text Input" name="myTextInput" type="text" value='<%= "My Text Value" %>'>
        	<aui:validator name="required" />
        	<aui:validator errorMessage="Please enter how many fingers you have." name="required">Please write some text!</aui:validator>
		</aui:input>
        <aui:button type="submit" />
</aui:form>