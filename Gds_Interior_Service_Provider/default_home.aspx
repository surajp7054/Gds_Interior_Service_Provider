<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default_home.aspx.cs" Inherits="Gds_Interior_Service_Provider.WebForm1" %>
<%@ Register Src="~/UserControl/MyMassagebox.ascx" TagName="MyMassagebox" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/css/adminlte.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/all.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.min.css" rel="stylesheet" />
        <link href="AdminLTE-3.2.0/AdminLTE-3.2.0/plugins/fontawesome-free/css/fontawesome.css" rel="stylesheet" />
        <style>
            .main
            {
                  background-image: url('AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living Room/livingroom3.jpeg');
                  background-repeat: no-repeat;
                  background-size: cover;
                  background-position: center;
                  padding: 50px 0px;
            }
            .form-box
            {
    
                background-color:rgba(255,255,255,0.5);
                backdrop-filter:blur(20px);
                border-radius:20px;
                border:1px solid white;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
       <!-- Start Registration for Enquiry-->
       <section class="main mb-3">
           <div class="container">
               <div class="row justify-content-center">
                   <div class="col-lg-7 col-md-12 d-flex align-items-center">
                       <div class="text text-center">
                           <h1 class="text-light ">Dream homes begin with dream designs</h1>
                           <h2 class="text-light ">Give Your Dream To New Life</h2>
                       </div>
                   </div>
                   <div class="col-lg-5 col-md-10 col-sm-12">
                       <div class="form-box px-5 py-2">
                           <div  method="Post">
                               <h2>Live Beautifully</h2>
                               <uc:MyMassagebox ID="MyGdsMsgBox" runat="server" visible="false"></uc:MyMassagebox>
                               <div class="form-group">
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtfirstname" placeholder="First Name" onkeypress="return  isAlphabet(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtlastname" placeholder="Last Name" onkeypress="return  isAlphabet(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">
                                     <asp:TextBox runat="server" CssClass="form-control" ID="txtemail" placeholder=" Enter Your Email ID" ></asp:TextBox>
                               </div>
                               <div class="form-group">
                                   <asp:TextBox runat="server" CssClass="form-control" ID="txtcontno" placeholder="Phone Number" onkeypress="return isNumberkey(event)"></asp:TextBox>
                               </div>
                               <div class="form-group">                          
                                     <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtaddress" placeholder="Address With Pincode"></asp:TextBox>
                               </div>
                               <div class="form-group">
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
       <!-- End  Registration for Enquiry-->

       <!-- Start Why Choose GDS interior Service-->
       <div class=" mb-2 bg-warning ">
           <h3 class="text-light text-center py-2">Why Choose GDS interior Service</h3>
           <p class="text-center text-light">A love of creativity / a commitment to quality / a willingness to listen to their clients 
            /and a desire to keep up with short-term trends in interior design and interior decorating. </p>
            <div class="card mb-3">
                <div class="row g-0">
                    <div class="col-md-2  py-2 ">
                         <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/create%20us.jpg"  class="img-fluid rounded-circle" alt="image not found"/>
                    </div>
                    <div class="col-md-4  py-2">
                        <div class="card-body">
                            <h4 class="card-title text-bold ">1. Well- Considered Design</h4><br />
                            <p>Combining extensive knowledge and experience makes our team uniquely qualified to create innovative and stylish solutions for your home, 
                            workplace or holiday rental.</p>
                        </div>
                    </div>
                    <div class="col-md-2  py-2">
                         <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/createhome.png"class="img-fluid rounded-circle" alt="image not found"/>
                    </div>
                    <div class="col-md-4  py-2">
                        <div class="card-body">
                        <h4 class="card-title text-bold">2. We create for you</h4><br />
                        <p>We listen to our clients and create a personalised design solution that is tailored to you.
                            We want you to love the end result and will work with you to ensure you are more than happy with the outcome.</p>
                        </div>
                    </div>
                    <div class="col-md-2 mt-3 py-2">
                         <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/investimg.png"  class="img-fluid rounded-start" alt="image not found" />
                    </div>
                    <div class="col-md-4 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-bold">3.Value For your Investment</h4><br />
                            <p>The experience of an Interior Designer will help you avoid financial disappointment and end up with a project that will delight you,
                            not only because of the knowledge we have, but because of the suppliers and trades we use to provide our clients with the greatest value. </p>
                        </div>
                    </div>
                    <div class="col-md-2 p-2">
                       <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Seamless%20solutions1.jpg"class="img-fluid rounded-circle" alt="image not found"/>
                    </div>
                    <div class="col-md-4 py-2">
                        <div class="card-body">
                            <h4 class="card-title text-bold"> 4.Seamless solution</h4><br />
                            <p>A seamless process of design, construction,
                            and decoration is ensured through our creative team's seamless management of your project from start to finish. </p>
                        </div>
                    </div>
                </div>
            </div>
       </div>
       <!--End Why Choose GDS interior Service-->

        <div class="bg-gradient-olive">
          <div class="container mb-5 mt-5">
            <section class="row">
                <div class="col-md-3">
                   <article class="p-2">
                    <dl>
                        <dd>
                           <h3 class="text-bold"> 500+</h3>
                        </dd>
                        <dd>
                           <h5> Happy Customer</h5>
                        </dd>
                    </dl>
                   </article>
                </div>
                <div class="col-md-3">
                  <article class="p-2">
                    <dl>
                        <dd>
                          <h3 class="text-bold"> 15+</h3>
                        </dd>
                        <dd>
                           <h5> citites</h5>
                        </dd>
                    </dl>
                  </article>
                </div>
                <div class="col-md-3">
                 <article class="p-2">
                    <dl>
                        <dd>
                           <h3 class="text-bold">300+</h3>
                        </dd>
                        <dd>
                          <h5> Expert Design</h5>
                        </dd>
                    </dl>
                </article>
                </div>
                <div class="col-md-3">
                 <article class="p-2">
                    <dl>
                        <dd>
                           <h3 class="text-bold"> 500+</h3>
                        </dd>
                        <dd>
                          <h5>  Project Completed</h5>
                        </dd>
                    </dl>
                </article>
                </div>
           </section>
        </div>
        </div>

        <!--Start Design Process-->
        <div class="container mb-1">
        <h1 class="text-center "> We Follow a Step-by-Step Process for Design</h1>
        <p>
            Your home is all about you.  It should reflect who you are and what you love. 
            Creating a space that reflects your personality and makes you feel comfortable and content is essential for making your home a place you love.
            In the first call, we seek to understand your expectations for a living space and what you are looking for.      
            With our help, you can create a home that is truly unique to you.
            </p>  
            <div class="card-deck">  
            <div class="col-md-12">
                <div class="row">
                    <div class="card col-md-3 m-2">
                        <img class="card-img-top" src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/understandingpic.jpeg" alt="image not found" />
                        <div class="card-body">
                            <h4 class="card-title text-bold"> 1st Recognizing Your Needs </h4><br />
                            <p class="card-text">
                                The needs and preferences you have, both functionally and aesthetically, 
                                will be carefully considered by our team.
                            </p>
                        </div>
                    </div>
                    <div class="card col-md-3 m-2">                
                        <img  class="card-img-top" alt="cardimgehome"src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/download.png" />
                        <div class="card-body">
                            <h4 class="card-title text-bold">2nd We look forward to designing your future home together</h4><br/>
                            <p class="card-text">
                                Our interior designer will create a special layout for your home and present it to you in three dimensions.
                            </p>
                        </div>
                    </div>
                    <div class="card col-md-3 m-2">
                        <img class="card-img-top" alt="Card image cap" src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/costoptmazation.jpeg" />
                        <div class="card-body">
                            <h4 class="card-title text-bold">3rd Planning and managing costs </h4><br />
                            <p class="card-text">
                                We will work with you to create a plan that meets both your needs and your budget.
                                We will provide you with detailed estimates of costs and timelines.
                            </p>
                        </div>
                    </div>
                    <div class="card col-md-3 m-2">
                        <img class="card-img-top" alt="image not found" src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/handover.jpg"/>
                        <div class="card-body">
                            <h4 class="card-title text-bold"> 4th Site handover and warranty</h4><br />
                            <p class="card-text">
                                That moment is special for you and us. We take pride in our work and strive to create homes that you can be proud of. 
                                We look forward to hearing about your future experiences in your new home.
                            </p>
                        </div>
                    </div>
                </div>        
            </div>
            </div>
        </div>
        <!--End Design Process-->

         <!-- Star Book Apointment Content-->
        <div class="bg-secondary mb-1 py-2 px-2">
            <div class="container">
                    <h3 class="text-center text-light">From modern to classic, make your dream home a reality. </h3>
                    <div class="mt-3">
                        <p class="text-center text-light">
                    GDS interior services are tailored to meet the highest standards of quality and design.
                    We use modern materials and innovative techniques and products to ensure that your home has the perfect combination of beauty, functionality, and durability.
                        </p>
                    </div>
                    <div class="text-center" >
                         <asp:button runat="server" ID="btnbookfreeconsult" type="button" class="btn btn-danger" Text="BOOK FREE CONSULTATION" OnClick="btnbookfreeconsult_Click"/>
                    </div>
            </div>
        </div>
     <!--End Book Appoinment Content-->

        <!-- What We Offer-->
        <div class="my-2">
             <div class="container">
                <h3 class="py-3 text-center">What We Offer</h3>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title text-center">
                                    <i>
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/homeservice%20icon.png" />
                                    </i>Our Services</h4>
                            </div>
                            <div class="card-body  ">
                                <ol class="list-group list-group-numbered">
                                    <li class="list-group-item">Modular Kitchen</li>
                                    <li class="list-group-item">Furniture Work</li>
                                    <li class="list-group-item">Lighting</li>
                                    <li class="list-group-item">Flooring</li>
                                    <li class="list-group-item">Electrical work</li>
                                    <li class="list-group-item">Civil Work</li>
                                    <li class="list-group-item">False Ceiling</li>
                                    <li class="list-group-item">Wall Designing & Painting </li>                              
                                </ol>                       
                            </div> 
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">                          
                            <div class="card-header">
                                <h4 class="card-title text-center">
                                    <i>
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Warranty.png" style="width:53px;" />
                                    </i>Warranty
                                </h4>
                            </div>
                            <div class=" card-body">
                                <ol class="list-group list-group-numbered">
                                    <li class="list-group-item">Our  products like bed, wardrobe, study table etc. come with a warranty of 10 years  - enjoy peace of mind</li>
                                    <li class="list-group-item">The warranty covers any on-site work performed by the contractor, including painting, electrical work, plumbing work, and more. </li>
                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title text-center">
                                    <i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/benefits.jpg" style="width:53px;" /></i>Price Benefits
                                </h4>
                            </div>
                            <div class=" card-body">
                                <ol class="list-group list-group-numbered">
                                    <li class="list-group-item">
                                            Price-match guarantee - Best price match against a branded competitor's quote for exact scope and specifications.
                                    </li>
                                    <li class="list-group-item">We do not charge hidden fees - We have transparent pricing without tacked-ons at the last minute </li>
                                    <li class="list-group-item">Anticipate the real needs of your prospects by comparing their requirements to past transactions with their peers.</li>
                                </ol>
                            </div>
                        </div>                                    
                    </div>
                </div>
            </div>
         </div>
        <!--/What We Offer-->

        <div class="mb-1 py-2 px-2 bg-gradient-maroon">
            <div class="container">
                <h3 class="text-center text-light"> Some Site Photo With Room Wise</h3>
            </div>
        </div>
        <!-- Living And Kitchen Room Photos-->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                   <div class="card">
                     <div class="card-header">
                        <h1 class="card-title">Living Room Design</h1>
                    </div>
                     <div id="carouselExampleInterval" class="carousel slide" data-ride="carousel">
                          <div class="carousel-inner">             
                                <div class="carousel-item active" data-interval="10000">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom1.jpeg"  class="d-block w-100" alt="not found" style="height:60vh;">
                                    </div>      
                                </div>
                                <div class="carousel-item" data-interval="20000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom12.jpeg" class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                                <div class="carousel-item" data-interval="30000">
                                    <div class="card-body">
                                         <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom11.jpeg" class="d-block w-100"  style="height:60vh;"/>
                                    </div>           
                                </div>
                                <div class="carousel-item" data-interval="40000">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom4.jpeg" class="d-block w-100" style="height:60vh;" alt="..."/>
                                    </div>                      
                                </div>
                                <div class="carousel-item" data-interval="50000">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom3.jpeg" class="d-block w-100" style="height:60vh;" alt="..."/>
                                    </div>                      
                                </div>
                                <div class="carousel-item" data-interval="60000">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom2.jpeg" class="d-block w-100" style="height:60vh;" alt="..."/>
                                    </div>                      
                                </div>
                                 <div class="carousel-item" data-interval="70000">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom5.jpeg" class="d-block w-100"style="height:60vh;" alt="..."/>
                                    </div>                      
                                </div>
                                <div class="carousel-item">
                                    <div class="card-body">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom6.jpeg" class="d-block w-100"  style="height:60vh;"alt="..."/>
                                    </div>                      
                                </div>
                            </div>            
                          <a class="carousel-control-prev" href="#carouselExampleInterval" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                          </a>
                          <a class="carousel-control-next" href="#carouselExampleInterval" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                          </a>
                     </div>
                  </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title">Modular Kitchen Design</h1>
                        </div>
                        <div id="kitchroomslide" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                 <div class="carousel-item active" data-interval="10000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Kitchen/Kitchen2.jpeg"  class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                                <div class="carousel-item" data-interval="20000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Kitchen/Kitchen3.jpeg" class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item" data-interval="30000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Kitchen/Kitchen4.jpeg" class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                            </div>
                             <a class="carousel-control-prev" href="#kitchroomslide" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="carousel-control-next" href="#kitchroomslide" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/Living and Kitchen Room Photos-->

        <!-- Bedroom And Bathroom Room Photos-->
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title">Bedroom Design Photos</h1>
                        </div>
                        <div id="bedromphts" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                               <div class="carousel-item active" data-interval="10000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bedroom/Bedroom3.jpeg"  class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item " data-interval="20000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bedroom/Bedroom5.jpeg"  class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item" data-interval="30000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bedroom/Bedroom10.jpeg"  class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item" data-interval="40000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bedroom/Bedroom12.jpeg"  class="d-block w-100" style="height:60vh;" alt="...">
                                    </div>                    
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#bedromphts" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="carousel-control-next" href="#bedromphts" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">
                            <h1 class="card-title">Bathroom Photos</h1>
                        </div>
                        <div id="bathroomphtos" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                 <div class="carousel-item active" data-interval="10000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bathroom/bathroom1.jpeg""  class="d-block" style="height:60vh; width:100%;" alt="...">
                                    </div>                    
                                </div>
                                <div class="carousel-item " data-interval="20000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bathroom/bathroom2.jpeg"  class="d-block" style="height:60vh; width:100%;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item " data-interval="30000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bathroom/bathroom3.jpeg""  class="d-block" style="height:60vh; width:100%;" alt="...">
                                    </div>                    
                                </div>
                                 <div class="carousel-item " data-interval="40000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bathroom/bathroom4.jpeg""  class="d-block" style="height:60vh; width:100%;" alt="...">
                                    </div>                    
                                </div>
                               <div class="carousel-item " data-interval="50000">
                                    <div class="card-body">
                                          <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Bathroom/bathroom5.jpeg"  class="d-block" style="height:60vh; width:100%;" alt="...">
                                    </div>                    
                                </div>
                            </div>
                             <a class="carousel-control-prev" href="#bathroomphtos" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                              </a>
                              <a class="carousel-control-next" href="#bathroomphtos" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                              </a>
                         </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- /Bedroom and Bathroom Room Photos-->
        <!--Start Client Testmonial-->
        
        <div class="mb-1 py-2 px-2 bg-gradient-info">
            <div class="container">
                  <h3 class="text-center text-light py-3">Client Testmonials</h3>
            </div>
        </div>
        <div class="container ">
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel" style="background-repeat:no-repeat;">
                  <div class="carousel-inner">
                       <div class="carousel-item active">
                           <div class="row">
                               <div class="col-lg-4">
                                  <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/BHS_Auris_Serenity_0378.jpg"  class="card-img-top" alt="image not found" />
                                        <div class="card-body">
                                            <p class="card-text">"In our opinion, the most impressive factor of the project was the GDS interior service team's focus on finishing the product in the best way possible.
                                             I am very impressed with the quality of the wood work done so far.
                                            The team was very professional in their approach, and were approachable for discussions whenever needed."</p>
                                        <p class="card-text"><small class="text-muted">A luxurious home in Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Jayesh Shah  Family</h6>
                                        </div>
                                    </div>
                               </div>
                               <div class="col-lg-4">
                                    <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom2.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                            <p class="card-text">"Our experience with GDS interior services was enjoyable because of the experienced Project Managers. 
                                            The Work Got done before given Time  Just the way we wanted it to be."</p>
                                            <p class="card-text"><small class="text-muted"> A lovely Home In Mumbai</small></p>
                                            <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Mayank Shah  Family</h6>
                                        </div>
                                    </div>
                                </div>
                               <div class="col-lg-4">
                                     <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom5.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                        <p class="card-text">"With GDS interior Service, we got quality and everything was perfect, and that's what we needed. "</p>
                                        <p class="card-text"><small class="text-muted"> A Simple Yet Calming Home In Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Santosh Gupta & Mrs. Rita Gupta Family </h6>
                                        </div>
                                    </div>
                               </div>
                           </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                               <div class="col-lg-4">
                                  <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/BHS_Auris_Serenity_0378.jpg"  class="card-img-top" alt="image not found" />
                                        <div class="card-body">
                                            <p class="card-text">"In our opinion, the most impressive factor of the project was the GDS interior service team's focus on finishing the product in the best way possible.
                                             I am very impressed with the quality of the wood work done so far.
                                            The team was very professional in their approach, and were approachable for discussions whenever needed."</p>
                                        <p class="card-text"><small class="text-muted">A luxurious home in Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Jayesh Shah  Family</h6>
                                        </div>
                                    </div>
                               </div>
                               <div class="col-lg-4">
                                    <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom2.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                            <p class="card-text">"Our experience with GDS interior services was enjoyable because of the experienced Project Managers. 
                                            The Work Got done before given Time  Just the way we wanted it to be."</p>
                                            <p class="card-text"><small class="text-muted"> A lovely Home In Mumbai</small></p>
                                            <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Mayank Shah  Family</h6>
                                        </div>
                                    </div>
                                </div>
                               <div class="col-lg-4">
                                     <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom5.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                        <p class="card-text">"With GDS interior Service, we got quality and everything was perfect, and that's what we needed. "</p>
                                        <p class="card-text"><small class="text-muted"> A Simple Yet Calming Home In Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Santosh Gupta & Mrs. Rita Gupta Family </h6>
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                               <div class="col-lg-4">
                                  <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/BHS_Auris_Serenity_0378.jpg"  class="card-img-top" alt="image not found" />
                                        <div class="card-body">
                                            <p class="card-text">"In our opinion, the most impressive factor of the project was the GDS interior service team's focus on finishing the product in the best way possible.
                                             I am very impressed with the quality of the wood work done so far.
                                            The team was very professional in their approach, and were approachable for discussions whenever needed."</p>
                                        <p class="card-text"><small class="text-muted">A luxurious home in Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Jayesh Shah  Family</h6>
                                        </div>
                                    </div>
                               </div>
                               <div class="col-lg-4">
                                    <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom2.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                            <p class="card-text">"Our experience with GDS interior services was enjoyable because of the experienced Project Managers. 
                                            The Work Got done before given Time  Just the way we wanted it to be."</p>
                                            <p class="card-text"><small class="text-muted"> A lovely Home In Mumbai</small></p>
                                            <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Mayank Shah  Family</h6>
                                        </div>
                                    </div>
                                </div>
                               <div class="col-lg-4">
                                     <div class="card">
                                        <img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/Living%20Room/livingroom5.jpeg" class="card-img-top" alt="image not found"/>
                                        <div class="card-body">
                                        <p class="card-text">"With GDS interior Service, we got quality and everything was perfect, and that's what we needed. "</p>
                                        <p class="card-text"><small class="text-muted"> A Simple Yet Calming Home In Mumbai</small></p>
                                        <h6><i><img src="AdminLTE-3.2.0/AdminLTE-3.2.0/dist/img/client.png" /></i>Mr. Santosh Gupta & Mrs. Rita Gupta Family </h6>
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                  </div>
            </div>
                  
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
        <!--End thanks model on submit-->


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
