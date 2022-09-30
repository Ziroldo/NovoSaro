////namespace Formulario
////{
////    using System;
////    using System.Collections.Generic;

////    using System.Globalization;
////    using Newtonsoft.Json;
////    using Newtonsoft.Json.Converters;

////    public partial class Enunciados
////    {
////        [JsonProperty("pergunta")]
////        public string Pergunta { get; set; }

////        [JsonProperty("cod_campo")]
////        public string CodCampo { get; set; }
////    }

////    public partial class Enunciados
////    {
////        public static List<Enunciados> FromJson(string json)
////        {
////            return JsonConvert.DeserializeObject<List<Enunciados>>(json, Formulario.Converter.Settings);
////        }
////    }

////    public static class Serialize
////    {
////        public static string ToJson(List<Enunciados> self)
////        {
////            return JsonConvert.SerializeObject(self, Formulario.Converter.Settings);
////        }
////    }

////    internal static class Converter
////    {
////        public static readonly JsonSerializerSettings Settings = new JsonSerializerSettings
////        {
////            MetadataPropertyHandling = MetadataPropertyHandling.Ignore,
////            DateParseHandling = DateParseHandling.None,
////            Converters =
////            {
////                new IsoDateTimeConverter { DateTimeStyles = DateTimeStyles.AssumeUniversal }
////            },
////        };
////    }
////}

