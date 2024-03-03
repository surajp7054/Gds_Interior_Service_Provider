<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="MyMassagebox.ascx.cs" Inherits="Gds_Interior_Service_Provider.UserControl.MyMassagebox" %>


<div class="col-12" runat="server" id="MyGdsMsgBox">
    <div class="callout callout-danger">
        <h5><i class="fas fa-info"></i>Note:</h5>
        <asp:Label ID="lblmsg" runat="server" Text="Current Record saved Successfully."></asp:Label>
    </div>
</div>