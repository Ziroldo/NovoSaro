<%@ Page Language="C#" MasterPageFile="~/default.master" AutoEventWireup="true" CodeFile="Formulario.aspx.cs" Inherits="Formulario" %>

<%@ Register Src="includes/ucRightMenu.ascx" TagName="ucRightMenu" TagPrefix="uc1" %>
<asp:Content ID="cMainContent" runat="server" ContentPlaceHolderID="cphMain">

    <html>

    <div class="title">
        FORMULÁRIO ACREDITAÇÃO<br />
        <br />
    </div>

    <div style="text-align: center">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </div>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Expires" content="0">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="./css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>

        <script type="text/javascript">
            function carregaSvg(img) {
                let vpath = img.src;
                const el = fetch(vpath).then((response) => {

                    response.text().then(e => {
                        document.getElementById('porta_svg').innerHTML = e;
                    })
                })

            }
        </script>

        <div class="container my-5 text-center">
            <div class="row-center">
                <div class="text-center">
                    <input type="button" onclick="fnMostrar(this), showReload2()" class="btn-primary btn-sm" value="Visão" data-itemmenu="visao">
                    <input type="button" onclick="fnMostrar(this)" class="btn-primary btn-sm" value="Infraestrutura" data-itemmenu="infraestrutura">
                    <input type="button" onclick="fnMostrar(this)" class="btn-primary btn-sm" value="Gestão" data-itemmenu="gestao">
                    <input type="button" onclick="fnMostrar(this)" class="btn-primary btn-sm" value="Processo" data-itemmenu="processo">
                    <input type="button" onclick="fnMostrar(this)" class="btn-primary btn-sm" value="Resultado" data-itemmenu="resultado">
                </div>
            </div>
        </div>

        <div class="container my-5">

            <div class="fluid">
            </div>

            <div class="tab collapse" id="tab1" style="">
                <h3 class="sub_visao">Visão Geral</h3>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P1">Nome (opcional)</label>
                            <textarea class="form-control" name="S1_P1" id="S1_P1"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P2">Qual seu cargo na sua organização?</label>
                            <select class="form-control" name="S1_P2" id="S1_P2">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Nível Médio Administrativo</option>
                                <option>Nível Médio Profissionais da Saúde (Técnico de Enfermagem e outros)</option>
                                <option>Nível Superior Profissionais da Saúde (Cirurgião Dentista, Enfermeiro, Farmacêutico, Psicólogo, Nutricionista, Médico, Fisioterapeuta, Fonoaudiólogo, Farmacêutico, Outros)</option>
                                <option>Nível Superior outros (Assistente Social, Advogado, Administrador)</option>
                                <option>Cargo em Comissão</option>
                                <option>Profissionais Nível Básico</option>
                                <option>Estagiário</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P03">Independente do cargo que você ocupa na sua organização, você possui graduação em nível superior? Se sim, responda qual (quais)</label>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_cargo" data-clear="S1_P4" class="form-check-input modificador" id="S1_P03_sim" value="sim" name="optradio4">Sim
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_cargo" data-clear="S1_P4" class="form-check-input modificador" id="S1_P03_nao" value="nao" name="optradio4">Não
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row collapse" id="row_cargo">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P4">quais graduações</label>
                            <textarea class="form-control" name="S1_P4" id="S1_P4"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P05">Você possui alguma (s) especialização? se sim, responda qual (quais)</label>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_especializacao" data-clear="S1_P6" class="form-check-input modificador" id="S1_P05_sim" value="Sim" name="optradio5">Sim
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_especializacao" data-clear="S1_P6" class="form-check-input modificador" id="S1_P05_nao" value="nao" name="optradio5">Não
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row collapse" id="row_especializacao">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P6">quais especializações</label>
                            <textarea class="form-control" name="S1_P6" id="S1_P6"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P7">Qual sua função na sua unidade de Ouvidoria ?</label>
                            <select class="form-control" name="S1_P7" id="S1_P7">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Ouvidor</option>
                                <option>Equipe Técnica</option>
                                <option>Equipe Administrativa</option>
                                <option>Estagiário</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P8">Qual seu regime de contratação?</label>
                            <select class="form-control" name="S1_P8" id="S1_P8">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Estatutário</option>
                                <option>Cargo em comissão</option>
                                <option>CLT</option>
                                <option>Contrato de Estágio</option>
                                <option>Outro</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P9">Há quanto tempo você trabalha na sua organização ?</label>
                            <select class="form-control" name="S1_P9" id="S1_P9">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Até 6 meses</option>
                                <option>7 a 12 meses</option>
                                <option>1 a 5 anos</option>
                                <option>6 a 10 anos</option>
                                <option>11 a 20 anos</option>
                                <option>Mais de 20 anos</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P10">Há quanto tempo você trabalha na sua unidade de Ouvidoria?</label>
                            <select class="form-control" name="S1_P10" id="S1_P10">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Até 6 meses</option>
                                <option>7 a 12 meses</option>
                                <option>1 a 5 anos</option>
                                <option>6 a 10 anos</option>
                                <option>11 a 20 anos</option>
                                <option>Mais de 20 anos</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P11">Antes de trabalhar na sua unidade de Ouvidoria, trabalhou em outra Ouvidoria? Se sim, especifique em qual no campo "Outros"</label>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_antes_trabalhar" data-clear="S1_P12" class="form-check-input modificador" id="S1_P11_sim" name="optradio6">Sim
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_antes_trabalhar" data-clear="S1_P12" class="form-check-input modificador" id="S1_P11_nao" name="optradio6">Não
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row collapse" id="row_antes_trabalhar">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P12">quais ouvidorias</label>
                            <textarea class="form-control" name="S1_P12" id="S1_P12"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P13">Qual o seu nível de conhecimento em excel?</label>
                            <select class="form-control" name="S1_P13" id="S1_P13">
                                <option value="0" selected="" disabled="">Selecione</option>
                                <option>Nenhum</option>
                                <option>Básico</option>
                                <option>Intermediário</option>
                                <option>Avançado</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P14">Na sua opinião quais são os pontos fortes do trabalho desta unidade de Ouvidoria?</label>
                            <textarea class="form-control" name="S1_P14" id="S1_P14"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P15">Na sua opinião quais são as oportunidades de melhoria no trabalho desta unidade de Ouvidoria?</label>
                            <textarea class="form-control" name="S1_P15" id="S1_P15"></textarea>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P16">Você sente necessidade de alguma capacitação/treinamento específico que possa melhorar sua performance no trabalho? Se sim descreva.</label>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_capacitacao" data-clear="S1_P17" class="form-check-input modificador" id="S1_P16_sim" name="optradio7" value="sim">Sim
                                </label>
                            </div>
                            <div class="form-check-inline">
                                <label class="form-check-label">
                                    <input type="radio" data-target="row_capacitacao" data-clear="S1_P17" class="form-check-input modificador" id="S1_P16_nao" name="optradio7">Não
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row collapse" id="row_capacitacao" style="">
                    <div class="col-12">
                        <div class="form-group">
                            <label id="lbl_S1_P17">quais capacitações</label>
                            <textarea class="form-control" name="S1_P17" id="S1_P17"></textarea>
                        </div>
                    </div>
                </div>
                <input type="button" onclick="avancaSessao(2,1)" class="btn-primary btn-sm" value="Avanca">
            </div>

            <div class="tab collapse" id="tab2" style="">
                <h3 class="sub_infraestrutura">Infraestrutura</h3>
                <div class="d-flex" style="justify-content: space-around;">
                    <button type="button" data-sessao="S2_Q1" class="btn btn-sm btn-sub_infraestrutura expand">Pessoal Qualificado</button>
                    <button type="button" data-sessao="S2_Q2" class="btn btn-sm btn-sub_infraestrutura expand">Estrutura Fisica</button>
                    <button type="button" data-sessao="S2_Q3" class="btn btn-sm btn-sub_infraestrutura expand">Estrutura Juridica</button>
                </div>
                <div class="collapse" id="S2_Q1" style="">
                    <h4 class="sub_infraestrutura">Pessoal Qualificado</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P1">PR 1.1.1-A sua unidade de Ouvidoria admite seus trabalhadores e gestores a partir de perfis específicos? (conhecimentos, habilidades e atitudes)?</label>
                                <select class="form-control" name="S2_P1" id="S2_P1">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P2">PR 1.1.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P2" id="S2_P2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P3">PR 1.1.2.1-O quadro de pessoal da sua unidade de Ouvidoria está em quantidade adequada ao funcionamento da ouvidoria.?</label>
                                <select s="row_quadro" data-clear="" class="form-control modificador" name="S2_P3" id="S2_P3">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row collapse" id="row_quadro">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P4">PR 1.1.2.1.1-Caso na questão anterior sua resposta tenha sido as opções 1 ou 2, explicite o(s) motivo (os) escolhendo uma ou mais opções abaixo</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P4_A" value="Quantidade de técnicos insuficiente">Quantidade de técnicos insuficiente
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P4_B" value="Quantidade de pessoal administrativo insuficiente">Quantidade de pessoal administrativo insuficiente
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P4_C" value="Quantidade de estagiários insuficiente">Quantidade de estagiários insuficiente
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P5">PR 1.1.2.1.2-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P5" id="S2_P5"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P6">PR 1.1.2.2-O quadro de pessoal da sua unidade de Ouvidoria está em qualidade adequada ao funcionamento da ouvidoria.?</label>
                                <select data-target="row_S2_P7" data-clear="" class="form-control modificador" name="S2_P6" id="S2_P6">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row collapse" id="row_S2_P7">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P7">PR 1.1.2.2.1-Caso a sua resposta à questão acima tenha sido as opções 1 ou 2, explicite o(s) motivo(s) escolhendo uma ou mais opções</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" id="S2_P7_A" class="form-check-input" value="Capacitação técnica insuficiente">Capacitação técnica insuficiente
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" id="S2_P7_B" class="form-check-input" value="Conhecimento específico insuficiente">Conhecimento específico insuficiente
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" id="S2_P7_C" class="form-check-input" value="Limitação física que interfira no desenvolvimento do trabalho">Limitação física que interfira no desenvolvimento do trabalho
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" id="S2_P7_D" class="form-check-input" value="Perfil inadequado ao trabalho de Ouvidoria">Perfil inadequado ao trabalho de Ouvidoria
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input data-target="S2_P7_outros" data-clear="S2_P7_F" type="checkbox" id="S2_P7_E" class="form-check-input modificador" value="Outros">Outros
                                    </label>
                                </div>
                                <div class="form-group collapse" id="S2_P7_outros">
                                    <label>Especifique</label>
                                    <input type="text" id="S2_P7_F" class="form-control" name="">
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P8">PR 1.1.2.2.2-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P8" id="S2_P8"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P9">PR 1.1.3-As atribuições e as ações desenvolvidas por sua unidade de Ouvidoria são conhecidas e aplicadas pela equipe?</label>
                                <select class="form-control" name="S2_P9" id="S2_P9">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P10">PR 1.1.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P10" id="S2_P10"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P11">PR 1.1.4-A sua unidade de Ouvidoria promove a qualificação e atualização do seu quadro de pessoal, de forma continuada?</label>
                                <select class="form-control" name="S2_P11" id="S2_P11">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P12">PR 1.1.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P12" id="S2_P12"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P13">PR 1.1.5.1-Para realizar a análise das manifestações dos usuários e realizar a gestão das mesmas, os membros da equipe da sua unidade de Ouvidoria recebem uma capacitação prévia antes de iniciarem o trabalho no setor, composto de conhecimentos, habilidades e atitudes que os auxiliem nas suas atribuições no setor?</label>
                                <select class="form-control" name="S2_P13" id="S2_P13">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P14">PR 1.1.5.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P14" id="S2_P14"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P15">PR 1.1.5.2 -Você participou de alguma formação em Ouvidoria? Marque uma ou mais alternativas.</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_A" value="Não">Não
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_B" value="Sim, OuvidorSUS">Sim, OuvidorSUS
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_C" value="Sim, ENAP (Escola Nacional de Administração Pública)">Sim, ENAP (Escola Nacional de Administração Pública)
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_D" value="Sim, ABO ( Associação Brasileira de Ouvidores)">Sim, ABO ( Associação Brasileira de Ouvidores)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_E" value="Sim, ILB (Instituto Legislativo Brasileiro)">Sim, ILB (Instituto Legislativo Brasileiro)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P15_F" value="Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal">Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P16">PR 1.1.5.3 -Você participou de alguma formação sobre a Lei Geral de Proteção de Dados (LGPD)? Marque uma ou mais alternativas.</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_A" value="Não">Não
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_B" value="Sim, CGM (Controladoria Geral do Município) / OGM (Ouvidoria Geral do Município)">Sim, CGM (Controladoria Geral do Município) / OGM (Ouvidoria Geral do Município)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_C" value="Sim, ENAP ( Escola Nacional de Administração Pública)">Sim, ENAP ( Escola Nacional de Administração Pública)
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_D" value="Sim, OGU (Ouvidoria Geral da União)">Sim, OGU (Ouvidoria Geral da União)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_E" value="Sim, OAB (Ordem dos Advogados do Brasil)">Sim, OAB (Ordem dos Advogados do Brasil)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_F" value="Sim, PGM (Procuradoria Geral do Município)">Sim, PGM (Procuradoria Geral do Município)
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_G" value="Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal)">Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P16_H" value="Outro">Outro
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P17">PR 1.1.5.4 -Você participou de alguma formação sobre a Lei de Acesso a Informação (LAI) ? Marque uma ou mais alternativas.</label>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_A" value="Não">Não
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_B" value="Sim, CGM (Controladoria Geral do Município) / OGM (Ouvidoria Geral do Município)">Sim, CGM (Controladoria Geral do Município) / OGM (Ouvidoria Geral do Município)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_C" value="Sim, ENAP ( Escola Nacional de Administração Pública)">Sim, ENAP ( Escola Nacional de Administração Pública)
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_D" value="Sim, OGU (Ouvidoria Geral da União)">Sim, OGU (Ouvidoria Geral da União)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_E" value="Sim, OAB (Ordem dos Advogados do Brasil)">Sim, OAB (Ordem dos Advogados do Brasil)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_F" value="Sim, PGM (Procuradoria Geral do Município)">Sim, PGM (Procuradoria Geral do Município)
                                    </label>
                                </div>

                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_G" value="Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal)">Sim, fornecida pela própria Divisão de Ouvidoria (em uma capacitação formal ou informal)
                                    </label>
                                </div>
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input" id="S2_P17_H" value="Outro">Outro
                                    </label>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P18">PR 1.1.5.5 -Você participou de alguma formação sobre a Mediação de Conflitos ? Marque uma ou mais alternativas.</label>
                                <select class="form-control" name="S2_P18" id="S2_P18">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P19">PR 1.1.6.1-Os princípios e diretrizes do SUS, da administração pública e da estrutura da saúde municipal são disseminados nos processos de formação dos trabalhadores da sua unidade de Ouvidoria (considerar também formações anteriores)?</label>
                                <select class="form-control" name="S2_P19" id="S2_P19">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P20">PR 1.1.6.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P20" id="S2_P20"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P21">PR 1.1.6.2-As legislações vigentes a respeito de Ouvidoria são de conhecimento da equipe da sua unidade de Ouvidoria?</label>
                                <select class="form-control" name="S2_P21" id="S2_P21">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P22">PR 1.1.6.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P22" id="S2_P22"></textarea>
                            </div>
                        </div>
                        <input type="button" onclick="avancaLocal(2,2,1)" class="btn-primary btn-sm" value="Avanca">
                        <input type="button" onclick="avancaSessao(1,1)" class="btn-primary btn-sm" value="Voltar">
                    </div>
                </div>
                <div class="collapse" id="S2_Q2" style="">
                    <h4 class="sub_infraestrutura">Estrutura Física</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P23">PR 1.2.1-O ambiente físico da sua unidade de Ouvidoria é de fácil identificação visual, e proporciona facilidade de acesso nos casos de atendimento presencial que venham a ocorrer e para membros de outras equipes de sua organização (hospital, CRS, STS, HSPM, SAMU, outros) ?</label>
                                <select class="form-control" name="S2_P23" id="S2_P23">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P24">PR 1.2.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P24" id="S2_P24"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P25">PR 1.2.2.1-A sua unidade de Ouvidoria dispõe de ambiente exclusivo para o desenvolvimento das suas funções, proporcionando visibilidade aos demais setores de sua organização?</label>
                                <select class="form-control" name="S2_P25" id="S2_P25">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P26">PR 1.2.2.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P26" id="S2_P26"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P27">PR 1.2.2.2-O espaço físico onde está instalada a sua unidade de Ouvidoria conta com boa iluminação, boa ventilação e área física adequada?</label>
                                <select class="form-control" name="S2_P27" id="S2_P27">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P28">PR 1.2.2.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P28" id="S2_P28"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P29">PR 1.2.3.1-O mobiliário da sua unidade de Ouvidoria é confortável, limpo e conservado?</label>
                                <select class="form-control" name="S2_P29" id="S2_P29">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P30">PR 1.2.3.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P30" id="S2_P30"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P31">PR 1.2.3.2-Há disponibilidade de recursos para aquisição, manutenção e melhorias no espaço físico da sua unidade de Ouvidoria?</label>
                                <select class="form-control" name="S2_P31" id="S2_P31">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P32">PR 1.2.3.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P32" id="S2_P32"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P33">PR 1.2.4-A sua unidade de Ouvidoria possui boa conexão por meio telefônico?</label>
                                <select class="form-control" name="S2_P33" id="S2_P33">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P34">PR 1.2.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P34" id="S2_P34"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P35">PR 1.2.5-Na sua unidade de Ouvidoria, há equipamentos de informática disponíveis e em quantidade suficiente para os membros da equipe realizarem suas atividades?</label>
                                <select class="form-control" name="S2_P35" id="S2_P35">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P36">PR 1.2.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P36" id="S2_P36"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P37">PR 1.2.6-A sua unidade de Ouvidoria possui boa conexão com a internet, de modo a permitir a disseminação de informações, registro e tratamento de manifestações, bem como integração com outros sistemas necessários para a realização do trabalho?</label>
                                <select class="form-control" name="S2_P37" id="S2_P37">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P38">PR 1.2.6.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P38" id="S2_P38"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P39">PR 1.2.7-As redes elétrica, hidráulica e de esgoto disponíveis para utilização da equipe da sua unidade de Ouvidoria são adequadas?</label>
                                <select class="form-control" name="S2_P39" id="S2_P39">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P40">PR 1.2.7.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P40" id="S2_P40"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(2,3,2)" class="btn-primary btn-sm" value="Avancar">
                    <input type="button" onclick="avancaLocal(2,1,2)" class="btn-primary btn-sm" value="Voltar">
                    <!-- <button type="button" data-sessao="S2_Q3" class="btn btn-sm btn-sub_infraestrutura expand">Avanca</button> -->
                </div>

                <div class="collapse" id="S2_Q3" style="">
                    <h4 class="sub_infraestrutura">Estrutura Jurídica</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P41">PR 1.3.1-A sua unidade de Ouvidoria está instituída por portaria publicada no Diário Oficial da Cidade ou outro veiculo de informação oficial (5 para sim, 1 para não) ?</label>
                                <select class="form-control" name="S2_P41" id="S2_P41">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P42">PR 1.3.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P42" id="S2_P42"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P43">PR 1.3.2-As funções, atribuições, organogramas e prazos da sua unidade de Ouvidoria estão definidos e publicados em portarias publicadas em Diário Oficial?</label>
                                <select class="form-control" name="S2_P43" id="S2_P43">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P44">PR 1.3.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P44" id="S2_P44"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P45">PR 1.3.3-A sua unidade de Ouvidoria possui autonomia financeira para a programação e execução das atividades (5 para sim, 1 para não) ?</label>
                                <select class="form-control" name="S2_P45" id="S2_P45">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P46">PR 1.3.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P46" id="S2_P46"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P47">PR 1.3.4-A sua unidade de Ouvidoria tem autonomia na execução do orçamento, previamente definido pela organização à qual está vinculada (5 para sim, 1 para não) ?</label>
                                <select class="form-control" name="S2_P47" id="S2_P47">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S2_P48">PR 1.3.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S2_P48" id="S2_P48"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaSessao(3,1)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaLocal(2,2,3)" class="btn-primary btn-sm" value="Voltar">
                </div>
            </div>

            <div class="tab collapse" id="tab3" style="">
                <h3 class="sub_gestao">Gestão</h3>
                <div class="d-flex" style="justify-content: space-around;">
                    <button type="button" data-sessao="S3_Q1" class="btn btn-sm btn-sub_gestao expand">Trabalho e Educação</button>
                    <button type="button" data-sessao="S3_Q2" class="btn btn-sm btn-sub_gestao expand">Informação</button>
                    <button type="button" data-sessao="S3_Q3" class="btn btn-sm btn-sub_gestao expand">Comunicação</button>
                </div>
                <div class="collapse" id="S3_Q1" style="">
                    <h4 class="sub_gestao">Trabalho e Educação</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P1">PR 2.1.1-As manifestações e seu tratamento são abordadas nos processos de educação permanente disponibilizados ou divulgados pela sua unidade de Ouvidoria?</label>
                                <select class="form-control" name="S3_P1" id="S3_P1">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P2">PR 2.1.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P2" id="S3_P2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P3">PR 2.1.2-Os fluxos administrativos da sua unidade de Ouvidoria são explicitamente definidos e compreendidos pelos membros da equipe envolvidos?</label>
                                <select class="form-control" name="S3_P3" id="S3_P3">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P4">PR 2.1.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P4" id="S3_P4"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P5">PR 2.1.3-A gestão da sua unidade de Ouvidoria estimula o desenvolvimento/participação em políticas de qualificação profissional e de educação permanente para a equipe?</label>
                                <select class="form-control" name="S3_P5" id="S3_P5">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P6">PR 2.1.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P6" id="S3_P6"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P7">PR 2.1.4-A gestão da sua unidade de Ouvidoria favorece/participa da constituição de espaços de educação permanente no âmbito interno ou externo de sua organização?</label>
                                <select class="form-control" name="S3_P7" id="S3_P7">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P8">PR 2.1.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P8" id="S3_P8"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P9">PR 2.1.5-Os trabalhadores da sua unidade de Ouvidoria integram um plano de cargos, carreiras e salários?</label>
                                <select class="form-control" name="S3_P9" id="S3_P9">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P10">PR 2.1.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P10" id="S3_P10"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P11">PR 2.1.6-A sua unidade de Ouvidoria elabora um planejamento coletivo das ações?</label>
                                <select class="form-control" name="S3_P11" id="S3_P11">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P12">PR 2.1.6.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P12" id="S3_P12"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P13">PR 2.1.7-Os trabalhadores da sua unidade de Ouvidoria possuem vínculos institucionais alinhados aos direitos/leis trabalhistas em vigor na sua organização?</label>
                                <select class="form-control" name="S3_P13" id="S3_P13">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P14">PR 2.1.7.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P14" id="S3_P14"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P15">PR 2.1.8-A sua unidade de Ouvidoria faz gestão de materiais de consumo?</label>
                                <select class="form-control" name="S3_P15" id="S3_P15">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P16">PR 2.1.8.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P16" id="S3_P16"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(3,2,1)" class="btn-primary btn-sm" value="Avancar">
                    <input type="button" onclick="avancaSessao(2,3)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S3_Q2" style="">
                    <h4 class="sub_gestao">Informação</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P17">PR 2.2.1-A sua unidade de Ouvidoria dispõe de instrumentos sistemáticos de coleta de dados?</label>
                                <select class="form-control" name="S3_P17" id="S3_P17">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P18">PR 2.2.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P18" id="S3_P18"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P19">PR 2.2.2-Os dados coletados pela sua unidade de Ouvidoria são processados de forma adequada para análise e manutenção de registros?</label>
                                <select class="form-control" name="S3_P19" id="S3_P19">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P20">PR 2.2.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P20" id="S3_P20"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P21">PR 2.2.3-A análise dos dados é realizada pela sua unidade de Ouvidoria em forma de relatórios e outros mecanismos gerenciais, de modo quantitativo e qualitativo, para, assim, atender às demandas da gestão e o que é previsto em legislação?</label>
                                <select class="form-control" name="S3_P21" id="S3_P21">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P22">PR 2.2.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P22" id="S3_P22"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P23">PR 2.2.4-Os relatórios são elaborados e publicizados periodicamente, informando sobre os dados previstos em legislação e outros de importância para a gestão?</label>
                                <select class="form-control" name="S3_P23" id="S3_P23">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P24">PR 2.2.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P24" id="S3_P24"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P25">PR 2.2.5-A sua unidade de Ouvidoria implanta ou participa de processos de avaliação da qualidade da informação produzida e seus efeitos na gestão do SUS?</label>
                                <select class="form-control" name="S3_P25" id="S3_P25">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P26">PR 2.2.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P26" id="S3_P26"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(3,3,2)" class="btn-primary btn-sm" value="Avancar">
                    <input type="button" onclick="avancaLocal(3,1,2)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S3_Q3" style="">
                    <h4 class="sub_gestao">Comunicação</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P27">PR 2.3.1-A sua unidade de Ouvidoria promove ou participa de encontros (presenciais ou por ferramentas virtuais) com a equipe interna e com a Rede de Ouvidorias para discussões e compartilhamento de informações e dos conhecimentos produzidos?</label>
                                <select class="form-control" name="S3_P27" id="S3_P27">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P28">PR 2.3.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P28" id="S3_P28"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P29">PR 2.3.2-A sua unidade de Ouvidoria implanta ou participa de estratégias de divulgação do papel e dos resultados do trabalho visando melhoria nos serviços de saúde prestados à população?</label>
                                <select class="form-control" name="S3_P29" id="S3_P29">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P30">PR 2.3.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P30" id="S3_P30"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P31">PR 2.3.3-A sua unidade de Ouvidoria desenvolve estratégias de contato com os grupos organizados, como Conselho Gestor e outros no sentido de subsidiá-los com informações e em busca de novos dados?</label>
                                <select class="form-control" name="S3_P31" id="S3_P31">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P32">PR 2.3.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P32" id="S3_P32"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P33">PR 2.3.4-A sua unidade de Ouvidoria adota, periodicamente, um sistema de conhecimento/ciência/atualização/revisão das publicações produzidas pela área interna ou Rede de Ouvidoria, como conteúdo na página da Ouvidoria na Internet, folders, regimentos internos, etc?</label>
                                <select class="form-control" name="S3_P33" id="S3_P33">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P34">PR 2.3.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P34" id="S3_P34"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P35">PR 2.3.5-A sua unidade de Ouvidoria está articulada de forma clara, objetiva e compreensível com as demais áreas técnicas da sua organização/sub-redes, com a Rede de Ouvidorias, com o Conselho Gestor e outras instâncias, de forma que as demandas dos usuários sejam reconhecidas e valorizadas?</label>
                                <select class="form-control" name="S3_P35" id="S3_P35">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S3_P36">PR 2.3.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S3_P36" id="S3_P36"></textarea>
                            </div>
                        </div>
                        <input type="button" onclick="avancaSessao(4,1)" class="btn-primary btn-sm" value="Avancar">
                        <input type="button" onclick="avancaLocal(3,2,3)" class="btn-primary btn-sm" value="Voltar">
                    </div>
                </div>
            </div>

            <div class="tab collapse" id="tab4" style="">
                <h3 class="sub_processo">Processo de Trabalho</h3>
                <div class="d-flex" style="justify-content: space-around;">
                    <button type="button" data-sessao="S4_Q1" class="btn btn-sm btn-sub_processo expand">Recebimento de Manifestação</button>
                    <button type="button" data-sessao="S4_Q2" class="btn btn-sm btn-sub_processo expand">Articulação de Intergestão</button>
                    <button type="button" data-sessao="S4_Q3" class="btn btn-sm btn-sub_processo expand">Tratamento das Manifestações</button>
                    <button type="button" data-sessao="S4_Q4" class="btn btn-sm btn-sub_processo expand">Resposta</button>
                </div>
                <div class="collapse" id="S4_Q1" style="">
                    <h4 class="sub_processo">Recebimento de Manifestação</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P1">PR 3.1.1-A sua unidade de Ouvidoria disponibiliza e avalia, sistematicamente, os meios físicos e virtuais de chegada, entrada, utilização e participação dos usuários para que eles possam interagir com Rede de Ouvidoria por meio de uma comunicação qualificada e humanizada, de modo a facilitar suas manifestações?</label>
                                <select class="form-control" name="S4_P1" id="S4_P1">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P2">PR 3.1.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P2" id="S4_P2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P3">PR 3.1.2-A sua unidade de Ouvidoria disponibiliza meios pelos quais os cidadãos possam avaliar as ações e serviços de saúde?</label>
                                <select class="form-control" name="S4_P3" id="S4_P3">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P4">PR 3.1.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P4" id="S4_P4"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(4,2,1)" class="btn-primary btn-sm" value="Avancar">
                    <input type="button" onclick="avancaSessao(3,3)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S4_Q2" style="">
                    <h4 class="sub_processo">Articulação de Intergestão</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P5">PR 3.2.1.1-A sua unidade de Ouvidoria compartilha informações, e discute dados e resultados por meio de uma agenda regular com outras instâncias gestoras/ áreas técnicas de sua instiuição?</label>
                                <select class="form-control" name="S4_P5" id="S4_P5">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P6">PR 3.2.1.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P6" id="S4_P6"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P7">PR 3.2.1.2-A sua unidade de Ouvidoria compartilha informações com sua rede interna e externa a fim de intermediar resoluções para atender as necessidades das ouvidorias e as manifestações dos cidadãos?</label>
                                <select class="form-control" name="S4_P7" id="S4_P7">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P8">PR 3.2.1.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P8" id="S4_P8"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P9">PR 3.2.2-A sua unidade de Ouvidoria desenvolve junto às instâncias gestoras de sua organização e Rede de Ouvidoria, ações visando resolução de problemas indicados nas manifestações dos usuários?</label>
                                <select class="form-control" name="S4_P9" id="S4_P9">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P10">PR 3.2.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P10" id="S4_P10"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P11">PR 3.2.3-As instâncias gestoras de sua instiuição solicitam e utilizam informações da sua unidade de Ouvidoria para se articular com outros órgãos e com a sociedade civil, na busca da resolução de problemas específicos e melhorias nos serviços de saúde?</label>
                                <select class="form-control" name="S4_P11" id="S4_P11">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P12">PR 3.2.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P12" id="S4_P12"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(4,3,2)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaLocal(4,1,2)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S4_Q3" style="">
                    <h4 class="sub_processo">Tratamento das Manifestações</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P13">PR 3.3.1-A sua unidade de Ouvidoria monitora se as manifestações são tratadas respeitando as singularidades e as diferenças entre as pessoas, em suas preferências, valores e escolhas, a fim de facilitar a interação dos usuários?</label>
                                <select class="form-control" name="S4_P13" id="S4_P13">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P14">PR 3.3.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P14" id="S4_P14"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P15">PR 3.3.2-A sua unidade de Ouvidoria monitora os fluxos, prazos e processos no tratamento de demandas, levando em consideração os contextos locais e em conformidade com a legislação e documentação existentes?</label>
                                <select class="form-control" name="S4_P15" id="S4_P15">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P16">PR 3.3.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P16" id="S4_P16"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P17">PR 3.3.3-A sua unidade de Ouvidoria propicia condições aos trabalhadores da equipe para que possam avaliar as etapas do tratamento de manifestações dos usuários, permitindo correções e aperfeiçoamento dessas práticas?</label>
                                <select class="form-control" name="S4_P17" id="S4_P17">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P18">PR 3.3.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P18" id="S4_P18"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P19">PR 3.3.4-A sua unidade de Ouvidoria verifica se as manifestações dos usuários são tratadas por todos os que atuem na organização/sub-rede interna considerando os princípios do SUS, respeitando os valores individuais e coletivos e os fatos com a devida agilidade?</label>
                                <select class="form-control" name="S4_P19" id="S4_P19">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P20">PR 3.3.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P20" id="S4_P20"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(4,4,3)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaLocal(4,2,3)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S4_Q4" style="">
                    <h4 class="sub_processo">Resposta</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P21">PR 3.4.1-A sua unidade de Ouvidoria divulga, define e monitora os prazos para as respostas encaminhadas para as áreas técnicas de sua sub-rede?</label>
                                <select class="form-control" name="S4_P21" id="S4_P21">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P22">PR 3.4.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P22" id="S4_P22"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P23">PR 3.4.2-Os prazos estipulados para a resolução/encaminhamentos das demandas estão de acordo com as legislações vigentes?</label>
                                <select class="form-control" name="S4_P23" id="S4_P23">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P24">PR 3.4.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P24" id="S4_P24"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P25">PR 3.4.3-A sua unidade de Ouvidoria flexibiliza o cumprimento de prazos na hipótese de haver circunstâncias específicas e explicitadas?</label>
                                <select class="form-control" name="S4_P25" id="S4_P25">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P26">PR 3.4.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P26" id="S4_P26"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P27">PR 3.4.4-A sua unidade de Ouvidoria informa para os usuários sobre eventual atraso na resposta de sua manifestação?</label>
                                <select class="form-control" name="S4_P27" id="S4_P27">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P28">PR 3.4.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P28" id="S4_P28"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P29">PR 3.4.5-A sua unidade de Ouvidoria fornece/segue instruções de trabalho para facilitar a resolução dos problemas, com formas de respostas ao cidadão e relatórios à gestão que atendem aos critérios de clareza, objetividade, consistência e coerência?</label>
                                <select class="form-control" name="S4_P29" id="S4_P29">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P30">PR 3.4.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P30" id="S4_P30"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P31">PR 3.4.6-A sua unidade de Ouvidoria é subsidiada com informações internas e externas para promover melhorias no SUS?</label>
                                <select class="form-control" name="S4_P31" id="S4_P31">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P32">PR 3.4.6.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P32" id="S4_P32"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P33">PR 3.4.7-A sua unidade de Ouvidoria articula espaços junto aos órgãos internos e externos, propondo fluxos e respostas adequadas às demandas dos cidadãos?</label>
                                <select class="form-control" name="S4_P33" id="S4_P33">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P34">PR 3.4.7.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P34" id="S4_P34"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P35">PR 3.5.1-A sua unidade de Ouvidoria utiliza meios para informar o fluxo das demandas e para que os cidadãos possam acompanhar o andamento de suas manifestações?</label>
                                <select class="form-control" name="S4_P35" id="S4_P35">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P36">PR 3.5.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P36" id="S4_P36"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P37">PR 3.5.2-A sua unidade de Ouvidoria estimula o engajamento da equipe no processo de trabalho que repercuta no envolvimento dos usuários? Para tanto, desenvolve estratégias e táticas que permitam a produção de conhecimento no trabalho desenvolvido com os cidadãos?</label>
                                <select class="form-control" name="S4_P37" id="S4_P37">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P38">PR 3.5.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P38" id="S4_P38"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P39">PR 3.5.3-A sua unidade de Ouvidoria abre canais de conversação com representantes dos cidadãos/usuários ( Conselhos Gestores Locais e outros), sobre o fluxo de trabalho realizado?</label>
                                <select class="form-control" name="S4_P39" id="S4_P39">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P40">PR 3.5.3.1-Justifique brevemente sua reposta</label>
                                <textarea class="form-control" name="S4_P40" id="S4_P40"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P41">PR 3.5.4-A sua unidade de Ouvidoria promove/dissemina meios de informação aos usuários sobre o trabalho em desenvolvimento, abrindo canais para avaliação de eficácia do trabalho realizado, e demonstrando-lhes preocupação com a defesa de seus direitos?</label>
                                <select class="form-control" name="S4_P41" id="S4_P41">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S4_P42">PR 3.5.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S4_P42" id="S4_P42"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaSessao(5,1)" class="btn-primary btn-sm" value="Avancar">
                    <input type="button" onclick="avancaLocal(4,3,4)" class="btn-primary btn-sm" value="Voltar">
                </div>
            </div>

            <div class="tab collapse show" id="tab5" style="">
                <h3 class="sub_resultado">Resultado</h3>
                <div class="d-flex" style="justify-content: space-around;">
                    <button type="button" data-sessao="S5_Q1" class="btn btn-sm btn-sub_resultado expand">Defesa de Direitos</button>
                    <button type="button" data-sessao="S5_Q2" class="btn btn-sm btn-sub_resultado expand">Integralidade e Intersetorialidade</button>
                    <button type="button" data-sessao="S5_Q3" class="btn btn-sm btn-sub_resultado expand">Inovação</button>
                    <button type="button" data-sessao="S5_Q4" class="btn btn-sm btn-sub_resultado expand">Considerações finais</button>
                </div>
                <div class="collapse" id="S5_Q1" style="">
                    <h4 class="sub_resultado">Defesa de Direitos</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P1">PR 4.1.1-As sugestões da sua unidade de Ouvidoria contribuem para o planejamento e organização da gestão de sua instituição, de modo a promover mudanças em práticas, ações e serviços de saúde?</label>
                                <select class="form-control" name="S5_P1" id="S5_P1">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P2">PR 4.1.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P2" id="S5_P2"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P3">PR 4.1.2-A população atendida percebe as mudanças positivas ao buscar novamente os serviços disponibilizados pela sua unidade de Ouvidoria ?</label>
                                <select class="form-control" name="S5_P3" id="S5_P3">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P4">PR 4.1.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P4" id="S5_P4"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P5">PR 4.1.3-Os usuários se sentem envolvidos na busca de solução quando se manifestam diante da ocorrência de algum problema? As relações entre a sua unidade de Ouvidoria e a Rede de Ouvidorias, com os usuários são abertas ao diálogo, respeitosas e participativas?</label>
                                <select class="form-control" name="S5_P5" id="S5_P5">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P6">PR 4.1.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P6" id="S5_P6"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(5,2,1)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaSessao(4,4)" class="btn-primary btn-sm" value="Voltar">
                </div>

                <div class="collapse" id="S5_Q2" style="">
                    <h4 class="sub_resultado">Integralidade e Intersetorialidade</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P7">PR 4.2.1-A sua unidade de Ouvidoria desenvolve ferramentas capazes de influenciar mudanças nas práticas da gestão, tais como divulgação de relatórios gerenciais e outros tipos de disponibilização de dados, entre outras estratégias?</label>
                                <select class="form-control" name="S5_P7" id="S5_P7">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P8">PR 4.2.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P8" id="S5_P8"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P9">PR 4.2.2-A sua unidade de Ouvidoria promove/participa da relação das ouvidorias entre si e com outros órgãos, setores, instituições, entidades e sociedade civil, propiciando o fortalecimento e a integração das ações e serviços de saúde?</label>
                                <select class="form-control" name="S5_P9" id="S5_P9">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P10">PR 4.2.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P10" id="S5_P10"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P11">PR 4.2.3-A sua unidade de Ouvidoria dispõe de orçamentos definidos de forma transparente, além de recursos externos ou setoriais?</label>
                                <select class="form-control" name="S5_P11" id="S5_P11">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P12">PR 4.2.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P12" id="S5_P12"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(5,3,2)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaLocal(5,1,2)" class="btn-primary btn-sm" value="Volta">
                </div>

                <div class="collapse" id="S5_Q3" style="">
                    <h4 class="sub_resultado">Inovação</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P13">PR 4.3.1-A sua unidade de Ouvidoria busca a efetiva participação da sociedade por meio de novas práticas visando a melhoria no seu desempenho organizacional, sempre levando em consideração a população atendida?</label>
                                <select class="form-control" name="S5_P13" id="S5_P13">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P14">PR 4.3.1.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P14" id="S5_P14"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P15">PR 4.3.2-A gestão da sua unidade de Ouvidoria apoia esforços e ideias que indiquem soluções e melhorias de fluxos de trabalho na busca permanente da eficiência, eficácia e efetividade de suas ações? (Eficiência é a capacidade de obter bons produtos. Eficácia é a capacidade de fazer aquilo que é preciso. Efetividade é a capacidade de promover resultados contínuos).</label>
                                <select class="form-control" name="S5_P15" id="S5_P15">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P16">PR 4.3.2.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P16" id="S5_P16"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P17">PR 4.3.3-A sua unidade de Ouvidoria busca apoio e reconhecimento da sociedade ao produzir mudança em suas práticas? Essas mudanças são percebidas pelos parceiros envolvidos, comunidade e usuários?</label>
                                <select class="form-control" name="S5_P17" id="S5_P17">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P18">PR 4.3.3.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P18" id="S5_P18"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P19">PR 4.3.4-A sua unidade de Ouvidoria oferece condições para uma maior participação da equipe nos processos decisórios?</label>
                                <select class="form-control" name="S5_P19" id="S5_P19">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P20">PR 4.3.4.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P20" id="S5_P20"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P21">PR 4.3.5-A sua unidade de Ouvidoria estimula os membros da equipe a apresentarem ideias inovadoras à gestão?</label>
                                <select class="form-control" name="S5_P21" id="S5_P21">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P22">PR 4.3.5.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P22" id="S5_P22"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P23">PR 4.3.6-A sua unidade de Ouvidoria propõe alternativas que simplifiquem a comunicação com os usuários?</label>
                                <select class="form-control" name="S5_P23" id="S5_P23">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P24">PR 4.3.6.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P24" id="S5_P24"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P25">PR 4.3.7-A sua unidade de Ouvidoria otimiza e aplica todos os instrumentos disponíveis e propõe novas ideias que modernizem a organização do trabalho?</label>
                                <select class="form-control" name="S5_P25" id="S5_P25">
                                    <option value="0" selected="" disabled="">Selecione</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P26">PR 4.3.7.1-Justifique brevemente sua resposta</label>
                                <textarea class="form-control" name="S5_P26" id="S5_P26"></textarea>
                            </div>
                        </div>
                    </div>
                    <input type="button" onclick="avancaLocal(5,4,3)" class="btn-primary btn-sm" value="Avanca">
                    <input type="button" onclick="avancaLocal(5,2,3)" class="btn-primary btn-sm" value="Volta">
                </div>

                <div class="collapse show" id="S5_Q4" style="">
                    <h4 class="sub_resultado">Considerações finais</h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P27">Comente sobre sua experiência em responder esta autoavaliação.</label>
                                <textarea class="form-control" name="S5_P27" id="S5_P27"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label id="lbl_S5_P28">Descreva aqui seus comentários adicionais. (opcional)</label>
                                <textarea class="form-control" name="S5_P28" id="S5_P28"></textarea>
                            </div>
                        </div>
                        <input type="button" onclick="avancaLocal(5,3,4)" class="btn-primary btn-sm" value="Volta">
                    </div>
                    <div class="text-center">
                        <input type="button" onclick="allStorage(), limparAmbiente()" class="btn-white btn-sm" value="Enviar">
                    </div>
                </div>

            </div>

        </div>

        <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="js/index.js"></script>
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>

    </body>


    <script type="text/javascript">

        var objTab = { 'visao': 'tab1', 'infraestrutura': 'tab2', 'gestao': 'tab3', 'processo': 'tab4', 'resultado': 'tab5' }

        //Contole de dependências:

        $(document).ready(e => {
            $("#tab1").collapse('show');
            $("#tab5").collapse('hide');

        })


        $(".modificador").on('change', e => {
            let el = document.getElementById(e.target.id)
            let alvo = el.dataset.target;

            if (el.type != 'select-one') {
                return false;
            }

            if (el.value < 3) {
                $(`#${alvo}`).collapse('show');
            }
            else {
                $(`#${alvo}`).collapse('hide');
                let elements = $(`#${alvo} input, div`);
                [...elements].forEach(e => {
                    if (el.classList.contains('collapse')) {
                        $(`#${el.id}`).collapse('hide')
                    }
                    if (e.type == 'text') {
                        e.value = ''
                    }
                    if (e.type == 'checkbox') {
                        e.checked = false;
                    }
                });
            }
        })



        $(".modificador").on('click', e => {
            let el = document.getElementById(e.target.id)
            let vid = el.id;
            let alvo = el.dataset.target;
            let apagar = el.dataset.clear;
            if (el.type == 'select-one') {
                return false;
            }
            switch (el.type) {
                case 'radio':
                    let acao = vid.substring(vid.length - 3);
                    let camp = vid.substring(0, 6);

                    if (acao == 'sim') {
                        $(`#${alvo}`).collapse('show');
                        window.localStorage.removeItem(camp + '_nao', acao)
                        window.localStorage.setItem(vid, acao)
                    } else {
                        $(`#${apagar}`).val('');
                        $(`#${alvo}`).collapse('hide');
                        window.localStorage.removeItem(camp + '_sim', acao)
                        window.localStorage.setItem(vid, acao)
                        window.localStorage.removeItem(apagar)
                    }
                    break;

                case 'checkbox':
                    if (el.checked) {
                        $(`#${alvo}`).collapse('show');
                    } else {
                        $(`#${apagar}`).val();
                        $(`#${alvo}`).collapse('hide');
                    }
                    break;
            }
        })


        function setValue(key, value) {
            let el = document.getElementById(key);
            if (el.type == 'checkbox' && el.checked) {
                window.localStorage.setItem(key, value);
            }

            if (el.type == 'checkbox' && !el.checked) {
                window.localStorage.removeItem(key);
            }

            if (el.type == 'input' || el.type == 'select-one' || el.type == 'textarea') {
                window.localStorage.setItem(key, value);
            }

        }

        $("select,input[type='checkbox']").on('change', e => {
            setValue(e.target.id, e.target.value)
        });


        $("input[type='text'], textarea").on('focusout', e => {
            setValue(e.target.id, e.target.value)
            window.localStorage.setItem(e.target.id, e.target.value);

        });

        function showReload() {
            let campos = $('input, select, textarea');
            [...campos].forEach(e => {
                ;

                let vid = e.id;
                let value = localStorage.getItem(vid);


                if (value !== null) {

                    if (vid == 'S2_P6' && value < 3) {

                        $("#row_S2_P7").collapse('show');
                    }

                    if (vid == 'S2_P7_E' && value == 'Outros') {

                        $("#S2_P7_outros").collapse('show');
                    }

                }

            });
        }

        function showReload2() {
            let campos = $('input, select, textarea');
            [...campos].forEach(e => {
                ;

                let vid = e.id;
                let value = localStorage.getItem(vid);


                if (value !== null) {

                    if (value == 'sim') {
                        $(`#${e.dataset.target}`).collapse('show');
                        console.log(e.dataset.target)
                    }

                }

            });
        }

        $(".expand").on('click', e => {
            let sessaoSolicitada = e.target.dataset.sessao;

            for (let i = 1; i < 6; i++) {
                const v = sessaoSolicitada.substr(0, sessaoSolicitada.length - 1);
                const el = `${v}${i}`;

                try {
                    $(`#${el}`).collapse('hide')

                } catch (error) {

                }

                $(`#${sessaoSolicitada}`).collapse('show');


            }

        })

        function hideAll() {
            let v = $('.collapse');
            [...v].forEach(e => {
                $(`#${e.id}`).collapse('hide');

            });

        }

        function fnMostrar(tab) {
            let vid = tab.dataset.itemmenu
            hideAll();
            showReload();
            let vtab = eval(`objTab.${vid}`);
            $(`#${vtab}`).collapse('show')




        }

        function S2_P7_E() {

            if ($("#S2_P7_E").prop('checked')) {
                $("#S2_P7_outros").collapse('show')



            } else {
                $("#S2_P7_F").val('')
                $("#S2_P7_outros").collapse('show')



            }


        }

        function avancaSessao(l, s) {
            hideAll();
            let local = "tab" + l
            let sessao = "S" + l + "_Q" + s

            $(`#${local}`).collapse('show');
            $(`#${sessao}`).collapse('show');
            window.scrollTo(0, 0);



        }

        function avancaLocal(d1, d2, r1) {
            r1
            let local = "S" + d1 + "_Q" + r1
            let number = "S" + d1 + "_Q" + d2


            $(`#${number}`).collapse('show')
            $(`#${local}`).collapse('hide')
            window.scrollTo(0, 0)

        }

        $("#S2_P7_E").on('change', () => {
            S2_P7_E();

        })

        //Controle de collapses

        function listaPerguntas() {
            return new Promise((resolve, reject) => {

                $.post("consulta.php", {}, function (data) {
                    if (data) {
                        resolve(data);
                    } else {
                        reject('')
                    }
                }, "json");
            });
        }

        function colocarCabecalhos(data) {
            for (let i = 0; i < data.length; i++) {
                const el = data[i];

                let vtext = el.pergunta;
                let vlbl = el.cod_campo;
                $(`#lbl_${vlbl}`).text(vtext)
                showReload2()

            }
        }

        function aplicarValor(vid, value) {

            let el = document.getElementById(vid);

            el.value = value;

            // switch (el.type) {
            //     case value:

            //         break;

            //     default:
            //         break;
            // }
        }

        //check box

        function recuperarDados() {
            let campos = $('input, select, textarea');
            [...campos].forEach(e => {
                ;
                let vid = e.id;
                let value = localStorage.getItem(vid);
                let ex = document.getElementById(vid);



                if (value !== null) {

                    aplicarValor(vid, value)


                    if (ex.type == 'checkbox') {
                        ex.checked = true;
                    }
                    if (ex.type == 'radio') {
                        ex.checked = true;
                    }



                }

            });
        }

        $(document).ready(async e => {
            res = await listaPerguntas();
            colocarCabecalhos(res)
            recuperarDados();
            $("#tab1").collapse('show');

        });

        //$(".menu").on('click',(e)=>{
        //    let vid = e.target.dataset.itemmenu;
        //    console.log(`clicou em: ${vid}`);
        //})
        //
        //

        function allStorage() {
            let archive = [],
                keys = Object.keys(localStorage),
                i = 0, key;

            for (; key = keys[i]; i++) {
                archive.push(key + '=' + localStorage.getItem(key));
            }
            JSON.stringify(archive)
            return archive;
        }

//limpa a janela
//function limparAmbiente(){
//    localStorage.clear()
  // location.reload()
//}


//console.log(allStorage())
//id.reset

    </script>

    </html>
</asp:Content>

<asp:Content ID="cRightMenu" runat="server" ContentPlaceHolderID="cphRight">
    <uc1:ucRightMenu ID="UcRightMenu1" runat="server" />
</asp:Content>
