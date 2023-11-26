import 'package:flutter/material.dart';

enum TipoLinhaDoTempo {
  abastecimento(Icons.local_gas_station_rounded, 'Abastecimento', Colors.purple),
  despesa(Icons.request_quote_rounded, 'Despesa', Colors.red),
  receita(Icons.add_card_rounded, 'Receita', Colors.green),
  servico(Icons.build_rounded, 'Serviço', Colors.blue);

  final IconData icon;
  final String label;
  final MaterialColor color;

  const TipoLinhaDoTempo(this.icon, this.label, this.color);
}
