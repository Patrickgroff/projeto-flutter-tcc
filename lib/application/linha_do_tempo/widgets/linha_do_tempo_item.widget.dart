import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gest_car/domain/linha_do_tempo/entities/linha_do_tempo.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:timeline_tile/timeline_tile.dart';

class LinhaDoTempoItemWidget extends StatelessWidget {
  final LinhaDoTempo item;
  final bool isFirst;
  final bool isLast;
  const LinhaDoTempoItemWidget({super.key, required this.item, required this.isFirst, required this.isLast});

  @override
  Widget build(BuildContext context) {
    timeago.setLocaleMessages('pt', timeago.PtBrShortMessages());
    final theme = Theme.of(context);
    final bodySmall = theme.textTheme.bodySmall?.copyWith(color: theme.textTheme.bodySmall?.color?.withOpacity(0.48));
    final title = theme.textTheme.titleLarge;
    final subtitle = theme.textTheme.bodyMedium?.copyWith(color: theme.textTheme.bodyMedium?.color?.withOpacity(0.72));
    final timeNow = DateTime.now().subtract(const Duration(days: 1));
    final dataFormatada = item.data?.isAfter(timeNow) == true ? timeago.format(item.data!, locale: 'pt') : DateFormat.MMMd().add_Hm().format(item.data!);
    final valorFormatado = NumberFormat.compactCurrency(locale: 'pt_BR', symbol: r'R$').format(item.valor);
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
          width: 36,
          height: 36,
          indicator: Material(
            color: item.tipo.color,
            shadowColor: item.tipo.color,
            surfaceTintColor: Colors.white,
            type: MaterialType.circle,
            elevation: 4,
            child: Icon(item.tipo.icon, color: Colors.white, size: 18),
          ),
          padding: const EdgeInsets.fromLTRB(8, 2, 12, 2),
          indicatorXY: 0.4),
      beforeLineStyle: const LineStyle(
        color: Colors.black12,
        thickness: 3,
      ),
      endChild: IconTheme(
        data: theme.iconTheme.copyWith(color: bodySmall?.color, size: bodySmall?.fontSize),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 12, 8, 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    item.titulo,
                    maxLines: 1,
                    style: title,
                    overflow: TextOverflow.ellipsis,
                  )),
                  Spacing.h8,
                  _TextWithIcon(text: dataFormatada, icon: const Icon(Icons.event_rounded), textStyle: bodySmall!)
                ],
              ),
              Spacing.v4,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _TextWithIcon(text: '${item.odometro}', icon: const Icon(Icons.speed_rounded), textStyle: subtitle!),
                      Spacing.v4,
                      _TextWithIcon(text: item.observacao ?? '', icon: const Icon(Icons.subject_rounded), textStyle: subtitle),
                    ],
                  )),
                  Spacing.h8,
                  Align(alignment: Alignment.bottomCenter, child: Text(valorFormatado, maxLines: 1, style: bodySmall)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextWithIcon extends StatelessWidget {
  final String text;
  final Widget icon;
  final TextStyle textStyle;
  const _TextWithIcon({super.key, required this.text, required this.icon, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTextStyle(
        style: textStyle,
        child: IconTheme(
          data: theme.iconTheme.copyWith(color: textStyle.color, size: textStyle.fontSize),
          child: Text.rich(
              TextSpan(children: [
                WidgetSpan(child: icon, alignment: PlaceholderAlignment.middle),
                const WidgetSpan(child: Spacing.h4),
                TextSpan(text: text),
              ]),
              maxLines: 1),
        ));
  }
}
