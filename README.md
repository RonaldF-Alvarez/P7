# P7

Projeto academico pessoal.
Neste repositório será desenvolvido um sistema de vendas e controle de estoque simples para uma loja de auto-peças.

Este é o meu 7° projeto pessoal e o primeiro a fazer um uso completo de todo o sistema o deplhi com o banco de dados PostgreSQL.
Nele irei desenvolver uma tela simples que possui abas para acesso e gerenciamento de uma auto-peças padrão, como já vista.




V -0.1 = Primeira atualização sobre o projeto. A tela simples com as abas "Procurar produtos" e "carrinho" possui duas grids que interagem entre si. Ao clicar com o botão direito do mouse, abre-se um popupmenu com uma unica opção (Adicionar ao carrinho).
Ao fazer a adição ao carrinho a tela em foco passa para a aba "carrinho", e com ela os dados do item selecionado vão para o banco de dados, numa tabela específica com o código e quantidade dos mesmos (Futuramente será implementado a opção de quantidade).
Após a informação do produto chegar ao banco de dados, uma view é atualizada com as informações necessárias sobre o item, em uma segunda grid na aba carrinho.
