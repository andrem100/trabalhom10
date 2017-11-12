<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InserirPessoa.aspx.cs" Inherits="Projeto.InserirPessoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="shortcut icon" href="images/favicon.ico" />
    <title>Inserir Casos</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/Index.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
</head>
<body class="no-sidebar">
    <form id="form1" runat="server">



    <!-- Header Wrapper -->
    <div id="header-wrapper">
        <div class="container">

            <!-- Header -->
            <header id="header">
                <div class="inner">

                    <!-- Logo -->
                    <h1><a href="index.html" id="logo">Polícia Judiciária QA</a></h1>

                    <!-- Nav -->
                    <nav id="nav">
                        <ul>
                            <li><a href="index.html">Página Inicial</a></li>
                            <li><a href="sobrenos.html">Sobre Nós</a></li>
                            <li class="current_page_item"><a href="Equipa.aspx">Equipa</a>
                                <ul>
                                    <li>
                                        <a href="Equipa.aspx">Equipa</a>
                                    </li>
                                    <li>
                                        <a style="background: rgba(0, 0, 0, 0.15);
					                                box-shadow: inset 1px 1px 0px 0px rgba(0, 0, 0, 0.025), 1px 1px 0px 0px rgba(255, 255, 255, 0.025);
                                                    border-radius: 20px;" href="InserirPessoa.aspx">Inserir Agente</a>
                                    </li>
                                </ul>
                            </li>
                            <li >
                                <a href="casos.html">Casos</a>
                                <ul>
                                    <li >
                                        <a href="Inserir.html">Inserir Caso</a>
                                    </li>
                                    <li><a href="casos.html">Lista de Casos</a></li>
                                </ul>
                            </li>
                            <li><a href="contactos.html">Contactos</a></li>
                        </ul>
                    </nav>
                </div>
            </header>

        </div>
    </div>
    <!-- Main Wrapper -->
    <div id="main-wrapper">
        <div class="wrapper style2">
            <div class="inner">
                <div class="container">
                    <div id="content">

                        <!-- Content -->

                        <article>
                       
                            <header class="major">
                                <h2>Inserção de novo Elemento da Equipa</h2>
                                <p>Adicione o novo elemento aqui:</p>   
                                  
                                <div style="border:1px solid #eee;">
                                   <div class="column FormAgent">
                                       Nome:<asp:TextBox ID="Nome" runat="server"></asp:TextBox>
                                       Data De Nascimento:<asp:TextBox ID="DtNasc" runat="server"></asp:TextBox>
                                       Data De Entrada:<asp:TextBox ID="DtEntrada" runat="server"></asp:TextBox>
                                       Altura:<asp:TextBox ID="Altura" runat="server"></asp:TextBox>
                                       Nível de Escolaridade:<asp:TextBox ID="Escola" runat="server"></asp:TextBox>
                                       Cargo na Empresa:<asp:TextBox ID="Cargo" runat="server"></asp:TextBox>
                                       Género:<asp:TextBox ID="Gen" runat="server"></asp:TextBox>

                                       <div class="ImagemInsert">
                                           <label for="Imagem" class="custom-file-upload">
                                               <i class="fa fa-cloud-upload"></i> Imagem
                                           </label>
                                           <asp:FileUpload ID="Imagem" runat="server" style="display: none;"/>
                                       </div>
                                 </div>
                                    <div class="column">
                                         <asp:Button ID="Button1" runat="server" Text="Inserir" OnClick="Button1_Click" />
                                   </div>
                                 </div>
                            </header>
                        </article>
                    </div>
                    </div>
                </div>
            </div>
        </div>







    <!-- Footer Wrapper -->
    <div id="footer-wrapper">
        <center>
            <a href="https://www.facebook.com/groups/policia.judiciaria/"><i class="fa fa-facebook-square fa-2x" aria-hidden="true" style="color:#3b5998;margin:0 2px 0 2px"></i></a>
            <a href="https://twitter.com/PJudiciaria"><i class="fa fa-twitter-square fa-2x" aria-hidden="true" style="color:#00aced;margin:0 2px 0 2px"></i></a>
            <a href="https://www.instagram.com/explore/locations/243185670/"><i class="fa fa-instagram fa-2x" aria-hidden="true" style="color:#cd486b;margin:0 2px 0 2px"></i></a>
        </center>
        <div class="row">
            <div class="12u">
                <div id="copyright">
                    <ul class="menu" style="margin-bottom:0">
                        <li>Design: André Marques, Mara Correia, Pedro Ribeiro</li>
                        <li>Template: <a href="http://html5up.net/zerofour">HTML5 UP / Zerofour</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.dropotron.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/skel-viewport.min.js"></script>
    <script src="assets/js/util.js"></script>
    <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
