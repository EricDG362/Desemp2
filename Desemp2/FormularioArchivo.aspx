<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormularioArchivo.aspx.cs" Inherits="Desemp2.FormularioArchivo" %>

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
            Bienvenido 
            <asp:Label ID="Label1" runat="server" Text="NombreUsuario"></asp:Label>
            <br />
            <br />
            <br />

            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="True" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="AGREGAR" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="descargar" HeaderText="Seleccion" ShowHeader="True" Text="Descargar" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Formulario1.aspx">Volver</asp:HyperLink>
            <br />
            <br />
            <br /><br />
            <br />
            <br />
            <br />
            <br />





        </div>
    </form>
</body>
</html>
