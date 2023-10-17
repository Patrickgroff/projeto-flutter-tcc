part of common_widgets.skeleton;

class Skeleton extends StatelessWidget {
  final double width;
  final double? height;
  final BoxDecoration? decoration;
  const Skeleton({Key? key, this.width = double.infinity, this.height = 19.0, this.decoration}) : super(key: key);

  factory Skeleton.smallCircle() => Skeleton(width: 24, height: 24, decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.white));

  factory Skeleton.circle() => Skeleton(width: 48, height: 48, decoration: BoxDecoration(borderRadius: BorderRadius.circular(48), color: Colors.white));

  factory Skeleton.smallLabel(BuildContext context, {bool? rounded = true, double height = 24.0}) => Skeleton(
      width: MediaQuery.of(context).size.width * .20, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  factory Skeleton.mediumLabel(BuildContext context, {bool? rounded = true, double height = 24.0}) => Skeleton(
      width: MediaQuery.of(context).size.width * .50, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  factory Skeleton.fullLabel(BuildContext context, {bool? rounded = true, double height = 24.0}) =>
      Skeleton(width: MediaQuery.of(context).size.width, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  factory Skeleton.smallChip(BuildContext context, {double? width}) =>
      Skeleton(width: width ?? MediaQuery.of(context).size.width * .20, height: 32, decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white));

  factory Skeleton.mediumChip(BuildContext context, {double? width}) =>
      Skeleton(width: width ?? MediaQuery.of(context).size.width * .50, height: 32, decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white));

  factory Skeleton.fullChip(BuildContext context, {double? width}) =>
      Skeleton(width: width ?? MediaQuery.of(context).size.width, height: 32, decoration: BoxDecoration(borderRadius: BorderRadius.circular(32), color: Colors.white));

  factory Skeleton.textField(BuildContext context, {bool? rounded, double height = 60.0}) => Skeleton(
      width: MediaQuery.of(context).size.width, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height / 2 : 4), color: Colors.white));

  factory Skeleton.square(BuildContext context, {double radious = 12, bool? rounded}) =>
      Skeleton(width: radious * 2, height: radious * 2, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? radious : 0), color: Colors.white));

  factory Skeleton.box(BuildContext context, {double width = double.infinity, double height = double.infinity, double border = 0}) =>
      Skeleton(width: width, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(border), color: Colors.white));

  factory Skeleton.smallButton(BuildContext context, {bool? rounded = true, double height = 36.0}) => Skeleton(
      width: MediaQuery.of(context).size.width * .20, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  factory Skeleton.mediumButton(BuildContext context, {bool? rounded = true, double height = 36.0}) => Skeleton(
      width: MediaQuery.of(context).size.width * .50, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  factory Skeleton.fullButton(BuildContext context, {bool? rounded = true, double height = 36.0}) =>
      Skeleton(width: MediaQuery.of(context).size.width, height: height, decoration: BoxDecoration(borderRadius: BorderRadius.circular(rounded == true ? height : 4), color: Colors.white));

  static ListTile listTileSkeleton(context, {bool leading = false, bool trailing = false, bool title = true, int subtitleLenght = 0}) => ListTile(
        leading: leading ? Skeleton.circle() : null,
        trailing: trailing ? Skeleton.smallCircle() : null,
        title: trailing ? Align(alignment: Alignment.centerLeft, child: Skeleton.fullLabel(context)) : null,
        subtitle: subtitleLenght <= 0
            ? null
            : subtitleLenght == 1
                ? Align(alignment: Alignment.centerLeft, child: Skeleton.mediumLabel(context, height: 16))
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start, children: [Skeleton.mediumLabel(context, height: 16), const SizedBox(height: 4), Skeleton.smallLabel(context, height: 16)]),
      );

  @override
  Widget build(BuildContext context) {
    final skeletonTheme = Theme.of(context).extension<SkeletonTheme>();
    return Shimmer.fromColors(
        baseColor: skeletonTheme?.baseColor ?? Colors.grey[300]!,
        highlightColor: skeletonTheme?.highlightColor ?? Colors.grey[200]!,
        child: Container(width: width, height: height, decoration: decoration));
  }
}
