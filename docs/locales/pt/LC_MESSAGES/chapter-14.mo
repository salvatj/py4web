��    U      �              l  %   m  �   �  �   B     �  !   �  7        S  5   X     �     �  .   �     �  "        (     -  *   H  �   s  6   	  B   G	     �	  \   �	  )   �	     
  6   1
     h
     �
     �
     �
  	   �
  d   �
  �   7  \   �  *   )  �   T  H   �  V   *  F   �     �  �   �  x   �  �     T   �  E   �  R   3  f   �  �   �  V   �  T   �  �   0  �   �     W  �   f  �   �  �   {  �        �  P     H   b  _   �  (     	   4  j   >  �   �  Y   [  6   �  t   �  f   a  E   �  c     .   r     �  b   �  a   $  b   �  a   �  L   K  "   �  =   �  K   �  �   E  n     @   �  #   �  7   �  q    $   �   �   �   �   �!     h"  7   x"  ?   �"     �"  G   �"     =#     Z#  @   p#  %   �#  ,   �#     $     	$  +   ($  �   T$  =   %  D   M%     �%  e   �%  7   &     L&  E   d&  !   �&     �&     �&     '  
   '  h   #'  �   �'  B   (  :   a(  �   �(  ?   6)  k   v)  G   �)     **  �   ;*  �   �*  �   �+  ]   :,  N   �,  ]   �,  �   E-  �   �-  \   y.  ^   �.  �   5/  �   �/     �0  �   �0  �   R1  �   �1  �   �2  �   63  a   �3  O   04  q   �4  +   �4  	   5  p   (5  �   �5  s   [6  >   �6  u   7  u   �7  R   �7  v   M8  /   �8     �8  h   9  g   w9  j   �9  i   J:  O   �:  &   ;  I   +;  W   u;  �   �;  �   �<  L   8=  &   �=  ;   �=   Action Buttons - with or without text Additionally, you can provide a separate URL to the create/details/editable/deletable parameters to bypass the auto-generated CRUD pages and handle the detail pages yourself. As with web2py, you can add additional buttons to each row in your grid. You do this by providing pre_action_buttons or post_action_buttons to the Grid **init** method. Basic Example Build your own custom search form Built in Search (can use search_queries OR search_form) CRUD Click column heads for sorting - click again for DESC Custom Action Buttons Customizing Style Default formatting by type plus user overrides Display the grid or a CRUD Form Full CRUD with Delete Confirmation Grid Grid dates in local format GridClassStyleBulma - bulma implementation However, if this doesn’t give you enough flexibility you can provide your own search form and handle all the filtering (building the queries) by yourself. If you provide a search_queries list to grid, it will: In this simple example we will make a grid over the company table. Key Features Now the company name field can be included in your fields list can be clicked on and sorted. Now you can also specify a query such as: Pagination control Pre and Post Action (add your own buttons to each row) Provide a search_queries list Reference Fields Sample Action Button Class Searching / Filtering Signature The default GridClassStyle - based on no.css, primarily uses styles to modify the layout of the grid The downfall of using this method is that sorting and filtering are based on the company field in the employee table and not the name of the company The grid provides CRUD (create, read, update and delete) capabilities utilizing py4web Form. There are two ways to build a search form. This method allows you to sort and filter, but doesn’t allow you to combine fields to be displayed together as the filter_out method would This will display the company name in the grid instead of the company ID To allow for customizing CRUD form layout (like with web2py) you can use the following Use the following to render your grid or CRUD forms in your templates. Using templates When displaying fields in a PyDAL table, you sometimes want to display a more descriptive field than a foreign key value. There are a couple of ways to handle that with the py4web grid. When handling custom form layouts you need to know if you are displaying the grid or a form. Use the following to decide You can build your own Action Button class to pass to pre/post action buttons based on the template below (this is not provided with py4web) You can build your own class_style to be used with the css framework of your choice. You can provide your own formstyle or grid classes and style to grid. You can specify a standard PyDAL left join, including a list of joins to consider. You can turn off CRUD features by setting create/details/editable/deletable during grid instantiation. You need to determine which method is best for your use case understanding the different grids in the same application may need to behave differently. additional_classes: a space-separated list of classes to include on the button element append_id: if True, add id_field_name=id_value to the url querystring for the button auto_process: Boolean - whether or not the grid should be processed immediately. If False, developer must call grid.process() once all params are setup build a search form. If more than one search query in the list, it will also generate a dropdown to select which search field to search agains controllers.py create: URL to redirect to for creating records - set to True to automatically generate the URL - set to False to not display the button deletable: URL to redirect to for deleting records - set to True to automatically generate the URL - set to False to not display the button details: URL to redirect to for displaying records - set to True to automatically generate the URL - set to False to not display the button editable: URL to redirect to for editing records - set to True to automatically generate the URL - set to False to not display the button fields: list of fields to display on the list page, if blank, glean tablename from first query and use all fields of that table filter_out on PyDAL field definition - here is an example of a foreign key field formstyle is the same as a Form formstyle, used to style the CRUD forms. formstyle: py4web Form formstyle used to style your form when automatically building CRUD forms gather filter values and filter the grid grid.html grid_class_style is a class that provides the classes and/or styles used for certain portions of the grid. grid_class_style: GridClassStyle object used to override defaults for styling your rendered grid. Allows you to specify classes or styles to apply at certain points in the grid. headings: list of headings to be used for list page - if not provided use the field label icon: the font-awesome icon to display before the text include_action_button_text: boolean telling the grid whether or not you want text on action buttons within your grid left join and specify fields from joined table - specified on the left parameter of Grid instantiation left: if joining other tables, specify the pydal left expression here message: confirmation message to display if ‘confirmation’ class is added to additional classes orderby: pydal orderby field or list of fields path: the route of this request post_action_buttons - list of action_button instances to include after the standard action buttons post_action_buttons: list of action_button instances to include after the standard action buttons pre_action_buttons - list of action_button instances to include before the standard action buttons pre_action_buttons: list of action_button instances to include before the standard action buttons py4web comes with a Grid object providing simple grid and CRUD capabilities. query: pydal query to be processed rows_per_page: number of rows to display per page. Default 15 search_button_text: text to appear on the submit button on your search form search_form: py4web FORM to be included as the search form. If search_form is passed in then the developer is responsible for applying the filter to the query passed in. This differs from search_queries. search_queries: list of query lists to use to build the search form. Ignored if search_form is used. Format is show_id: show the record id field on list page - default = False text: text to display on the button url: the page to navigate to when the button is clicked Project-Id-Version: py4web 1.20201127.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-12-02 20:25-0300
PO-Revision-Date: 2020-12-08 10:50-0300
Last-Translator: potranslator 1.1.5
Language: pt
Language-Team: 
Plural-Forms: nplurals=2; plural=(n != 1);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 Botões de ação - com ou sem texto Além disso, você pode fornecer uma URL separada para a criação / detalhes / editáveis ​​/ parâmetros elimináveis ​​para ignorar as páginas CRUD gerados automaticamente e lidar com as páginas de detalhes do mesmo. Tal como acontece com web2py, você pode adicionar botões adicionais para cada linha em sua grid. Você faz isso fornecendo pre_action_buttons ou post_action_buttons à Rede ** inicialização ** método. Exemplo básico Construa a sua própria forma de pesquisa personalizada Construído em Search (pode usar search_queries OU search_form) CRUD Clique cabeças de coluna para classificar - clique novamente para DESC Ação personalizada Botões Personalizando Estilo Formatação padrão por tipo de utilizador mais substituições Mostrar a grid ou um formulário CRUD CRUD completa com Confirmação de exclusão Rede Datas de grid em formato local GridClassStyleBulma - implementação bulma No entanto, se isso não lhe dá flexibilidade suficiente, você pode fornecer o seu próprio formulário de busca e lidar com toda a filtragem (construção das consultas) por si mesmo. Se você fornecer uma lista search_queries à grid, ele irá: Neste exemplo simples, vamos fazer uma grid sobre a mesa da empresa. Características principais Agora o campo nome da empresa pode ser incluído em sua lista de campos pode ser clicado e ordenados. Agora você também pode especificar uma consulta como: Controle de paginação Pré e Pós Ação (adicionar seus próprios botões para cada linha) Fornecer uma lista search_queries Os campos de referência Botão Classe Ação Amostra Searching / Filtering Assinatura O GridClassStyle padrão - baseado em no.css, principalmente usa estilos para modificar o layout da grid A queda de usar este método é que classificação e filtragem são baseados no campo da empresa na tabela de empregado e não o nome da empresa A grid oferece recursos CRUD (CRUD) utilizando formulário py4web. Há duas maneiras de construir um formulário de pesquisa. Este método permite classificar e filtrar, mas não permite que você para combinar campos a serem exibidos em conjunto, como o método filter_out faria Isto irá exibir o nome da empresa na grid em vez do ID empresa Para permitir a personalização de layout do formulário CRUD (como com web2py) você pode usar o seguinte Use o seguinte para tornar a sua grid ou formas CRUD em seus templates. Usando templates Ao exibir campos em uma tabela PyDAL, às vezes você deseja exibir um campo mais descritivo do que um valor de chave estrangeira. Há um par de maneiras de lidar com isso com a grid py4web. Ao manusear formulário personalizado layouts que você precisa saber se você está exibindo a grid ou um formulário. Use o seguinte para decidir Você pode construir sua própria classe de ação do botão para passar para pré / botões de ação pós baseados no template abaixo (isso não é fornecido com py4web) Você pode construir seu próprio class_style para ser usado com o quadro css de sua escolha. Você pode fornecer suas próprias formstyle ou grid classes e estilo ao grid. Você pode especificar um PyDAL padrão LEFT JOIN, incluindo uma lista de junta a considerar. Você pode desligar CRUD apresenta pela configuração criar / details / editável / elimináveis ​​durante a instanciação grid. Você precisa determinar qual método é melhor para o seu caso de uso compreender as grids diferentes no mesmo aplicativo pode precisar de se comportar de forma diferente. additional_classes: uma lista separada por espaços de aulas para incluir no elemento botão append_id: Se for verdade, adicionar id_field_name = id_value à querystring url para o botão auto_process: Boolean - se ou não a grid deve ser processado imediatamente. Se False, desenvolvedor deve chamar grid.process () uma vez todos os parâmetros são configurados construir um formulário de busca. Se mais de uma consulta de pesquisa na lista, que também irá gerar uma lista suspensa para selecionar qual campo de pesquisa para procurar agains controllers.py criar: URL para redirecionar para a criação de registros - definido como verdadeiro para gerar automaticamente o URL - definido como falso para não exibir o botão deletable: URL para redirecionar para a exclusão de registros - Defina como true para gerar automaticamente a URL - definido como falso para não exibir o botão detalhes: URL para redirecionar para os registros exibindo - Defina como true para gerar automaticamente a URL - definido como falso para não exibir o botão editável: URL para redirecionar para a edição de registros - Defina como true para gerar automaticamente a URL - definido como falso para não exibir o botão campos: lista de campos a serem exibidos na página de lista, se em branco, tablename recolher de primeira consulta e usar todos os campos dessa tabela filter_out na definição de campo PyDAL - aqui está um exemplo de um campo de chave estrangeira formstyle é o mesmo que um formstyle Forma, usadas para as formas estilo CRUD. formstyle: py4web Form formstyle usado para estilo seu formulário ao construir automaticamente formulários CRUD recolher valores de filtro e filtrar a grid grid.html grid_class_style é uma classe que fornece as classes e / ou estilos utilizados para certas porções da grelha. grid_class_style: objeto GridClassStyle usado para os padrões de substituição para denominar sua grid prestados. Permite especificar classes ou estilos para aplicar em certos pontos da grid. títulos: lista de títulos a ser utilizado para página da lista - se não for fornecido o uso do rótulo do campo ícone: o ícone font-incrível para exibição antes do texto include_action_button_text: boolean dizendo a grid se deseja ou não de texto em botões de ação dentro de sua grid esquerda juntar-se e especificar campos da tabela juntou - especificado no parâmetro esquerdo da grid instanciação esquerda: se juntando outras tabelas, especifique a expressão esquerda pydal aqui mensagem: mensagem de confirmação para exibição se a classe ‘confirmação’ é adicionado a classes adicionais orderby: Campo orderby pydal ou lista de campos caminho: a rota do pedido post_action_buttons - lista de instâncias action_button para incluir após os botões de ação padrão post_action_buttons: lista de instâncias action_button para incluir após os botões de ação padrão pre_action_buttons - lista de instâncias action_button para incluir antes de os botões de ação padrão pre_action_buttons: lista de instâncias action_button para incluir antes de os botões de ação padrão py4web vem com um objecto de grelha fornecendo grid simples e os recursos CRUD. query: consulta pydal a ser processado rows_per_page: número de linhas a serem exibidos por página. padrão 15 search_button_text: texto a ser exibido no botão enviar em seu formulário de pesquisa search_form: FORM py4web a ser incluído como o formulário de busca. Se search_form é passado em seguida, o desenvolvedor é responsável por aplicar o filtro para a consulta passada. Isso é diferente de search_queries. search_queries: lista de listas de consulta para usar para construir o formulário de busca. Ignorado se search_form é usado. O formato é show_id: mostrar o campo ID de registo na página de lista - default = false texto: texto para exibição no botão url: a página para navegar até quando o botão é clicado 