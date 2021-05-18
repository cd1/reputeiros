import 'package:reputeiros/news_item.dart';

import 'candidate.dart';

class Repository {
  final List<Candidate> _candidates = [
    Candidate(
        1,
        'Ciro Gomes',
        'PDT',
        'https://www.focus.jor.br/wp-content/uploads/2020/07/jornal-da-morada-entrevista-ciro-gomes-qUUd-768x432.jpg',
        0.43),
    Candidate(2, 'Fernando Haddad', 'PT', 'https://anped.org.br/sites/default/files/images/haddad_sp.gif', 0.72),
    Candidate(3, 'Henrique Mandetta', 'DEM',
        'https://pbs.twimg.com/profile_images/1083810147351347200/r0lqoi5t_400x400.jpg', 0.50),
    Candidate(4, 'Jair Bolsonaro', 'Sem partido',
        'https://jornaltimoneiro.com.br/wp-content/uploads/2020/03/jair-bolsonaro-2.jpg', 0.03),
    Candidate(5, 'João Doria', 'PSDB', 'https://forbes.com.br/wp-content/uploads/2017/03/Joao-Doria_Lailson-Santos.jpg',
        0.69),
    Candidate(6, 'Luciano Huck', 'Sem partido',
        'https://pbs.twimg.com/profile_images/1056205859536158720/fw2ytANd_400x400.jpg'),
  ];

