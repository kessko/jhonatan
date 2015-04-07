<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.GuestRequests>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Thanks</title>
</head>
<body>
<div> <h1>Thank you, <%=@Model.Name %> </h1>
</div>
<% if (@Model.WillAttend == true)
   {
     
       %> <h3>It's great that you're coming. The drinks are already in the fridge!</h3>
       <%
   }
   else
   {
       %>
      <h3> Sorry to hear that you can't make it, but thanks for letting us know. </h3>
       <%
   }
%>
  
</body>
</html>
