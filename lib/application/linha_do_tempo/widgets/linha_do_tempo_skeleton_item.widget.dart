import 'package:common_widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class LinhaDoTempoSkeletonItemWidget extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  const LinhaDoTempoSkeletonItemWidget({super.key, this.isFirst = false, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 36,
        height: 36,
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        indicator: Skeleton.smallCircle(),
      ),
      beforeLineStyle: const LineStyle(
        color: Colors.black12,
        thickness: 3,
      ),
      endChild: Padding(
        padding: const EdgeInsets.fromLTRB(4.0, 12, 8, 12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Skeleton.fullLabel(context),
            Spacing.v8,
            Row(
              children: [
                Expanded(child: Skeleton.box(context, border: Layout.xsmall, height: Layout.large)),
                Spacing.h32,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Skeleton.smallLabel(context, height: 14),
                    Spacing.v4,
                    Skeleton.smallLabel(context, height: 14),
                  ],
                ),
                Spacing.h12
              ],
            ),
          ],
        ),
      ),
    );
  }
}
