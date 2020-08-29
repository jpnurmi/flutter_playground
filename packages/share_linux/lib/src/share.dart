import 'dart:io';

class Share {
  static Future<void> share(String text, {String subject}) {
    final uri = Uri.encodeFull('mailto:?subject=$subject&body=$text');
    return Process.run('xdg-open', [uri]);
  }
}