////namespace PerguntaJason
////{
////	class MyClass
////	{
////		static void Main(string[] args)
////		{
////			string valor = "{\"pergunta\":\"Nome (opcional)\",\"cod_campo\":\"S1_P1\"},{\"pergunta\":\"Qual seu cargo na sua organiza\\u00e7\\u00e3o?\",\"cod_campo\":\"S1_P2\"},{\"pergunta\":\"Independente do cargo que voc\\u00ea ocupa na sua organiza\\u00e7\\u00e3o, voc\\u00ea possui gradua\\u00e7\\u00e3o em n\\u00edvel superior? Se sim, responda qual (quais)\",\"cod_campo\":\"S1_P3\"},{\"pergunta\":\"quais gradua\\u00e7\\u00f5es\",\"cod_campo\":\"S1_P4\"},{\"pergunta\":\"Voc\\u00ea possui alguma (s) especializa\\u00e7\\u00e3o? se sim, responda qual (quais)\",\"cod_campo\":\"S1_P5\"},{\"pergunta\":\"quais especializa\\u00e7\\u00f5es\",\"cod_campo\":\"S1_P6\"},{\"pergunta\":\"Qual sua fun\\u00e7\\u00e3o na sua unidade de Ouvidoria ?\",\"cod_campo\":\"S1_P7\"},{\"pergunta\":\"Qual seu regime de contrata\\u00e7\\u00e3o?\",\"cod_campo\":\"S1_P8\"},{\"pergunta\":\"H\\u00e1 quanto tempo voc\\u00ea trabalha na sua organiza\\u00e7\\u00e3o ?\",\"cod_campo\":\"S1_P9\"},{\"pergunta\":\"H\\u00e1 quanto tempo voc\\u00ea trabalha na sua unidade de Ouvidoria?\",\"cod_campo\":\"S1_P10\"},{\"pergunta\":\"Antes de trabalhar na sua unidade de Ouvidoria, trabalhou em outra Ouvidoria? Se sim, especifique em qual no campo \\\"Outros\\\"\",\"cod_campo\":\"S1_P11\"},{\"pergunta\":\"quais ouvidorias\",\"cod_campo\":\"S1_P12\"},{\"pergunta\":\"Qual o seu n\\u00edvel de conhecimento em excel?\",\"cod_campo\":\"S1_P13\"},{\"pergunta\":\"Na sua opini\\u00e3o quais s\\u00e3o os pontos fortes do trabalho desta unidade de Ouvidoria?\",\"cod_campo\":\"S1_P14\"},{\"pergunta\":\"Na sua opini\\u00e3o quais s\\u00e3o as oportunidades de melhoria no trabalho desta unidade de Ouvidoria?\",\"cod_campo\":\"S1_P15\"},{\"pergunta\":\"Voc\\u00ea sente necessidade de alguma capacita\\u00e7\\u00e3o\\/treinamento espec\\u00edfico que possa melhorar sua performance no trabalho? Se sim descreva.\",\"cod_campo\":\"S1_P16\"},{\"pergunta\":\"quais capacita\\u00e7\\u00f5es\",\"cod_campo\":\"S1_P17\"},{\"pergunta\":\"PR 1.1.1-A sua unidade de Ouvidoria admite seus trabalhadores e gestores a partir de perfis espec\\u00edficos? (conhecimentos, habilidades e atitudes)?\",\"cod_campo\":\"S2_P1\"},{\"pergunta\":\"PR 1.1.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P2\"},{\"pergunta\":\"PR 1.1.2.1-O quadro de pessoal da sua unidade de Ouvidoria est\\u00e1 em quantidade adequada ao funcionamento da ouvidoria.?\",\"cod_campo\":\"S2_P3\"},{\"pergunta\":\"PR 1.1.2.1.1-Caso na quest\\u00e3o anterior sua resposta tenha sido as op\\u00e7\\u00f5es 1 ou 2, explicite o(s) motivo (os) escolhendo uma ou mais op\\u00e7\\u00f5es abaixo\",\"cod_campo\":\"S2_P4\"},{\"pergunta\":\"PR 1.1.2.1.2-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P5\"},{\"pergunta\":\"PR 1.1.2.2-O quadro de pessoal da sua unidade de Ouvidoria est\\u00e1 em qualidade adequada ao funcionamento da ouvidoria.?\",\"cod_campo\":\"S2_P6\"},{\"pergunta\":\"PR 1.1.2.2.1-Caso a sua resposta \\u00e0 quest\\u00e3o acima tenha sido as op\\u00e7\\u00f5es 1 ou 2, explicite o(s) motivo(s) escolhendo uma ou mais op\\u00e7\\u00f5es\",\"cod_campo\":\"S2_P7\"},{\"pergunta\":\"PR 1.1.2.2.2-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P8\"},{\"pergunta\":\"PR 1.1.3-As atribui\\u00e7\\u00f5es e as a\\u00e7\\u00f5es desenvolvidas por sua unidade de Ouvidoria s\\u00e3o conhecidas e aplicadas pela equipe?\",\"cod_campo\":\"S2_P9\"},{\"pergunta\":\"PR 1.1.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P10\"},{\"pergunta\":\"PR 1.1.4-A sua unidade de Ouvidoria promove a qualifica\\u00e7\\u00e3o e atualiza\\u00e7\\u00e3o do seu quadro de pessoal, de forma continuada?\",\"cod_campo\":\"S2_P11\"},{\"pergunta\":\"PR 1.1.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P12\"},{\"pergunta\":\"PR 1.1.5.1-Para realizar a an\\u00e1lise das manifesta\\u00e7\\u00f5es dos usu\\u00e1rios e realizar a gest\\u00e3o das mesmas, os membros da equipe da sua unidade de Ouvidoria recebem uma capacita\\u00e7\\u00e3o pr\\u00e9via antes de iniciarem o trabalho no setor, composto de conhecimentos, habilidades e atitudes que os auxiliem nas suas atribui\\u00e7\\u00f5es no setor?\",\"cod_campo\":\"S2_P13\"},{\"pergunta\":\"PR 1.1.5.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P14\"},{\"pergunta\":\"PR 1.1.5.2 -Voc\\u00ea participou de alguma forma\\u00e7\\u00e3o em Ouvidoria? Marque uma ou mais alternativas.\",\"cod_campo\":\"S2_P15\"},{\"pergunta\":\"PR 1.1.5.3 -Voc\\u00ea participou de alguma forma\\u00e7\\u00e3o sobre a Lei Geral de Prote\\u00e7\\u00e3o de Dados (LGPD)? Marque uma ou mais alternativas.\",\"cod_campo\":\"S2_P16\"},{\"pergunta\":\"PR 1.1.5.4 -Voc\\u00ea participou de alguma forma\\u00e7\\u00e3o sobre a Lei de Acesso a Informa\\u00e7\\u00e3o (LAI) ? Marque uma ou mais alternativas.\",\"cod_campo\":\"S2_P17\"},{\"pergunta\":\"PR 1.1.5.5 -Voc\\u00ea participou de alguma forma\\u00e7\\u00e3o sobre a Media\\u00e7\\u00e3o de Conflitos ? Marque uma ou mais alternativas.\",\"cod_campo\":\"S2_P18\"},{\"pergunta\":\"PR 1.1.6.1-Os princ\\u00edpios e diretrizes do SUS, da administra\\u00e7\\u00e3o p\\u00fablica e da estrutura da sa\\u00fade municipal s\\u00e3o disseminados nos processos de forma\\u00e7\\u00e3o dos trabalhadores da sua unidade de Ouvidoria (considerar tamb\\u00e9m forma\\u00e7\\u00f5es anteriores)?\",\"cod_campo\":\"S2_P19\"},{\"pergunta\":\"PR 1.1.6.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P20\"},{\"pergunta\":\"PR 1.1.6.2-As legisla\\u00e7\\u00f5es vigentes a respeito de Ouvidoria s\\u00e3o de conhecimento da equipe da sua unidade de Ouvidoria?\",\"cod_campo\":\"S2_P21\"},{\"pergunta\":\"PR 1.1.6.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P22\"},{\"pergunta\":\"PR 1.2.1-O ambiente f\\u00edsico da sua unidade de Ouvidoria \\u00e9 de f\\u00e1cil identifica\\u00e7\\u00e3o visual, e proporciona facilidade de acesso nos casos de atendimento presencial que venham a ocorrer e para membros de outras equipes de sua organiza\\u00e7\\u00e3o (hospital, CRS, STS, HSPM, SAMU, outros) ?\",\"cod_campo\":\"S2_P23\"},{\"pergunta\":\"PR 1.2.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P24\"},{\"pergunta\":\"PR 1.2.2.1-A sua unidade de Ouvidoria disp\\u00f5e de ambiente exclusivo para o desenvolvimento das suas fun\\u00e7\\u00f5es, proporcionando visibilidade aos demais setores de sua organiza\\u00e7\\u00e3o?\",\"cod_campo\":\"S2_P25\"},{\"pergunta\":\"PR 1.2.2.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P26\"},{\"pergunta\":\"PR 1.2.2.2-O espa\\u00e7o f\\u00edsico onde est\\u00e1 instalada a sua unidade de Ouvidoria conta com boa ilumina\\u00e7\\u00e3o, boa ventila\\u00e7\\u00e3o e \\u00e1rea f\\u00edsica adequada?\",\"cod_campo\":\"S2_P27\"},{\"pergunta\":\"PR 1.2.2.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P28\"},{\"pergunta\":\"PR 1.2.3.1-O mobili\\u00e1rio da sua unidade de Ouvidoria \\u00e9 confort\\u00e1vel, limpo e conservado?\",\"cod_campo\":\"S2_P29\"},{\"pergunta\":\"PR 1.2.3.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P30\"},{\"pergunta\":\"PR 1.2.3.2-H\\u00e1 disponibilidade de recursos para aquisi\\u00e7\\u00e3o, manuten\\u00e7\\u00e3o e melhorias no espa\\u00e7o f\\u00edsico da sua unidade de Ouvidoria?\",\"cod_campo\":\"S2_P31\"},{\"pergunta\":\"PR 1.2.3.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P32\"},{\"pergunta\":\"PR 1.2.4-A sua unidade de Ouvidoria possui boa conex\\u00e3o por meio telef\\u00f4nico?\",\"cod_campo\":\"S2_P33\"},{\"pergunta\":\"PR 1.2.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P34\"},{\"pergunta\":\"PR 1.2.5-Na sua unidade de Ouvidoria, h\\u00e1 equipamentos de inform\\u00e1tica dispon\\u00edveis e em quantidade suficiente para os membros da equipe realizarem suas atividades?\",\"cod_campo\":\"S2_P35\"},{\"pergunta\":\"PR 1.2.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P36\"},{\"pergunta\":\"PR 1.2.6-A sua unidade de Ouvidoria possui boa conex\\u00e3o com a internet, de modo a permitir a dissemina\\u00e7\\u00e3o de informa\\u00e7\\u00f5es, registro e tratamento de manifesta\\u00e7\\u00f5es, bem como integra\\u00e7\\u00e3o com outros sistemas necess\\u00e1rios para a realiza\\u00e7\\u00e3o do trabalho?\",\"cod_campo\":\"S2_P37\"},{\"pergunta\":\"PR 1.2.6.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P38\"},{\"pergunta\":\"PR 1.2.7-As redes el\\u00e9trica, hidr\\u00e1ulica e de esgoto dispon\\u00edveis para utiliza\\u00e7\\u00e3o da equipe da sua unidade de Ouvidoria s\\u00e3o adequadas?\",\"cod_campo\":\"S2_P39\"},{\"pergunta\":\"PR 1.2.7.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P40\"},{\"pergunta\":\"PR 1.3.1-A sua unidade de Ouvidoria est\\u00e1 institu\\u00edda por portaria publicada no Di\\u00e1rio Oficial da Cidade ou outro veiculo de informa\\u00e7\\u00e3o oficial (5 para sim, 1 para n\\u00e3o) ?\",\"cod_campo\":\"S2_P41\"},{\"pergunta\":\"PR 1.3.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P42\"},{\"pergunta\":\"PR 1.3.2-As fun\\u00e7\\u00f5es, atribui\\u00e7\\u00f5es, organogramas e prazos da sua unidade de Ouvidoria est\\u00e3o definidos e publicados em portarias publicadas em Di\\u00e1rio Oficial?\",\"cod_campo\":\"S2_P43\"},{\"pergunta\":\"PR 1.3.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P44\"},{\"pergunta\":\"PR 1.3.3-A sua unidade de Ouvidoria possui autonomia financeira para a programa\\u00e7\\u00e3o e execu\\u00e7\\u00e3o das atividades (5 para sim, 1 para n\\u00e3o) ?\",\"cod_campo\":\"S2_P45\"},{\"pergunta\":\"PR 1.3.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P46\"},{\"pergunta\":\"PR 1.3.4-A sua unidade de Ouvidoria tem autonomia na execu\\u00e7\\u00e3o do or\\u00e7amento, previamente definido pela organiza\\u00e7\\u00e3o \\u00e0 qual est\\u00e1 vinculada (5 para sim, 1 para n\\u00e3o) ?\",\"cod_campo\":\"S2_P47\"},{\"pergunta\":\"PR 1.3.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S2_P48\"},{\"pergunta\":\"PR 2.1.1-As manifesta\\u00e7\\u00f5es e seu tratamento s\\u00e3o abordadas nos processos de educa\\u00e7\\u00e3o permanente disponibilizados ou divulgados pela sua unidade de Ouvidoria?\",\"cod_campo\":\"S3_P1\"},{\"pergunta\":\"PR 2.1.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P2\"},{\"pergunta\":\"PR 2.1.2-Os fluxos administrativos da sua unidade de Ouvidoria s\\u00e3o explicitamente definidos e compreendidos pelos membros da equipe envolvidos?\",\"cod_campo\":\"S3_P3\"},{\"pergunta\":\"PR 2.1.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P4\"},{\"pergunta\":\"PR 2.1.3-A gest\\u00e3o da sua unidade de Ouvidoria estimula o desenvolvimento\\/participa\\u00e7\\u00e3o em pol\\u00edticas de qualifica\\u00e7\\u00e3o profissional e de educa\\u00e7\\u00e3o permanente para a equipe?\",\"cod_campo\":\"S3_P5\"},{\"pergunta\":\"PR 2.1.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P6\"},{\"pergunta\":\"PR 2.1.4-A gest\\u00e3o da sua unidade de Ouvidoria favorece\\/participa da constitui\\u00e7\\u00e3o de espa\\u00e7os de educa\\u00e7\\u00e3o permanente no \\u00e2mbito interno ou externo de sua organiza\\u00e7\\u00e3o?\",\"cod_campo\":\"S3_P7\"},{\"pergunta\":\"PR 2.1.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P8\"},{\"pergunta\":\"PR 2.1.5-Os trabalhadores da sua unidade de Ouvidoria integram um plano de cargos, carreiras e sal\\u00e1rios?\",\"cod_campo\":\"S3_P9\"},{\"pergunta\":\"PR 2.1.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P10\"},{\"pergunta\":\"PR 2.1.6-A sua unidade de Ouvidoria elabora um planejamento coletivo das a\\u00e7\\u00f5es?\",\"cod_campo\":\"S3_P11\"},{\"pergunta\":\"PR 2.1.6.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P12\"},{\"pergunta\":\"PR 2.1.7-Os trabalhadores da sua unidade de Ouvidoria possuem v\\u00ednculos institucionais alinhados aos direitos\\/leis trabalhistas em vigor na sua organiza\\u00e7\\u00e3o?\",\"cod_campo\":\"S3_P13\"},{\"pergunta\":\"PR 2.1.7.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P14\"},{\"pergunta\":\"PR 2.1.8-A sua unidade de Ouvidoria faz gest\\u00e3o de materiais de consumo?\",\"cod_campo\":\"S3_P15\"},{\"pergunta\":\"PR 2.1.8.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P16\"},{\"pergunta\":\"PR 2.2.1-A sua unidade de Ouvidoria disp\\u00f5e de instrumentos sistem\\u00e1ticos de coleta de dados?\",\"cod_campo\":\"S3_P17\"},{\"pergunta\":\"PR 2.2.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P18\"},{\"pergunta\":\"PR 2.2.2-Os dados coletados pela sua unidade de Ouvidoria s\\u00e3o processados de forma adequada para an\\u00e1lise e manuten\\u00e7\\u00e3o de registros?\",\"cod_campo\":\"S3_P19\"},{\"pergunta\":\"PR 2.2.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P20\"},{\"pergunta\":\"PR 2.2.3-A an\\u00e1lise dos dados \\u00e9 realizada pela sua unidade de Ouvidoria em forma de relat\\u00f3rios e outros mecanismos gerenciais, de modo quantitativo e qualitativo, para, assim, atender \\u00e0s demandas da gest\\u00e3o e o que \\u00e9 previsto em legisla\\u00e7\\u00e3o?\",\"cod_campo\":\"S3_P21\"},{\"pergunta\":\"PR 2.2.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P22\"},{\"pergunta\":\"PR 2.2.4-Os relat\\u00f3rios s\\u00e3o elaborados e publicizados periodicamente, informando sobre os dados previstos em legisla\\u00e7\\u00e3o e outros de import\\u00e2ncia para a gest\\u00e3o?\",\"cod_campo\":\"S3_P23\"},{\"pergunta\":\"PR 2.2.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P24\"},{\"pergunta\":\"PR 2.2.5-A sua unidade de Ouvidoria implanta ou participa de processos de avalia\\u00e7\\u00e3o da qualidade da informa\\u00e7\\u00e3o produzida e seus efeitos na gest\\u00e3o do SUS?\",\"cod_campo\":\"S3_P25\"},{\"pergunta\":\"PR 2.2.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P26\"},{\"pergunta\":\"PR 2.3.1-A sua unidade de Ouvidoria promove ou participa de encontros (presenciais ou por ferramentas virtuais) com a equipe interna e com a Rede de Ouvidorias para discuss\\u00f5es e compartilhamento de informa\\u00e7\\u00f5es e dos conhecimentos produzidos?\",\"cod_campo\":\"S3_P27\"},{\"pergunta\":\"PR 2.3.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P28\"},{\"pergunta\":\"PR 2.3.2-A sua unidade de Ouvidoria implanta ou participa de estrat\\u00e9gias de divulga\\u00e7\\u00e3o do papel e dos resultados do trabalho visando melhoria nos servi\\u00e7os de sa\\u00fade prestados \\u00e0 popula\\u00e7\\u00e3o?\",\"cod_campo\":\"S3_P29\"},{\"pergunta\":\"PR 2.3.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P30\"},{\"pergunta\":\"PR 2.3.3-A sua unidade de Ouvidoria desenvolve estrat\\u00e9gias de contato com os grupos organizados, como Conselho Gestor e outros no sentido de subsidi\\u00e1-los com informa\\u00e7\\u00f5es e em busca de novos dados?\",\"cod_campo\":\"S3_P31\"},{\"pergunta\":\"PR 2.3.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P32\"},{\"pergunta\":\"PR 2.3.4-A sua unidade de Ouvidoria adota, periodicamente, um sistema de conhecimento\\/ci\\u00eancia\\/atualiza\\u00e7\\u00e3o\\/revis\\u00e3o das publica\\u00e7\\u00f5es produzidas pela \\u00e1rea interna ou Rede de Ouvidoria, como conte\\u00fado na p\\u00e1gina da Ouvidoria na Internet, folders, regimentos internos, etc?\",\"cod_campo\":\"S3_P33\"},{\"pergunta\":\"PR 2.3.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P34\"},{\"pergunta\":\"PR 2.3.5-A sua unidade de Ouvidoria est\\u00e1 articulada de forma clara, objetiva e compreens\\u00edvel com as demais \\u00e1reas t\\u00e9cnicas da sua organiza\\u00e7\\u00e3o\\/sub-redes, com a Rede de Ouvidorias, com o Conselho Gestor e outras inst\\u00e2ncias, de forma que as demandas dos usu\\u00e1rios sejam reconhecidas e valorizadas?\",\"cod_campo\":\"S3_P35\"},{\"pergunta\":\"PR 2.3.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S3_P36\"},{\"pergunta\":\"PR 3.1.1-A sua unidade de Ouvidoria disponibiliza e avalia, sistematicamente, os meios f\\u00edsicos e virtuais de chegada, entrada, utiliza\\u00e7\\u00e3o e participa\\u00e7\\u00e3o dos usu\\u00e1rios para que eles possam interagir com Rede de Ouvidoria por meio de uma comunica\\u00e7\\u00e3o qualificada e humanizada, de modo a facilitar suas manifesta\\u00e7\\u00f5es?\",\"cod_campo\":\"S4_P1\"},{\"pergunta\":\"PR 3.1.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P2\"},{\"pergunta\":\"PR 3.1.2-A sua unidade de Ouvidoria disponibiliza meios pelos quais os cidad\\u00e3os possam avaliar as a\\u00e7\\u00f5es e servi\\u00e7os de sa\\u00fade?\",\"cod_campo\":\"S4_P3\"},{\"pergunta\":\"PR 3.1.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P4\"},{\"pergunta\":\"PR 3.2.1.1-A sua unidade de Ouvidoria compartilha informa\\u00e7\\u00f5es, e discute dados e resultados por meio de uma agenda regular com outras inst\\u00e2ncias gestoras\\/ \\u00e1reas t\\u00e9cnicas de sua instiui\\u00e7\\u00e3o?\",\"cod_campo\":\"S4_P5\"},{\"pergunta\":\"PR 3.2.1.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P6\"},{\"pergunta\":\"PR 3.2.1.2-A sua unidade de Ouvidoria compartilha informa\\u00e7\\u00f5es com sua rede interna e externa a fim de intermediar resolu\\u00e7\\u00f5es para atender as necessidades das ouvidorias e as manifesta\\u00e7\\u00f5es dos cidad\\u00e3os?\",\"cod_campo\":\"S4_P7\"},{\"pergunta\":\"PR 3.2.1.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P8\"},{\"pergunta\":\"PR 3.2.2-A sua unidade de Ouvidoria desenvolve junto \\u00e0s inst\\u00e2ncias gestoras de sua organiza\\u00e7\\u00e3o e Rede de Ouvidoria, a\\u00e7\\u00f5es visando resolu\\u00e7\\u00e3o de problemas indicados nas manifesta\\u00e7\\u00f5es dos usu\\u00e1rios?\",\"cod_campo\":\"S4_P9\"},{\"pergunta\":\"PR 3.2.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P10\"},{\"pergunta\":\"PR 3.2.3-As inst\\u00e2ncias gestoras de sua instiui\\u00e7\\u00e3o solicitam e utilizam informa\\u00e7\\u00f5es da sua unidade de Ouvidoria para se articular com outros \\u00f3rg\\u00e3os e com a sociedade civil, na busca da resolu\\u00e7\\u00e3o de problemas espec\\u00edficos e melhorias nos servi\\u00e7os de sa\\u00fade?\",\"cod_campo\":\"S4_P11\"},{\"pergunta\":\"PR 3.2.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P12\"},{\"pergunta\":\"PR 3.3.1-A sua unidade de Ouvidoria monitora se as manifesta\\u00e7\\u00f5es s\\u00e3o tratadas respeitando as singularidades e as diferen\\u00e7as entre as pessoas, em suas prefer\\u00eancias, valores e escolhas, a fim de facilitar a intera\\u00e7\\u00e3o dos usu\\u00e1rios?\",\"cod_campo\":\"S4_P13\"},{\"pergunta\":\"PR 3.3.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P14\"},{\"pergunta\":\"PR 3.3.2-A sua unidade de Ouvidoria monitora os fluxos, prazos e processos no tratamento de demandas, levando em considera\\u00e7\\u00e3o os contextos locais e em conformidade com a legisla\\u00e7\\u00e3o e documenta\\u00e7\\u00e3o existentes?\",\"cod_campo\":\"S4_P15\"},{\"pergunta\":\"PR 3.3.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P16\"},{\"pergunta\":\"PR 3.3.3-A sua unidade de Ouvidoria propicia condi\\u00e7\\u00f5es aos trabalhadores da equipe para que possam avaliar as etapas do tratamento de manifesta\\u00e7\\u00f5es dos usu\\u00e1rios, permitindo corre\\u00e7\\u00f5es e aperfei\\u00e7oamento dessas pr\\u00e1ticas?\",\"cod_campo\":\"S4_P17\"},{\"pergunta\":\"PR 3.3.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P18\"},{\"pergunta\":\"PR 3.3.4-A sua unidade de Ouvidoria verifica se as manifesta\\u00e7\\u00f5es dos usu\\u00e1rios s\\u00e3o tratadas por todos os que atuem na organiza\\u00e7\\u00e3o\\/sub-rede interna considerando os princ\\u00edpios do SUS, respeitando os valores individuais e coletivos e os fatos com a devida agilidade?\",\"cod_campo\":\"S4_P19\"},{\"pergunta\":\"PR 3.3.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P20\"},{\"pergunta\":\"PR 3.4.1-A sua unidade de Ouvidoria divulga, define e monitora os prazos para as respostas encaminhadas para as \\u00e1reas t\\u00e9cnicas de sua sub-rede?\",\"cod_campo\":\"S4_P21\"},{\"pergunta\":\"PR 3.4.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P22\"},{\"pergunta\":\"PR 3.4.2-Os prazos estipulados para a resolu\\u00e7\\u00e3o\\/encaminhamentos das demandas est\\u00e3o de acordo com as legisla\\u00e7\\u00f5es vigentes?\",\"cod_campo\":\"S4_P23\"},{\"pergunta\":\"PR 3.4.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P24\"},{\"pergunta\":\"PR 3.4.3-A sua unidade de Ouvidoria flexibiliza o cumprimento de prazos na hip\\u00f3tese de haver circunst\\u00e2ncias espec\\u00edficas e explicitadas?\",\"cod_campo\":\"S4_P25\"},{\"pergunta\":\"PR 3.4.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P26\"},{\"pergunta\":\"PR 3.4.4-A sua unidade de Ouvidoria informa para os usu\\u00e1rios sobre eventual atraso na resposta de sua manifesta\\u00e7\\u00e3o?\",\"cod_campo\":\"S4_P27\"},{\"pergunta\":\"PR 3.4.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P28\"},{\"pergunta\":\"PR 3.4.5-A sua unidade de Ouvidoria fornece\\/segue instru\\u00e7\\u00f5es de trabalho para facilitar a resolu\\u00e7\\u00e3o dos problemas, com formas de respostas ao cidad\\u00e3o e relat\\u00f3rios \\u00e0 gest\\u00e3o que atendem aos crit\\u00e9rios de clareza, objetividade, consist\\u00eancia e coer\\u00eancia?\",\"cod_campo\":\"S4_P29\"},{\"pergunta\":\"PR 3.4.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P30\"},{\"pergunta\":\"PR 3.4.6-A sua unidade de Ouvidoria \\u00e9 subsidiada com informa\\u00e7\\u00f5es internas e externas para promover melhorias no SUS?\",\"cod_campo\":\"S4_P31\"},{\"pergunta\":\"PR 3.4.6.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P32\"},{\"pergunta\":\"PR 3.4.7-A sua unidade de Ouvidoria articula espa\\u00e7os junto aos \\u00f3rg\\u00e3os internos e externos, propondo fluxos e respostas adequadas \\u00e0s demandas dos cidad\\u00e3os?\",\"cod_campo\":\"S4_P33\"},{\"pergunta\":\"PR 3.4.7.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P34\"},{\"pergunta\":\"PR 3.5.1-A sua unidade de Ouvidoria utiliza meios para informar o fluxo das demandas e para que os cidad\\u00e3os possam acompanhar o andamento de suas manifesta\\u00e7\\u00f5es?\",\"cod_campo\":\"S4_P35\"},{\"pergunta\":\"PR 3.5.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P36\"},{\"pergunta\":\"PR 3.5.2-A sua unidade de Ouvidoria estimula o engajamento da equipe no processo de trabalho que repercuta no envolvimento dos usu\\u00e1rios? Para tanto, desenvolve estrat\\u00e9gias e t\\u00e1ticas que permitam a produ\\u00e7\\u00e3o de conhecimento no trabalho desenvolvido com os cidad\\u00e3os?\",\"cod_campo\":\"S4_P37\"},{\"pergunta\":\"PR 3.5.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P38\"},{\"pergunta\":\"PR 3.5.3-A sua unidade de Ouvidoria abre canais de conversa\\u00e7\\u00e3o com representantes dos cidad\\u00e3os\\/usu\\u00e1rios ( Conselhos Gestores Locais e outros), sobre o fluxo de trabalho realizado?\",\"cod_campo\":\"S4_P39\"},{\"pergunta\":\"PR 3.5.3.1-Justifique brevemente sua reposta\",\"cod_campo\":\"S4_P40\"},{\"pergunta\":\"PR 3.5.4-A sua unidade de Ouvidoria promove\\/dissemina meios de informa\\u00e7\\u00e3o aos usu\\u00e1rios sobre o trabalho em desenvolvimento, abrindo canais para avalia\\u00e7\\u00e3o de efic\\u00e1cia do trabalho realizado, e demonstrando-lhes preocupa\\u00e7\\u00e3o com a defesa de seus direitos?\",\"cod_campo\":\"S4_P41\"},{\"pergunta\":\"PR 3.5.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S4_P42\"},{\"pergunta\":\"PR 4.1.1-As sugest\\u00f5es da sua unidade de Ouvidoria contribuem para o planejamento e organiza\\u00e7\\u00e3o da gest\\u00e3o de sua institui\\u00e7\\u00e3o, de modo a promover mudan\\u00e7as em pr\\u00e1ticas, a\\u00e7\\u00f5es e servi\\u00e7os de sa\\u00fade?\",\"cod_campo\":\"S5_P1\"},{\"pergunta\":\"PR 4.1.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P2\"},{\"pergunta\":\"PR 4.1.2-A popula\\u00e7\\u00e3o atendida percebe as mudan\\u00e7as positivas ao buscar novamente os servi\\u00e7os disponibilizados pela sua unidade de Ouvidoria ?\",\"cod_campo\":\"S5_P3\"},{\"pergunta\":\"PR 4.1.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P4\"},{\"pergunta\":\"PR 4.1.3-Os usu\\u00e1rios se sentem envolvidos na busca de solu\\u00e7\\u00e3o quando se manifestam diante da ocorr\\u00eancia de algum problema? As rela\\u00e7\\u00f5es entre a sua unidade de Ouvidoria e a Rede de Ouvidorias, com os usu\\u00e1rios s\\u00e3o abertas ao di\\u00e1logo, respeitosas e participativas?\",\"cod_campo\":\"S5_P5\"},{\"pergunta\":\"PR 4.1.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P6\"},{\"pergunta\":\"PR 4.2.1-A sua unidade de Ouvidoria desenvolve ferramentas capazes de influenciar mudan\\u00e7as nas pr\\u00e1ticas da gest\\u00e3o, tais como divulga\\u00e7\\u00e3o de relat\\u00f3rios gerenciais e outros tipos de disponibiliza\\u00e7\\u00e3o de dados, entre outras estrat\\u00e9gias?\",\"cod_campo\":\"S5_P7\"},{\"pergunta\":\"PR 4.2.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P8\"},{\"pergunta\":\"PR 4.2.2-A sua unidade de Ouvidoria promove\\/participa da rela\\u00e7\\u00e3o das ouvidorias entre si e com outros \\u00f3rg\\u00e3os, setores, institui\\u00e7\\u00f5es, entidades e sociedade civil, propiciando o fortalecimento e a integra\\u00e7\\u00e3o das a\\u00e7\\u00f5es e servi\\u00e7os de sa\\u00fade?\",\"cod_campo\":\"S5_P9\"},{\"pergunta\":\"PR 4.2.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P10\"},{\"pergunta\":\"PR 4.2.3-A sua unidade de Ouvidoria disp\\u00f5e de or\\u00e7amentos definidos de forma transparente, al\\u00e9m de recursos externos ou setoriais?\",\"cod_campo\":\"S5_P11\"},{\"pergunta\":\"PR 4.2.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P12\"},{\"pergunta\":\"PR 4.3.1-A sua unidade de Ouvidoria busca a efetiva participa\\u00e7\\u00e3o da sociedade por meio de novas pr\\u00e1ticas visando a melhoria no seu desempenho organizacional, sempre levando em considera\\u00e7\\u00e3o a popula\\u00e7\\u00e3o atendida?\",\"cod_campo\":\"S5_P13\"},{\"pergunta\":\"PR 4.3.1.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P14\"},{\"pergunta\":\"PR 4.3.2-A gest\\u00e3o da sua unidade de Ouvidoria apoia esfor\\u00e7os e ideias que indiquem solu\\u00e7\\u00f5es e melhorias de fluxos de trabalho na busca permanente da efici\\u00eancia, efic\\u00e1cia e efetividade de suas a\\u00e7\\u00f5es? (Efici\\u00eancia \\u00e9 a capacidade de obter bons produtos. Efic\\u00e1cia \\u00e9 a capacidade de fazer aquilo que \\u00e9 preciso. Efetividade \\u00e9 a capacidade de promover resultados cont\\u00ednuos).\",\"cod_campo\":\"S5_P15\"},{\"pergunta\":\"PR 4.3.2.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P16\"},{\"pergunta\":\"PR 4.3.3-A sua unidade de Ouvidoria busca apoio e reconhecimento da sociedade ao produzir mudan\\u00e7a em suas pr\\u00e1ticas? Essas mudan\\u00e7as s\\u00e3o percebidas pelos parceiros envolvidos, comunidade e usu\\u00e1rios?\",\"cod_campo\":\"S5_P17\"},{\"pergunta\":\"PR 4.3.3.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P18\"},{\"pergunta\":\"PR 4.3.4-A sua unidade de Ouvidoria oferece condi\\u00e7\\u00f5es para uma maior participa\\u00e7\\u00e3o da equipe nos processos decis\\u00f3rios?\",\"cod_campo\":\"S5_P19\"},{\"pergunta\":\"PR 4.3.4.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P20\"},{\"pergunta\":\"PR 4.3.5-A sua unidade de Ouvidoria estimula os membros da equipe a apresentarem ideias inovadoras \\u00e0 gest\\u00e3o?\",\"cod_campo\":\"S5_P21\"},{\"pergunta\":\"PR 4.3.5.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P22\"},{\"pergunta\":\"PR 4.3.6-A sua unidade de Ouvidoria prop\\u00f5e alternativas que simplifiquem a comunica\\u00e7\\u00e3o com os usu\\u00e1rios?\",\"cod_campo\":\"S5_P23\"},{\"pergunta\":\"PR 4.3.6.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P24\"},{\"pergunta\":\"PR 4.3.7-A sua unidade de Ouvidoria otimiza e aplica todos os instrumentos dispon\\u00edveis e prop\\u00f5e novas ideias que modernizem a organiza\\u00e7\\u00e3o do trabalho?\",\"cod_campo\":\"S5_P25\"},{\"pergunta\":\"PR 4.3.7.1-Justifique brevemente sua resposta\",\"cod_campo\":\"S5_P26\"},{\"pergunta\":\"Comente sobre sua experi\\u00eancia em responder esta autoavalia\\u00e7\\u00e3o.\",\"cod_campo\":\"S5_P27\"},{\"pergunta\":\"Descreva aqui seus coment\\u00e1rios adicionais. (opcional)\",\"cod_campo\":\"S5_P28\"}";


