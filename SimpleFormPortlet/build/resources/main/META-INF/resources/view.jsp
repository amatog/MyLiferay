<%@ include file="./init.jsp" %>
<portlet:actionURL name="myCandidateName" var="myCandidateUrl" />
<aui:form action="<%= myCandidateUrl %>" method="post" name="myForm">
        <aui:input name="myCandidateName" title="Name" type="text" />
        <aui:input name="submit" type="submit" value="Submit it!"/>
</aui:form>
