<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="CMS_Class.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Height="180px" Width="668px" AllowPaging="True" AllowSorting="True"
        
        >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="Số thứ tự" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="NAME" HeaderText="Tên học sinh" SortExpression="NAME" />
            <asp:BoundField DataField="CLASS" HeaderText="Lớp học" SortExpression="CLASS" />
            <asp:CommandField ButtonType="Button" HeaderText="Chỉnh sửa" ShowEditButton="True" ShowHeader="True" EditText="Thay đổi" />
            <asp:CommandField ButtonType="Button" HeaderText="Đuổi học" ShowDeleteButton="True" ShowHeader="True" CancelText="Hủy lệnh" DeleteText="Đuổi học" EditText="Chỉnh sửa" InsertText="Thêm học sinh" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OracleData %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;ID&quot; = :original_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;CLASS&quot; = :original_CLASS) OR (&quot;CLASS&quot; IS NULL AND :original_CLASS IS NULL))" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;ID&quot;, &quot;NAME&quot;, &quot;CLASS&quot;) VALUES (:ID, :NAME, :CLASS)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:OracleData.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;NAME&quot; = :NAME, &quot;CLASS&quot; = :CLASS WHERE &quot;ID&quot; = :original_ID AND ((&quot;NAME&quot; = :original_NAME) OR (&quot;NAME&quot; IS NULL AND :original_NAME IS NULL)) AND ((&quot;CLASS&quot; = :original_CLASS) OR (&quot;CLASS&quot; IS NULL AND :original_CLASS IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_CLASS" Type="Decimal" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="IDTextbox" DefaultValue="5" Name="ID" PropertyName="Text" />
            <asp:ControlParameter ControlID="StudentName" DefaultValue="Tên học sinh" Name="NAME" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ClassName" DefaultValue="10" Name="CLASS" PropertyName="Text" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NAME" Type="String" />
            <asp:Parameter Name="CLASS" Type="Decimal" />
            <asp:Parameter Name="original_ID" Type="Decimal" />
            <asp:Parameter Name="original_NAME" Type="String" />
            <asp:Parameter Name="original_CLASS" Type="Decimal" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label2" runat="server" Text="Thêm học sinh"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" Text="Mã số sinh viên"></asp:Label>
    <asp:TextBox ID="IDTextbox" runat="server"></asp:TextBox>
    <br />
    Tên học sinh:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="StudentName" runat="server"></asp:TextBox>
    <br />
    Lớp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="ClassName" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Thêm học sinh" Width="191px" OnClick="Button1_Click"/>
</asp:Content>
