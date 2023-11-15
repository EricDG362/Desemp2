<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario1.aspx.cs" Inherits="Desemp2.Formulario1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            E-mail<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage=" No completo este campo*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="No es un mail*" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"></asp:RegularExpressionValidator>
            <br />   <br />
            Usuario<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="No completo este campo*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />   <br />
            Edad<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Debe ser mayor de 15 años*" ForeColor="Red" MaximumValue="99" MinimumValue="16" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="No completo este campo*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />   <br />
            Contraseña<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="No completo este campo*" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />   <br />
            Repetir Contraseña<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="No completo este campo*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="La contraseña no coincide*" ForeColor="#CC0000"></asp:CompareValidator>
            <br />   <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Validar campos y cookies" OnClick="Button1_Click" />
            <br />
            <br />
            COOKIE: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            SESSION:
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="INGRESAR" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
