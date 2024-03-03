<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Infrm_term_condition.aspx.cs" Inherits="Gds_Interior_Service_Provider.Infrm_term_condition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/css/adminlte.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <div class="container">
        <h1>Term and Conditons</h1>
         <p>These Terms and Conditions ("Terms") govern the use of interior design services ("Services") provided by GDS Enterprises ("Company") to the client ("Client"). 
                         By engaging our Services, the Client agrees to abide by these Terms.</p>
         <div>
             <h4>1. Scope of Services</h4>
             <ul>
                 <li>
                     <p> The Company agrees to provide interior design services as outlined in the agreement between the Client and the Company.</p>
                 </li>
                 <li>
                     <p>Services may include consultation, design conceptualization, space planning, material selection, procurement assistance, project management,
                         and other related tasks as mutually agreed upon.</p>
                 </li>
             </ul>
             <h4>2. Fees and Payment</h4>
             <ul>
                 <li>
                     <p>The Client agrees to pay the Company the fees as specified in the agreement</p>
                 </li>
                 <li>
                     <p>Payment terms and schedules will be outlined in the agreement.</p>
                 </li>
                 <li>
                     <p>Additional expenses incurred during the project (e.g., materials, furniture, labor) will be borne by the Client unless otherwise agreed upon.</p>
                 </li>
             </ul>
             <h4>3. Project Timeline</h4>
             <ul>
                 <li>
                     <p>The Company will make reasonable efforts to adhere to project timelines agreed upon with the Client.</p>
                 </li>
                 <li>
                     <p>Delays caused by factors beyond the Company's control may affect project timelines, and the Company shall not be held liable for such delays.</p>
                 </li>
             </ul>
             <h4>4. Client Responsibilities</h4>
             <ul>
                 <li>
                     <p>The Client agrees to provide timely access to the property and any necessary information required for the completion of the project.</p>
                 </li>
                 <li>
                     <p>
                         The Client will promptly respond to communications from the Company and provide access to the property as necessary for the completion of the project
                     </p>
                 </li>
             </ul>
             <h4>5.  Changes and Revisions</h4>
             <ul>
                 <li>
                     <p>Changes or revisions to the project scope must be agreed upon in writing by both parties.</p>
                 </li>
                 <li>
                     <p>
                         Additional fees may apply for changes requested by the Client that are outside the scope of the original agreement.
                     </p>
                 </li>
             </ul>
             <h4>6.  Ownership and Rights</h4>
             <ul>
                 <li><p>
                     The Company retains ownership of all design concepts, drawings, and other intellectual property created during the project.
                     </p>
                 </li>
                 <li>
                     <p>Upon full payment of fees, the Client will have the right to use the final design for the specified property.</p>
                 </li>
             </ul>
             <h4>7. Limitation of Liability </h4>
             <ul>
                <li>
                    <p>The Company shall not be liable for any indirect, incidental, or consequential damages arising from the provision of services.</p>
                </li>
                 <li>
                     <p>The Client agrees to indemnify and hold the Company harmless from any claims or liabilities related to the use of the design or services provided.</p>
                 </li>
             </ul> 
             <h4>8. Termination</h4>
             <ul>
                 <li>
                     <p>Either party may terminate the agreement with written notice if the other party breaches any material term of the agreement.</p>
                 </li>
                 <li>
                     <p>Upon termination, the Client agrees to compensate the Company for any services provided up to the termination date.</p>
                 </li>
             </ul>
             
             <h6>By engaging our services, the Client acknowledges that they have read, understood, and agreed to these Terms and Conditions. These Terms may be updated by the Company as needed, and the Client will be notified of any changes</h6>
         </div>
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
</asp:Content>