////		}
////	}

//}
using Employee.DAL;
using System;
using System.Data;
using System.Data.SqlClient;

namespace Employee.BLL
{
    public class clsFormulario
    {
        public clsFormulario()
        {



        }
        #region Variables
        DBBridge objDBBridge = new DBBridge();
        protected int _FormularioId;
        protected string _lbl_S1_P1 = String.Empty;
        protected string _lbl_S1_P2 = String.Empty;
        protected string _lbl_S1_P03 = String.Empty;
        protected string _lbl_S1_P4 = String.Empty;

        const string _spName = "sp_pergunta";
        #endregion

        #region Class Property
        public int FormularioId
        {
            get { return _FormularioId; }
            set { _FormularioId = value; }
        }

        public string lbl_S1_P1
        {
            get { return _lbl_S1_P1; }
            set { _lbl_S1_P1 = value; }
        }

        public string lbl_S1_P2
        {
            get { return _lbl_S1_P2; }
            set { _lbl_S1_P2 = value; }
        }

        public string lbl_S1_P03
        {
            get { return _lbl_S1_P03; }
            set { _lbl_S1_P03 = value; }
        }
        public string lbl_S1_P4
        {
            get { return _lbl_S1_P4; }
            set { _lbl_S1_P4 = value; }
        }
        #endregion

