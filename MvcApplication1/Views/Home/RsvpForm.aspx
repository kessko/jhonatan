<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<MvcApplication1.Models.GuestRequests>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RsvpForm</title>
</head>
<body>
    <%
        using (Html.BeginForm())
        {
            @Html.ValidationSummary();
    %>
    <p>
        Your name:
        <%=@Html.TextBoxFor(x => x.Name)%>
    </p>
    <p>
        Your Email:
        <%=@Html.TextBoxFor(x=>x.Email) %>
    </p>
    <p>
        Your phone:
        <%=@Html.TextBoxFor(x=>x.Phone) %>
    </p>
    <p>
        Will you attend?
        <%=@Html.DropDownListFor(x=>x.WillAttend, new [] {new SelectListItem(){Text = "Yes, i will be there", Value = bool.TrueString},
    new SelectListItem(){Text = "No, i can't come", Value = bool.FalseString}},"Choose an options")  %>
    </p>
    <input type="submit" value="Submit RSVP" />
    <%     }  %>
</body>
</html>
