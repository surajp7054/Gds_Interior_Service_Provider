<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frm_Getfreequote.aspx.cs" Inherits="Gds_Interior_Service_Provider.frm_Getfreequote" %>
<%@ Register Src="~/UserControl/MyMassagebox.ascx" TagName="MyMassagebox" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/css/adminlte.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.css" rel="stylesheet" />
</asp:Content>
<%--<asp:Content ID="Content2" ContentPlaceHolderID="Contentpalceholderheader" runat="server">
</asp:Content>--%>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="main mb-3">
           <div class="container">
               <div class="row justify-content-center">
                   <div class="col-lg-7 col-md-12 d-flex align-items-center">
                       <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/contctimg.jpg" class="w-100 p-5"/>
                   </div>
                   <div class="col-lg-5 col-md-10 col-sm-12">
                       <div class="form-box mt-5">
                           <div >
                               <h2>Live Beautifully</h2>
                               <uc:MyMassagebox ID="MyGdsMsgBox" runat="server" visible="false"></uc:MyMassagebox>
                               <div class="form-group">
                                     <%-- <span id="errorfirstname" class="text-danger mt-1">*Please Provide the Valid First Name</span>--%>
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtfirstname" placeholder="First Name" onkeypress="return  isAlphabet(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                     <%--<span id="errorlastname" class="text-danger mt-1 ">*Please Provide the Valid Last Name</span>--%>
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtlastname" placeholder="Last Name" onkeypress="return  isAlphabet(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                   <%-- <span id="erroremaiid" class="text-danger mt-1 ">*Please Provide the Valid Email-ID</span>--%>

                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtemail" placeholder=" Enter Your Email ID"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                   <%--  <span id="errorcontactno" class="text-danger mt-1 ">*Please Provide the Valid Contact No</span>--%>
                                   <asp:TextBox runat="server" CssClass="form-control" ID="txtcontno" placeholder="Phone Number" onkeypress="return isNumberkey(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">                          
                                     <%--<span id="erroraddress" class="text-danger mt-1 ">*Please Provide the Valid Address With Pincode</span>--%>

                                     <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtaddress" placeholder="Address With Pincode"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                 <%-- <span id="errorflattype" class="text-danger ">Please Select the Valid Flat type</span>--%>
                                   <asp:DropDownList runat="server" CssClass="form-control" ID="ddlflattype">
                                       <asp:ListItem  Value="0">Select Type</asp:ListItem>
                                       <asp:ListItem Value="1 RK">1 RK</asp:ListItem>
                                       <asp:ListItem Value="1 BHK">1 BHK</asp:ListItem>
                                       <asp:ListItem Value="2 BHK">2 BHK</asp:ListItem>
                                       <asp:ListItem Value="3 BHK">3 BHK</asp:ListItem>
                                       <asp:ListItem Value="4 BHK">4 BHK</asp:ListItem>
                                       <asp:ListItem Value="5 BHK">5 BHK</asp:ListItem>
                                       <asp:ListItem Value="office">office</asp:ListItem>
                                   </asp:DropDownList>
                               </div>                          
                               <div class="form-group form-check mb-3">
                                   <span id="errortermcondition" class="text-danger mb-3 d-none">*Please check the box </span>
                                   <input type="checkbox" name=""  class="form-check-input" id="agree" checked/>
                                   <label class="form-check-label"><small>By submitting this form, you agree to <a href="Infrm_term_condition.aspx"><b> terms & conditions</b></a></small></label>                        
                               </div>   
                               <asp:Button ID="btngetquotesubmit" runat="server" CssClass="btn btn-danger form-control" Text="Get Free Quote" OnClick="btngetquotesubmit_Click"/>
<%--                            <button class="btn btn-danger text-light form-control"  id="" type="button" onclick="submitformdata()"> Get Free Quote</button>--%>
                           </div>
                       </div>
                   </div>
               </div>
           </div>
       </section>   
    <div class="modal fade" id="modalmessage">
            <div class="modal-dialog">
                <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title"> 
                    Default Modal</h4>
                </div> 
                <div class="modal-body">
                    <p> One fine body&hellip;</p> 
                </div> 
                <div class="modal-footer justify-content-between"> 
                    <button type="button" class="btn btn-danger btnmsgclose" data-dismiss="modal"> Close</button>
                    <button type="button" class="btn btn-primary btnmsgok"> Ok</button> </div>
                </div>
                <!-- /.modal-content --> 
            </div> 
                <!-- /.modal-dialog --> 
      </div>

      <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/jquery/jquery.min.js")%>'></script>

                 <!-- Bootstrap 4 -->

        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.bundle.min.js")%>'></script>
                <!-- AdminLTE App -->
        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/dist/js/adminlte.min.js")%>'></script>
    
        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/toastr/toastr.min.js") %>'></script>

        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/dist/js/adminlte.js") %>'></script>
        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.js")%>'></script>
        <script src='<%=ResolveClientUrl("AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/bootstrap/js/bootstrap.min.js")%>'></script>
        
        <script type="text/javascript">
            function isNumberkey(evt)
            {

                var charcode = (evt.which) ? evt.which : event.keyCode
                if (charcode > 31 && (charcode < 48 || charcode > 57)) {
                    return false;
                }
                else {
                    return true;
                }
            }
            function isAlphabet(evt) {

                var charcode = (evt.which) ? evt.which : event.keyCode
                if (charcode > 31 && (charcode < 65 || charcode > 90) && (charcode < 97 || charcode > 122))
                {
                    return false;
                }
                else {
                    return true;
                }
            }

            function showMessage(title, body, url, target = 'NA') {
                $("#modalmessage .modal-title").html(title);
                $("#modalmessage .modal-body").html(body);
                if (url != '') {
                    $('.btnmsgclose').hide();
                    $('.btnmsgok').on('click', function (event) {
                        event.preventDefault();
                        if (target != "NA") {
                            alert(target); window.open(url, target);
                        }
                        else { location.replace(url); }
                    });
                }
                else {
                    $(".btnmsgok").hide();
                }
                $('#modalmessage').modal({ backdrop: 'static' });
            }

            function showToastMsg(msg, type) {
                if (type == "info") {
                    toastr.info(msg);
                }
                if (type == "success") {
                    toastr.success(msg);
                }
                if (type == "error") {
                    toastr.error(msg);
                }
                if (type == "warning") {
                    toastr.warning(msg);
                }
            }
        </script>

</asp:Content>
