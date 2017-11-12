using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.IO;

namespace Projeto
{
    public partial class InserirPessoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            XmlDocument doc = new XmlDocument();

            doc.Load(Server.MapPath("assets/xml/Agentes.xml"));

            XmlNodeList lstNo;
            lstNo = doc.GetElementsByTagName("Agentes");

            //XmlNode agente;
            string str;
            str = File.ReadAllText(Server.MapPath("assets/xml/Agentes.xml"));
            str = str.Substring(0, str.LastIndexOf("</Agentes>"));
            str+= "<Agente>";
            str+="<Nome>"+Nome.Text+"</Nome>";
            str += "<DataNasc>" + DtNasc.Text + "</DataNasc>";
            str += "<DataEntrada>" + DtEntrada.Text + "</DataEntrada>";
            str += "<Altura>" + Altura.Text + "</Altura>";
            str += "<NivelEscolaridade>" + Escola.Text + "</NivelEscolaridade>";

            str += "<Profissao>" + Cargo.Text + "</Profissao>";

            str += "<Sexo>" + Gen.Text + "</Sexo>";
            if(Imagem.HasFile)
            {
                byte[] data = new byte[Imagem.FileContent.Length];
                Imagem.FileContent.Read(data, 0, data.Length);
                string extensao =Imagem.FileName.Substring(Imagem.FileName.LastIndexOf(".") + 1);
                string Ficheiro;
                Ficheiro = Nome.Text.Replace(" ", "_") + "." + extensao;
                File.WriteAllBytes(Server.MapPath("images/" + Ficheiro), data);
                str+="<Imagem>"+"images/" + Ficheiro+"</Imagem>";
            }
            str+="</Agente></Agentes>";
            File.WriteAllText(Server.MapPath("assets/xml/Agentes.xml"),str);


        }

       
    }
}