  final Map<int, List<NewsItem>> _data = {
    // Ciro Gomes
    1: [
      NewsItem(
        'https://www.em.com.br/app/noticia/politica/2021/05/17/interna_politica,1267382/ciro-gomes-ataca-lula-maior-corruptor-da-historia-moderna-brasileira.shtml',
        "Ciro Gomes ataca Lula: 'Maior corruptor da história moderna brasileira'",
        'Em entrevista ao Valor, ex-ministro disse que pode ir ao segundo turno das eleições de 2022 com o ex-presidente',
        'https://i.em.com.br/riJQD6pVTk2TThlam1LYhiz7T-E=/600x315/smart/imgsapp.em.com.br/app/noticia_127983242361/2021/05/17/1267382/20210517120114828286i.jpg',
      ),
      NewsItem(
        'https://oglobo.globo.com/brasil/entrevista-eu-viajaria-paris-no-2-turno-com-mais-conviccao-pt-nunca-mais-diz-ciro-gomes-2-24976661',
        'Entrevista: ‘Eu viajaria a Paris no 2º turno com mais convicção. PT nunca mais’, diz Ciro Gomes',
        'Pré-candidato à Presidência, ex-ministro projeta cenário em que Bolsonaro ficaria fora do segundo turno, diz que Lula descumpre a palavra por conveniências eleitorais e vê pouca chance de aliança com PSDB',
        'https://ogimg.infoglobo.com.br/in/24976677-7a6-f9d/FT1086A/78823990_PA-Rio-de-Janeiro-RJ-12-09-2018-Eleicoes-2018Sabatina-com-o-candidato-do-PDT-Ciro-Go.jpg',
      ),
      NewsItem(
        'https://g1.globo.com/ce/ceara/noticia/2021/05/16/ciro-gomes-recebe-segunda-dose-da-vacina-contra-a-covid-19-em-fortaleza.ghtml',
        'Ciro Gomes recebe segunda dose da vacina contra a Covid-19 em Fortaleza',
        'Ciro Gomes disse estar emocionado e demonstrou gratidão aos profissionais de saúde que fortalecem o Sistema Único de Saúde (SUS). Ele recebeu o imunizante CoronaVac no Centro de Eventos.',
        'https://s2.glbimg.com/pbiLwtygW_0sUjzyKS4GVPKPkr8=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2021/p/O/JOHbxOTDWhtSnVox6ueg/ciro-vacina.png',
      ),
    ],

    // Fernando Haddad
    2: [
      NewsItem(
        'https://brasil.elpais.com/brasil/2021-05-12/com-boulos-ou-haddad-candidatura-unica-da-esquerda-lideraria-disputa-por-governo-de-sao-paulo.html',
        'Com Boulos ou Haddad, candidatura única da esquerda lideraria disputa por Governo de São Paulo',
        'Resultados são de pesquisa Atlas. Se nome do PSOL e petista concorrerem em chapas separadas ao mesmo tempo, estudo aponta empate quádruplo com Skaf e França pelo Governo estadual. Atual governador, Doria não lidera nenhum cenário e tem aprovação menor que Bolsonaro no Estado',
        'https://imagens.brasil.elpais.com/resizer/f-MUfwLL_ao9rmfJgii_7mzyGOQ=/1200x0/cloudfront-eu-central-1.images.arcpublishing.com/prisa/LBW6HDUVX5D2FJU45C5QEU6DMY.jpeg',
      ),
      NewsItem(
        'https://www.cartacapital.com.br/politica/haddad-confia-em-lula-para-2022-e-ve-crise-de-identidade-nos-candidatos-a-terceira-via/',
        'Haddad confia em Lula para 2022 e vê &#039;crise de identidade&#039; nos candidatos a &#039;terceira via&#039;',
        'Em entrevista exclusiva a CartaCapital, o petista afirmou que Lula está &#039;animado e disposto&#039; para a corrida rumo ao Palácio do Planalto',
        'https://www.cartacapital.com.br/wp-content/uploads/2021/05/fernando_haddad.jpeg',
      ),
      NewsItem(
        'https://revistaforum.com.br/politica/haddad-sugere-boicote-as-empresas-que-tentam-normalizar-bolsonaro/',
        'Haddad sugere boicote às empresas que tentam &quot;normalizar&quot; Bolsonaro | Revista Fórum',
        'Bolsonaro participou, nesta sexta-feira, de um almoço de negócios com cerca de 40 empresárias e executivas do setor de indústria e de serviços. Veja a lista aqui',
        'https://cdn.revistaforum.com.br/wp-content/uploads/2021/02/captura-de-tela-2021-02-11-axxs-11.45.06-e1613054807579.jpg',
      ),
    ],

    // Henrique Mandetta
    3: [
      NewsItem(
        'https://www.em.com.br/app/noticia/politica/2021/05/16/interna_politica,1267124/ex-ministro-da-saude-henrique-mandetta-lamenta-morte-de-bruno-covas.shtml',
        'Ex-ministro da Saúde Henrique Mandetta lamenta morte de Bruno Covas',
        'O ex-ministro da Saúde Henrique Mandetta lamentou neste domingo, por meio do Twitter, a morte do prefeito de São Paulo, Bruno Covas (PSDB)',
        'https://i.em.com.br/6wk1g-d1zptuIePmEQ7_SOl2YrQ=/600x315/smart/imgs.em.com.br/estadodeminas/estado-de-minas-imgage.gif',
      ),
      NewsItem(
        'https://veja.abril.com.br/blog/maquiavel/dem-prepara-lancamento-de-mandetta-ao-palacio-do-planalto/',
        'DEM prepara lançamento de Mandetta ao Palácio do Planalto | Maquiavel',
        'Partido trabalha para oficializar pré-candidatura do ex-ministro da Saúde até junho e também quer atrair Geraldo Alckmin para o seu quadro em SP',
        'https://veja.abril.com.br/wp-content/uploads/2021/05/51157518081_677d00130e_k.jpg?quality=70&strip=info&w=680&h=453&crop=1',
      ),
      NewsItem(
        'https://www.cnnbrasil.com.br/politica/2021/05/07/estou-pronto-diz-mandetta-a-cnn-sobre-possivel-candidatura-a-presidencia',
        '&#x27;Estou pronto&#x27;, diz Mandetta à CNN sobre possível candidatura à Presidência',
        'De acordo com o ex-ministro, o primeiro ato de Pazuello como chefe da pasta já tirou credibilidade dele',
        'https://mediastorage.cnnbrasil.com.br/IMAGES/00/00/00/3041_3A2A0E595FF72668.jpg',
      ),
    ],

    // Bolsonaro
    4: [
      NewsItem(
        'https://valor.globo.com/politica/noticia/2021/05/13/portaria-eleva-salario-de-bolsonaro-e-ministros-em-ate-69percent-e-estoura-teto-constitucional.ghtml',
        'Portaria eleva salário de Bolsonaro e ministros em até 69% e estoura teto constitucional',
        'A medida foi colocada em vigor enquanto o funcionalismo público está com salários congelados',
        'https://s2.glbimg.com/lm_gk_d_CR576LJNsD0xJM3zsto=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2020/i/C/bd4p7QSGqpkNEgqKuPdA/88123802-pa-20bras-c3-adlia-20bsb-2012-05-2020-20prasidente-20jair-20bolsonaro-20do-20palacio-20da-20alvorada-20e-20fala-20com-20a-20mi.jpg',
      ),
      NewsItem(
        'https://g1.globo.com/sp/sorocaba-jundiai/noticia/2021/05/15/apoiadores-do-presidente-jair-bolsonaro-fazem-carreata-em-jundiai.ghtml',
        'Apoiadores do presidente Jair Bolsonaro fazem carreata em Jundiaí',
        'Grupo se concentrou na Avenida Manoela Lacerda de Vergueiro, no bairro Anhangabaú e seguiu em carreata com buzinaço até a Avenida Nove de Julho.',
        'https://s2.glbimg.com/CzViM8_HaqXm4qOmGfiN5ie4-kA=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2021/1/C/UBiJD7RMCCjWPvpZHGeQ/whatsapp-image-2021-05-15-at-11.16.51.jpeg',
      ),
      NewsItem(
        'https://jovempan.com.br/noticias/politica/manifestacoes-em-apoio-ao-presidente-jair-bolsonaro-acontecem-pelo-brasil.html',
        'Manifestações em apoio ao presidente Jair Bolsonaro acontecem pelo Brasil',
        'Entre as principais pautas dos manifestantes estão o fim do isolamento social decretado por alguns governadores e a adoção do voto impresso auditável',
        'https://jpimg.com.br/uploads/2021/05/manifestacao-brasilia.png',
      ),
      NewsItem(
        'https://agenciabrasil.ebc.com.br/politica/noticia/2021-05/bolsonaro-entrega-307-titulos-de-terra-no-ms',
        'Bolsonaro entrega 307 títulos de terra em Mato Grosso do Sul',
        '"Se vocês do campo tivessem ficado em casa, a exemplo do pessoal engravatado das cidades, as cidades teriam sucumbido", disse o presidente durante o evento.',
        'https://imagens.ebc.com.br/39LoQXafVGgauUdRYa4RGaXMbaI=/1600x800/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/51179642834_51af435d90_o.jpg?itok=Yr1Z74QP',
      ),
      NewsItem(
        'https://www.conjur.com.br/2021-mai-13/acao-stf-avalie-bolsonaro-capacidade-presidente',
        'Advogados pedem a STF que Bolsonaro seja submetido a exames psiquiátricos',
        'Um grupo de advogados e professores pediu ao Supremo Tribunal Federal, nesta quinta-feira (13/5), que o presidente Jair Bolsonaro seja submetido a exames para avaliar se ele tem condições mentais de exercer as funções de presidente. Se não for o caso, eles pedem que a Corte declare...',
        'https://s.conjur.com.br/img/b/jair-bolsonaro15.jpeg',
      ),
    ],

    // João Doria
    5: [
      NewsItem(
        'https://www.correiobraziliense.com.br/politica/2021/05/4924815-eleicoes-2022-polarizacao-entre-lula-e-bolsonaro-estreita-rota-para-uma-3---via.html',
        'Eleições 2022: polarização entre Lula e Bolsonaro estreita rota para uma 3ª via',
        'Avanço do ex-presidente Lula na disputa para 2022 acirra a polarização com Bolsonaro e diminui as chances de candidatos de centro. Analistas acreditam, no entanto, que há tempo para romper o radicalismo nas urnas',
        'https://midias.correiobraziliense.com.br/_midias/jpg/2021/05/15/675x450/1_pri_1605_0301_18cm_cor-6659312.jpg',
      ),
      NewsItem(
        'https://valor.globo.com/politica/noticia/2021/04/21/o-brasil-e-maior-do-que-bolsonaro-e-lula-diz-doria.ghtml',
        '“O Brasil é maior do que Bolsonaro e Lula”, diz Doria',
        'Governador de São Paulo defende participar de prévias do PSDB para escolha do candidato a presidente pelo partido em 2022',
        'https://s2.glbimg.com/m-zYY8d9dZrkm0gNqiZSdiYB2To=/1200x/smart/filters:cover():strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2021/o/D/xWhaBFTcyQgAXhlzcEWw/141020joaodoria038.jpg',
      ),
      NewsItem(
        'https://www.metropoles.com/blog-do-noblat/ricardo-noblat/o-chao-treme-sob-os-pes-de-doria-que-ambiciona-a-presidencia',
        'O chão treme sob os pés de Doria, que ambiciona a Presidência',
        'A rejeição ao nome do governador de São Paulo para a sucessão de Bolsonaro é grande de uma ponta à outra do país, e ele sabe disso',
        'https://uploads.metropoles.com/wp-content/uploads/2021/05/17085336/260321-FV_Joao_Doria_Vacina_Butanvac_SP-033.jpg',
      ),
    ],
  };

  List<Candidate> getAllCandidates() => List.unmodifiable(_candidates);

  List<NewsItem> getNewsByCandidate(int candidateId) => (_data[candidateId] ?? []);
}
