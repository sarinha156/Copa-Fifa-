<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroEstadio.aspx.cs" Inherits="WebAppCopa.CadastroEstadio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootbox.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />


    <script type="text/javascript">
        function ChamarFecharPopUp() {
            parent.FecharPopUp();
        }

          function ConfirmarExclusao(sender) {

            if ($(sender).attr("ExclusaoConfirmada") == "true") {                
                return true;
            }

            bootbox.confirm({
                message: "Deseja realmente excluir este jogador?",
                buttons: {
                    confirm: {
                        label: 'Sim',
                        className: 'btn-success'
                    },
                    cancel: {
                        label: 'Não',
                        className: 'btn-danger'
                    }
                },
                callback: function (confirmed) {                    
                    if (confirmed) {
                        $(sender).attr("ExclusaoConfirmada", confirmed).trigger("click");                        
                    }                    
                }
           });
           return false;
        }
       </script>

    <title> Cadastro Estádio </title>
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
                    Estadio
                </div>               

                <div>
                    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <!-- Cidade -->
            <div>
                <div>
                    Cidade
                </div>               

                <div>
                    <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            <!-- Capacidade -->
            <div>
                <div>
                    Capacidade
                </div>             
                <div>
                    <asp:TextBox ID="txtCapacidade" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />


            <!-- Botões -->
            <div>
                <div>
                    <asp:Button ID="btnAdicionar" runat="server" Text="Adicionar"  CssClass="btn btn-primary" />
                    <asp:Button ID="btnConcluir" runat="server" Text="Concluir" OnClientClick="return ChamarFecharPopUp();"  CssClass="btn btn-success"/>
                    <asp:Button ID="btnExcluir" runat="server" Text="Excluir" OnClientClick="return ConfirmarExclusao(this);"  CssClass="btn btn-danger"/>

                </div>
            </div>

        </div>
    </form>
</body>
</html>