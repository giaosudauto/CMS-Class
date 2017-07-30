<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CMS_Class._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <p>
        &nbsp;</p>
    <p>
        Danh sách học sinh</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="667px" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="Mã số sinh viên" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="NAME" HeaderText="Tên học sinh" SortExpression="NAME" />
                <asp:BoundField DataField="CLASS" HeaderText="Lớp học" SortExpression="CLASS" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Edit.aspx">Chỉnh sửa thông tin</asp:LinkButton>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OracleData %>" ProviderName="<%$ ConnectionStrings:OracleData.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
    </p>

</asp:Content>
