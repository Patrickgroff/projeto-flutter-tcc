part of common_widgets.dialog;

class ConfirmDialogWidget extends StatelessWidget {
  final Widget title;
  final Widget content;
  final String? actionCancelText;
  final String? actionConfirmText;
  const ConfirmDialogWidget({super.key, required this.title, required this.content, this.actionCancelText, this.actionConfirmText});

  Future<bool?> openDialog(BuildContext context) => showDialog<bool?>(context: context, builder: (context) => this);

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: title,
        content: content,
        actions: <Widget>[
          TextButton(
            child: Text(actionCancelText ?? 'Cancelar'),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            child: Text(actionConfirmText ?? 'Ok'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      );
}
