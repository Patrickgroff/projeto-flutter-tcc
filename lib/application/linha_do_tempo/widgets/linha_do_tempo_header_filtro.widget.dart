import 'dart:math';

import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/tipo_linha_do_tempo.enum.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LinhaDoTempoHeaderFiltroWidget extends StatefulWidget {
  const LinhaDoTempoHeaderFiltroWidget({super.key});

  @override
  State<LinhaDoTempoHeaderFiltroWidget> createState() => _LinhaDoTempoHeaderFiltroWidgetState();
}

class _LinhaDoTempoHeaderFiltroWidgetState extends State<LinhaDoTempoHeaderFiltroWidget> {
  late final FormGroup form;
  @override
  void initState() {
    form = fb.group({
      TipoLinhaDoTempo.abastecimento.name: true,
      TipoLinhaDoTempo.despesa.name: true,
      TipoLinhaDoTempo.receita.name: true,
      TipoLinhaDoTempo.servico.name: true,
    });

    form.valueChanges.listen((dynamic value) {
      //TODO atualizar a lista da linha do tempo
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    ;
    return SliverPersistentHeader(
      pinned: false,
      floating: true,
      delegate: _SliverAppBarDelegate(
          minHeight: 52,
          maxHeight: 64,
          child: ReactiveForm(
              formGroup: form,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: TipoLinhaDoTempo.values.length,
                separatorBuilder: (context, index) => Spacing.h12,
                itemBuilder: (context, index) {
                  final element = TipoLinhaDoTempo.values[index];
                  final chipTheme = theme.chipTheme.copyWith(
                    checkmarkColor: Colors.white,
                    labelStyle: TextStyle(color: _ChipColor(Colors.white, element.color)),
                    color: _ChipColor(element.color, element.color.shade50),
                    shape: StadiumBorder(side: BorderSide(color: element.color)),
                    elevation: 4,
                  );

                  return ChipTheme(
                    data: chipTheme,
                    child: ReactiveValueListenableBuilder<bool>(
                      formControlName: element.name,
                      builder: (context, control, child) => AppReactiveFilterChip(
                        avatar: control.value != true ? Icon(element.icon, color: _ChipColor(Colors.white, element.color)) : null,
                        formControlName: element.name,
                        label: Text(element.label),
                      ),
                    ),
                  );
                },
              ))),
    );
  }
}

class _ChipColor extends Color implements MaterialStateColor {
  final Color selected;
  final Color defaultColor;
  _ChipColor(this.selected, this.defaultColor) : super(defaultColor.value);

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return selected; // Selected text color
    }
    return defaultColor; // normal text color
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight || child != oldDelegate.child;
  }
}