        #region Public Methods

        public int Insert()
        {
            SqlParameter[] param = new SqlParameter[170];
            param[0] = new SqlParameter("@Mode", "Insert");
            param[1] = new SqlParameter("@lbl_S1_P1", _lbl_S1_P1);
            param[2] = new SqlParameter("@lbl_S1_P2", _lbl_S1_P2);
            param[3] = new SqlParameter("@lbl_S1_P03", _lbl_S1_P03);
            param[4] = new SqlParameter("@lbl_S1_P4", _lbl_S1_P4);

            return objDBBridge.ExecuteNonQuery(_spName, param);
        }



        public DataSet Select()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "ViewActive");
            return objDBBridge.ExecuteDataset(_spName, param);
        }


        public DataSet SelectAll()
        {
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "View");
            return objDBBridge.ExecuteDataset(_spName, param);
        }


        public void SelectById()
        {
            SqlParameter[] param = new SqlParameter[2];
            param[0] = new SqlParameter("@Mode", "ViewByID");
            param[1] = new SqlParameter("@EmployeeId", _FormularioId);
            DataTable dtEmployee = new DataTable();
            dtEmployee = objDBBridge.ExecuteDataset(_spName, param).Tables[0];
            if (dtEmployee.Rows.Count != 0)
            {
                DataRow drEmployee;
                drEmployee = dtEmployee.Rows[0];
                _lbl_S1_P1 = drEmployee["_lbl_S1_P1"].ToString();
                _lbl_S1_P2 = drEmployee["_lbl_S1_P2"].ToString();
                _lbl_S1_P03 = drEmployee["_lbl_S1_P03"].ToString();
                _lbl_S1_P4 = drEmployee["_lbl_S1_P4"].ToString();

                //_Status = Convert.ToInt32(drEmployee["Status"]);
            }
        }

        public string EmployeeCount()
        {
            string cntEmp = "0";
            SqlParameter[] param = new SqlParameter[1];
            param[0] = new SqlParameter("@Mode", "EmpCount");
            DataTable dtEmployee = new DataTable();
            dtEmployee = objDBBridge.ExecuteDataset(_spName, param).Tables[0];
            if (dtEmployee.Rows.Count != 0)
            {
                DataRow drEmployee;
                drEmployee = dtEmployee.Rows[0];
                cntEmp = drEmployee["EmpCount"].ToString();
            }
            return cntEmp;
        }
        #endregion
    }
}