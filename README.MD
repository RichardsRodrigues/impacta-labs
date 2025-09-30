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
