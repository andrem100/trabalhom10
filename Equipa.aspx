<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Equipa.aspx.cs" Inherits="Projeto.Equipa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%@Import Namespace="System.Xml" %>
    <%@Import Namespace="System.IO"  %>
     <title>Equipa</title>
    <meta charset="utf-8" />
    <link rel="shortcut icon" href="images/favicon.ico" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/Index.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
</head>
<body class="no-sidebar" >

    <!-- Header Wrapper -->
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
                                        <a style="background: rgba(0, 0, 0, 0.15);
					                                box-shadow: inset 1px 1px 0px 0px rgba(0, 0, 0, 0.025), 1px 1px 0px 0px rgba(255, 255, 255, 0.025);
                                                    border-radius: 20px;" href="Equipa.aspx">Equipa</a>
                                    </li>
                                    <li>
                                        <a href="InserirPessoa.aspx">Inserir Agente</a>
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
        <div class="wrapper style1">
            <div class="inner">

                <!-- Feature 1 -->
                <section class="container box feature1">
                    <section>


                        <div class="12u">
                            <header class="first major">
                                <h2>Equipa</h2>
                                <p>Os principais membros do departamento de <strong>Quinta do Anjo</strong>.</p>
                            </header>
                        </div>
                    </section>


                    <%
                        
                        XmlDataDocument xmldoc = new XmlDataDocument();
                        XmlNodeList xmlnode;
                        FileStream fs = new FileStream(Server.MapPath("assets/xml/Agentes.xml"), FileMode.Open, FileAccess.Read);
                        xmldoc.Load(fs);
                        fs.Close();
                        xmlnode = xmldoc.GetElementsByTagName("Agente");
                        int idx = 0;
                        for(int aux=0;aux<(xmlnode.Count/3)+1;aux++)
                        {
                            Response.Write("<div class='row'>");
                            for (int idx2=idx+3; idx <idx2; idx++)
                            {
                                if (xmlnode.Count == idx)
                                    break;
                                string nome ="";
                                string profissao="";
                                string dataentrada="";
                                string sexo = "";
                                string datanasc = "";
                                string escolaridade = "";
                                string imagem = "";
                                string altura = "";
                                foreach(XmlNode No in xmlnode[idx].ChildNodes)
                                {
                                    switch(No.Name)
                                    {
                                        case "Nome":
                                            nome = No.InnerText;
                                            break;
                                        case "Profissao":
                                            profissao = No.InnerText;
                                            break;
                                        case "DataEntrada":
                                            dataentrada = No.InnerText;
                                            break;
                                        case "Sexo":
                                            sexo = No.InnerText;
                                            break;
                                        case"DataNasc":
                                            datanasc = No.InnerText;
                                            break;
                                        case"NivelEscolaridade":
                                            escolaridade = No.InnerText;
                                            break;
                                        case"Imagem":
                                            imagem = No.InnerText;
                                            break;
                                        case"Altura":
                                            altura = No.InnerText;
                                            break;
                                    }
                                }
                                string[] Nome = nome.Trim().Split(' ');
                                Response.Write("<div class='4u 12u(mobile)'>");
                                    Response.Write("<section>");
                                        Response.Write("<div id='openModal" +idx+ "' class='modalDialog'>");
                                            Response.Write("<div>");
                                                Response.Write("<a href='#close' title='Close' class='close'>X</a>");
                                                Response.Write("<br />");
                                                Response.Write("<header align='left' class='second icon fa-user'>");
                                                    Response.Write("<h3 align='left'>" +Nome[0]+' '+Nome[Nome.Length-1]+"</h3>");
                                                    Response.Write("<p align='left'>"+profissao+"</p>");
                                                Response.Write("</header><br/><br/>");
                                                Response.Write("<p align='left'><i class='fa fa-list-alt' aria-hidden='true'></i> Nome: "+nome+"</p>");
                                                Response.Write("<p align='left'><i class='fa fa-briefcase' aria-hidden='true'></i> Data de entrada na Empresa: "+dataentrada+" </p>");
                                                Response.Write("<p align='left'><i class='fa fa-venus-mars' aria-hidden='true'></i> Sexo: "+sexo+"</p>");
                                                Response.Write(" <p align='left'>");
                                                Response.Write("<i class='fa fa-birthday-cake' aria-hidden='true'></i>Data de Nascimento: "+datanasc+"</p>");
                                                Response.Write("<p align='left'><i class='fa fa-graduation-cap' aria-hidden='true'></i>Nível de Escolaridade: "+escolaridade+"</p>");
                                                Response.Write("<p align='left'><i class='fa fa-male' aria-hidden='true'></i>Altura: "+altura+"</p>");
                                            Response.Write("</div>");
                                        Response.Write("</div>");
                                        
                                        Response.Write("<a href='#openModal"+idx+"' class='image featured'><img src='"+imagem+"' height='500' width='25' /></a>");
                                        Response.Write("<header class='second icon fa-user'>");
                                        Response.Write("<h3>" + Nome[0] + ' ' + Nome[Nome.Length - 1] + "</h3>");
                                        Response.Write("<p>" + profissao + "</p>");
                                        Response.Write("</header>");
                                Response.Write("</div>");
                            }
                            Response.Write("</div>");
                        }
                         %>
                    
                    
                    <div class="row">
                        <div class="12u">
                            <p>
                                Queremos agradecer a todos os excelentíssimos profissionais integrantes da nossa equipa, pela sua dedicação e profissionalismo.
                            </p>
                            <br />
                            <br />
                        </div>

                    </div>
                </section>

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
</body>
</html>
