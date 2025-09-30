## Integrantes
| Nome | 
| :--- | 
| **Richard Rodrigues Silva** |

----

## Decisões
- Optei por usar **3 collections** (`customers`, `products`, `events`) para otimizar a performance, flexibilidade e manutenibilidade.
- `customers`: dados do cliente, incluindo nome, e-mail, cidade, estado, signupDate.
- `products`: dados do produto, incluindo sku, nome, categoria e preço.
- `events`: rastreamento de cliques e compras, incluindo productId, userId, timestamp e detalhes de compra.
- Dessa forma mantemos o modelo pronto para expansão de produtos futuros e análise de comportamento dos clientes.

----

## Justificativa dos campos **Collection Customers**:

userId → chave de negócio para relacionar eventos a clientes.

name / email → identificação mínima (email também pode ser útil para marketing).

state / city → essencial para responder “top 20 produtos por estado” e “valor médio das vendas por estado”.

signupDate → permite análises históricas ou por coorte (novos clientes vs antigos).

----

## Justificativa dos campos **Collection products**:

sku → garante que cada produto tenha um identificador de catálogo humano-legível.

name → necessário para relatórios e visualizações (ex.: top 20 produtos mais populares).

category → indispensável para responder “quantos de cada tipo de produto foram vendidos nos últimos 30 dias”.

price → embora o valor histórico seja armazenado no evento de compra, manter o preço atual no produto ajuda em relatórios rápidos e consultas de catálogo.


----
## Justificativa dos campos **Collection events**:

eventType → diferencia cliques de compras.

userId → vincula o evento ao cliente.

timestamp → necessário para análises temporais (últimos 30 dias, por exemplo).

items.productId / quantity / unitPrice → permitem contar produtos vendidos e calcular receita.

shipping.state → usado para responder perguntas por estado.

totals.grandTotal → simplifica cálculo do valor médio das vendas.


----



## Observações

- O `command_mongo.sh` mostra como responder a pergunta: "Qual é o valor médio das vendas por estado do cliente?"
