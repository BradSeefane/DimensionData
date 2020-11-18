<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpData.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-top: 132px;
        }
        .auto-style2 {
            margin-left: 10px;
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 25px;
            margin-top: 0px;
        }
        .auto-style6 {
            margin-left: 39px;
        }
        .auto-style7 {
            margin-left: 59px;
        }
        .auto-style8 {
            margin-left: 22px;
        }
        .auto-style9 {
            margin-left: 894px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="txtbxHome" runat="server" CssClass="auto-style2" Height="27px" OnClick="txtbxHome_Click" Text="Home" Width="71px" />
            <asp:Button ID="btnLogOT" runat="server" CssClass="auto-style9" OnClick="btnLogOT_Click" Text="Log Out" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnCreate" runat="server" CssClass="auto-style3" Enabled="False" OnClick="btnCreate_Click" Text="Create" Width="58px" />
            <br />
            <br />
            <asp:Button ID="btnModify" runat="server" Enabled="False" Text="Modify" OnClick="btnModify_Click" CssClass="auto-style8" />
            <br />
            <br />
            Employee Email<asp:TextBox ID="txtbxEmail" runat="server" CssClass="auto-style6"></asp:TextBox>
            <asp:Button ID="btnDelete" runat="server" Enabled="False" Text="Delete" CssClass="auto-style7" OnClick="btnDelete_Click" />
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style1" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Attrition" HeaderText="Attrition" SortExpression="Attrition" />
                <asp:BoundField DataField="BusinessTravel" HeaderText="BusinessTravel" SortExpression="BusinessTravel" />
                <asp:BoundField DataField="DailyRate" HeaderText="DailyRate" SortExpression="DailyRate" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="DistanceFromHome" HeaderText="DistanceFromHome" SortExpression="DistanceFromHome" />
                <asp:BoundField DataField="Education" HeaderText="Education" SortExpression="Education" />
                <asp:BoundField DataField="EducationField" HeaderText="EducationField" SortExpression="EducationField" />
                <asp:BoundField DataField="EmployeeCount" HeaderText="EmployeeCount" SortExpression="EmployeeCount" />
                <asp:BoundField DataField="EmployeeNumber" HeaderText="EmployeeNumber" SortExpression="EmployeeNumber" />
                <asp:BoundField DataField="EnvironmentSatisfaction" HeaderText="EnvironmentSatisfaction" SortExpression="EnvironmentSatisfaction" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="HourlyRate" HeaderText="HourlyRate" SortExpression="HourlyRate" />
                <asp:BoundField DataField="JobInvolvement" HeaderText="JobInvolvement" SortExpression="JobInvolvement" />
                <asp:BoundField DataField="JobLevel" HeaderText="JobLevel" SortExpression="JobLevel" />
                <asp:BoundField DataField="JobRole" HeaderText="JobRole" SortExpression="JobRole" />
                <asp:BoundField DataField="JobSatisfaction" HeaderText="JobSatisfaction" SortExpression="JobSatisfaction" />
                <asp:BoundField DataField="MaritalStatus" HeaderText="MaritalStatus" SortExpression="MaritalStatus" />
                <asp:BoundField DataField="MonthlyIncome" HeaderText="MonthlyIncome" SortExpression="MonthlyIncome" />
                <asp:BoundField DataField="MonthlyRate" HeaderText="MonthlyRate" SortExpression="MonthlyRate" />
                <asp:BoundField DataField="NumCompaniesWorked" HeaderText="NumCompaniesWorked" SortExpression="NumCompaniesWorked" />
                <asp:CheckBoxField DataField="Over18" HeaderText="Over18" SortExpression="Over18" />
                <asp:CheckBoxField DataField="OverTime" HeaderText="OverTime" SortExpression="OverTime" />
                <asp:BoundField DataField="PercentSalaryHike" HeaderText="PercentSalaryHike" SortExpression="PercentSalaryHike" />
                <asp:BoundField DataField="PerformanceRating" HeaderText="PerformanceRating" SortExpression="PerformanceRating" />
                <asp:BoundField DataField="RelationshipSatisfaction" HeaderText="RelationshipSatisfaction" SortExpression="RelationshipSatisfaction" />
                <asp:BoundField DataField="StandardHours" HeaderText="StandardHours" SortExpression="StandardHours" />
                <asp:BoundField DataField="StockOptionLevel" HeaderText="StockOptionLevel" SortExpression="StockOptionLevel" />
                <asp:BoundField DataField="TotalWorkingYears" HeaderText="TotalWorkingYears" SortExpression="TotalWorkingYears" />
                <asp:BoundField DataField="TrainingTimesLastYear" HeaderText="TrainingTimesLastYear" SortExpression="TrainingTimesLastYear" />
                <asp:BoundField DataField="WorkLifeBalance" HeaderText="WorkLifeBalance" SortExpression="WorkLifeBalance" />
                <asp:BoundField DataField="YearsAtCompany" HeaderText="YearsAtCompany" SortExpression="YearsAtCompany" />
                <asp:BoundField DataField="YearsInCurrentRole" HeaderText="YearsInCurrentRole" SortExpression="YearsInCurrentRole" />
                <asp:BoundField DataField="YearsSinceLastPromotion" HeaderText="YearsSinceLastPromotion" SortExpression="YearsSinceLastPromotion" />
                <asp:BoundField DataField="YearsWithCurrManager" HeaderText="YearsWithCurrManager" SortExpression="YearsWithCurrManager" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [Employee]"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
