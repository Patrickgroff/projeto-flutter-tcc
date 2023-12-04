import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

enum TipoLinhaDoTempo {
  @JsonValue('abastecimento')
  abastecimento(Icons.local_gas_station_rounded, 'Abastecimento', Colors.purple),
  @JsonValue('despesa')
  despesa(Icons.request_quote_rounded, 'Despesa', Colors.red),
  @JsonValue('receita')
  receita(Icons.add_card_rounded, 'Receita', Colors.green),
  @JsonValue('servico')
  servico(Icons.build_rounded, 'Serviço', Colors.blue);

  final IconData icon;
  final String label;
  final MaterialColor color;

  const TipoLinhaDoTempo(this.icon, this.label, this.color);
}
