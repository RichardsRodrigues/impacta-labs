db.Events.aggregate([
  // 1. Filtra apenas eventos de compra
  { \$match: { eventType: "purchase" } },

  // 2. Agrupa por estado do shipping e calcula média
  {
    \$group: {
      _id: "\$shipping.state",
      average_sales: { \$avg: "\$totals.grandTotal" },
      total_sales: { \$sum: "\$totals.grandTotal" },
      count_sales: { \$sum: 1 }
    }
  },

  // 3. Ordena por valor médio (opcional)
  { \$sort: { average_sales: -1 } }
]).pretty();