﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ai-chat.aspx.cs" Inherits="QuickAI.ai_chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Al Chat</title>  
    <link href="IndexPage.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/ai-chat.js"></script>
</head>
<body>
     <form id="aiChat" runat="server">
         <div class="headerBar">
             <%-- Header starts here --%>
             <div>
                 <a class="navbar-brand" href="Index.aspx">
                     <img src="Images/1149945428.png" id="websiteLogo" />
                 </a>
             </div>
             <div>
                 <a href="#" class="sandwich-link" data-toggle="collapse" id="btnToggle">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </a>
             </div>
             <div>
                 <asp:TextBox ID="viewImage" Style="display: none;" runat="server" value=""></asp:TextBox>
             </div>
             <div>
                 <%-- User Drop Down Button --%>
                 <div class="dropdown show">
                     <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="userDropDownList" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                         <asp:Image runat="server" ID="Image1" src="Images/Image%20ICON.png" Style="height: 30px;" onmouseover="viewText()" onmouseout="hideText()" alt="" class="hover-text" />
                     </a>
                     <div class="dropdown-menu" aria-labelledby="userDropDownList">
                         <a class="dropdown-item" href="dashboard.aspx">Dashboard</a>
                         <a class="dropdown-item" href="ai-templates/Ai-templates.aspx">Templates</a>
                         <a class="dropdown-item" href="ai-images.aspx">AI Images</a>
                         <a class="dropdown-item" href="ai-chat.aspx">AI Chat</a>
                         <a class="dropdown-item" href="speechToText.aspx">Speech to Text</a>
                         <a class="dropdown-item" href="ai-code.aspx">AI Code</a>
                         <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                         <a class="dropdown-item" href="membership/membership.aspx">Membership</a>
                         <a class="dropdown-item" href="accountSetting.aspx">Account Setting</a>
                         <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                     </div>
                 </div>
             </div>
             <div>
                 <%-- Header Language Selection --%>
                 <div class="dropdown">
                     <asp:Button runat="server" class="btn btn-secondary btn-primary btn-lg dropdown-toggle" type="button" ID="Button2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                         Text="en" />
                     <div class="dropdown-menu" aria-labelledby="Lang">
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="English" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Hindi" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Odia" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                         <asp:Button runat="server" class="dropdown-item" type="button" Text="Tamil" />
                     </div>
                 </div>
             </div>
             <%-- Header End Here --%>
         </div>
         <%-- AiImages Body --%>
         <%-- Body designed --%>
         <div id="aIBody" style="padding-top: 65px;">
             <div class="row">
                 <!-- Left Side Lists -->
                 <div class="col-lg-3 scrollable" id="sidebar">
                     <%-- My Account --%>
                     <ul class="">
                          <li>My Account</li>
                         <li>
                             <a href="dashboard.aspx">
                                 <i class="icon-feather-grid"></i>
                                 <div>Dashboard</div>
                             </a>
                         </li>

                         <li>
                             <div class="dropdown">
                                 <button class="btn btn-secondary dropdown-toggle" type="button" id="MyDocDrop" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" style="height: 15px; width: 15px;">
                                         <!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                                         <path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z" />
                                     </svg>
                                     My Documents

                                 </button>
                                 <div class="dropdown-menu" aria-labelledby="MyDocDrop">
                                     <a class="dropdown-item" href="all-documents.aspx">All Documents</a>
                                     <a class="dropdown-item" href="all-Images.aspx">All AI Images</a>
                                 </div>
                             </div>
                             <%-- <a href="#" id="myDocBtn"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512"><!--! Font Awesome Pro 6.4.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. --><path d="M0 64C0 28.7 28.7 0 64 0H224V128c0 17.7 14.3 32 32 32H384V448c0 35.3-28.7 64-64 64H64c-35.3 0-64-28.7-64-64V64zm384 64H256V0L384 128z"/></svg> 
                                           My Documents</a>
                                        <ul id="myDocShow">
                                           <li class=""><a href="http://hype.sociusus.com/all-documents">All Documents</a></li>
                                           <li class=""><a href="http://hype.sociusus.com/all-images">All AI Images</a></li>
                                        </ul>--%>                                  
                         </li>
                     </ul>
                     <%-- Organize and Manage --%>
                     <ul>
                         <li>Organize and Manage</li>
                         <li>
                             <a href="ai-templates/Ai-templates.aspx">
                                 <i class="icon-feather-layers"></i>
                                 <div>Templates</div>
                             </a>
                         </li>
                         <li>
                             <a href="ai-images.aspx">
                                 <i class="icon-feather-image"></i>
                                 <div>Ai Images</div>
                             </a>
                         </li>
                         <li>
                             <a href="ai-chat.aspx">
                                 <i class="icon-feather-message-circle"></i>
                                 <div>Ai Chat</div>
                             </a>
                         </li>
                         <li>
                             <a href="speechToText.aspx">
                                 <i class="icon-feather-headphones"></i>
                                 <div>Speech to Text</div>
                             </a>
                         </li>
                         <li>
                             <a href="ai-code.aspx">
                                 <i class="icon-feather-code"></i>
                                 <div>Ai Code</div>
                             </a>
                         </li>
                     </ul>
                     <%-- Account --%>
                     <ul>
                         <li>Account</li>
                         <li class="">
                             <div class="dropdown show" style="">
                                 <a class="btn btn-secondary dropdown-toggle" href="#" role="button" style="height: 40px;" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Affiliate Program
                                 </a>

                                 <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                     <a class="dropdown-item" href="affiliate-program.aspx">Affiliate Program</a>
                                     <a class="dropdown-item" href="withdrawals.aspx">Withdrawals</a>
                                 </div>
                             </div>
                         </li>
                         <li>
                             <a href="membership/membership.aspx">
                                 <i class="icon-feather-gift"></i>
                                 <div>Membership</div>
                             </a>
                         </li>
                         <li>
                             <a href="Transaction.aspx">
                                 <i class="icon-feather-file-text"></i>
                                 <div>Transactions</div>
                             </a>
                         </li>
                         <li><a href="accountSetting.aspx"><i class="icon-feather-log-out"></i>
                             <div>Account Setting</div>
                         </a>
                         </li>
                         <li>
                             <asp:LinkButton class="dropdown-item" OnClick="logout" runat="server">Logout</asp:LinkButton>
                         </li>
                     </ul>
                 </div>
                 <%-- Right Side Lists --%>
                 <div class="col-lg-9 scrollable" id="content" style="padding-top:35px;">
                     <%-- Right content 1st row only content --%>
                     <div class="row pageContentHeader">
                         <div class="col-md-8">
                             <div class="form-group" style="display: flex">
                                 <h3>Ai Chat</h3>
                                 <div style="border-radius: 20px; height: 40px; width: 180px; background: grey; padding: 7px;">
                                     0/100 Images Used
                                 </div>
                             </div>
                         </div>
                         <%-- Right Side of Right side --%>
                         <div class="col-md-4">
                             <div id="SubPage">
                                 <ul style="display: inline-flex;">
                                     <li><a href="index.aspx">Home</a></li>
                                     <li><a href="ai-images.aspx">AI Chat</a></li>
                                 </ul>
                             </div>
                         </div>                   

                         <%-- AI chat box starts Here --%>               
                         <div class="col-md-12 col-lg-12 col-sm-12">
                             <%-- chatbot header --%>
                             <div class="row" id="chatBotBox" style="border: 1px solid grey; background: white">
                                 <div class="col-4 pl-5">
                                     <div id="left">
                                         <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                             <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z" />
                                         </svg>
                                     </div>
                                 </div>
                                 <div class="col-4 pt-2">
                                     <p>AI Chat Bot</p>
                                 </div>
                                 <div class="col-4 pt-1">
                                     <div id="right">
                                         <asp:Button OnClick="generateText" ID="generateChatText" runat="server" CssClass="button-with-span btn align-items-center" Style="position: absolute;"></asp:Button>
                                         <i class="fa fa-download" aria-hidden="true" style="position: relative; width: 15px; padding-left: 5px; padding-top: 5px; /* color: red; */"></i>
                                         <%--<asp:Button class="btn btn-primary" onclick="generateText" id="generateChatText" runat="server" style="background-color: #ac2bac;" role="button"><i class="fa fa-download" aria-hidden="true"></i></a>--%>

                                         <asp:Button runat="server" CssClass="button-with-span btn align-items-center" ID="deleteChat" Style="position: absolute;"></asp:Button>
                                         <i class="fa fa-trash binicon" aria-hidden="true" style="position: relative; padding-left: 10px"></i>
                                     </div>
                                 </div>

                                 <%-- chatbot body --%>
                                 <div class="col-12">
                                     <div id="chatHistory" style="height: 250px; overflow-y: auto; border: 1px solid grey">
                                     </div>
                                 </div>

                                 <%-- chatbot Text Submit box --%>
                                 <div class="col-12" style="border: 1px solid grey;">
                                     <div style="padding-top:15px;padding-bottom:15px">
                                         <input type="text" id="textSrch" style="border: none; outline: none" placeholder="Type Your Message Here" />
                                         <input type="button" class="btn btn-primary" value="Submit" id="chatSubmitBtn" />
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <%-- AI chat box end --%>                    
                     <hr />
                     <%-- Footer Dashboard --%>                    
                     <div class="row footer">
                         <div class="col-md-6">
                             <span class="footer-copyright-text">@ 2023 Socius IGB Pvt Ltd, All right reserved</span>
                         </div>
                         <div class="col-md-6">
                             <!-- Facebook -->
                             <a class="btn" style="" href="#!" role="button"></a>
                             <!-- Twitter -->
                             <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fab fa-twitter"></i></a>

                             <!-- Google -->
                             <a class="btn btn-primary" style="background-color: #dd4b39;" href="#!" role="button"><i class="fab fa-google"></i></a>

                             <!-- Instagram -->
                             <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fab fa-instagram"></i></a>

                             <!-- Linkedin -->
                             <a class="btn btn-primary" style="background-color: #0082ca;" href="#!" role="button"><i class="fab fa-linkedin-in"></i></a>

                             <!-- Pinterest -->
                             <a class="btn btn-primary" style="background-color: #c61118;" href="#!" role="button"><i class="fab fa-pinterest"></i></a>


                             <!-- Github -->
                             <a class="btn btn-primary" style="background-color: #333333;" href="#!" role="button"><i class="fab fa-github"></i></a>

                         </div>
                     </div>
                 </div>
             </div>
         </div>        
    </form>
</body>
</html>
