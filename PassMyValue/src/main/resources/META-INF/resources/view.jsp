<%@ include file="/init.jsp" %>



<%
String[] anArrayFromMyPortlet = (String[])renderRequest.getAttribute("my-array");
%>

<ul>
<% for (String string : anArrayFromMyPortlet) { %>
<li><%= string %></li>
<% } %>
</ul>