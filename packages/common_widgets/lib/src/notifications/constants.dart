part of common_widgets.notifications;

class Notifications {
  const Notifications._();

  static void showSnackBarWithError(BuildContext context, {Key? key, String? message, SnackBarBehavior? behavior}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        key: key,
        behavior: behavior,
        backgroundColor: Colors.red[400],
        content: Text(message ?? 'Desculpe, occoreu um erro.', style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
    );
  }

  static void showNestedSnackBarWithError(GlobalKey<ScaffoldMessengerState> scaffoldKey, {Key? key, String? message, SnackBarBehavior? behavior}) {
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        key: key,
        behavior: behavior,
        backgroundColor: Colors.red[400],
        content: Text(message ?? 'Desculpe, occoreu um erro.', style: Theme.of(scaffoldKey.currentContext!).primaryTextTheme.bodyMedium?.copyWith(color: Colors.white)),
      ),
    );
  }

  static void showSnackBarWithSuccess(BuildContext context, {Key? key, String? message, SnackBarBehavior? behavior}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        key: key,
        behavior: behavior,
        content: Text(message ?? 'Successo.'),
      ),
    );
  }

  static void showNestedSnackBarWithSuccess(GlobalKey<ScaffoldMessengerState> scaffoldKey, {Key? key, String? message, SnackBarBehavior? behavior}) {
    scaffoldKey.currentState?.showSnackBar(
      SnackBar(
        key: key,
        behavior: behavior,
        content: Text(message ?? 'Successo.'),
      ),
    );
  }
}
