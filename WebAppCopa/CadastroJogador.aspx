<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroJogador.aspx.cs" Inherits="WebAppCopa.CadastroJogador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootbox.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />


    <script type="text/javascript">

        /* Quando usamos "parent" significa que queremos chamar 
        uma função contida na página pai, ou seja, funções contidas
        em ListarJogadores.aspx */

        function ChamarFecharPopUp() {
            parent.FecharPopUp();
        }

        function ChamarExibirMensagemErro(msg) {
            parent.ExibirMensagemErro(msg);
        }

        function ChamarExibirMensagemSucesso(msg) {
            parent.ExibirMensagemSucesso(msg);
            ChamarFecharPopUp();
        }
      
       

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <!-- ID -->
            <div>
                <div>
                    ID
                </div>

                <div>
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </div>
            </div>

            <br />

            <!-- Nome do jogador -->
            <div>
                <div>
                    Nome
                </div>               

                <div>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <br />

            <!-- Data de Nascimento -->
            <div>
                <div>
                    Data de Nascimento
                </div>

                <div>
                    <asp:TextBox ID="txtDataNascimento" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <br />

            <!-- Número camisa -->
            <div>
                <div>
                    Numero Camisa
                </div>

                <div>
                    <asp:TextBox ID="txtNumeroCamisa" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <br />

            <!-- Posição -->
            <div>
                <div>
                    Posição
                </div>

                <div>
                    <%--<<asp:TextBox ID="txtPosicao" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddlPosicao" runat="server"></asp:DropDownList>
                </div>
            </div>
            <br />

            <br />

            <!-- Convocação -->
            <div>
                <div>
                    Convocação
                </div>

                <div>
                    <asp:TextBox ID="txtConvocacao" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <br />

            <!-- Dispensa -->
            <div>
                <div>
                    Dispensa
                </div>

                <div>
                    <asp:TextBox ID="txtDispensa" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />

            <br />

            <!-- Label-->
            <div>
                <div>
                    <asp:Label ID="lblMensagem" runat="server" Text=""></asp:Label>
                </div>
                <br />
            </div>

            <br />

            <!-- Botões Exibir Dados e Calcular idade-->
            <div>
                <div>
                    <asp:Button ID="btnExibirDados" runat="server" Text="Exibir Dados" OnClick="btnExibirDados_Click"  CssClass="btn btn-primary"/>
                    <asp:Button ID="btnCalcularIdade" runat="server" Text="Calcular idade" OnClick="btnCalcularIdade_Click" CssClass="btn btn-success"/>
                    <asp:Button ID="btnCalcularIndenizacaoFifa" runat="server" Text="Calcular indenização" OnClick="btnCalcularIndenizacaoFifa_Click" CssClass="btn btn-warning"/>
                </div>
            </div>

        </div>
    </form>
</body>
</html>