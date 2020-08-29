import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart' as ffi;

import 'gio.dart';
import 'glib.dart';

abstract class PackageInfo {
  static PackageInfo _instance;
  factory PackageInfo() => _instance ??= PackageInfoLinux();

  final String appName;
  final String buildNumber;
  final String packageName;
  final String version;
}

class PackageInfoLinux implements PackageInfo {
  @override
  String get appName {
    final name = glib.g_get_application_name();
    return ffi.Utf8.fromUtf8(name.cast());
  }

  @override
  // TODO: implement buildNumber
  String get buildNumber => throw UnimplementedError();

  @override
  String get packageName {
    final app = gio.g_application_get_default();
    final id = gio.g_application_get_application_id(app);
    return ffi.Utf8.fromUtf8(id.cast());
  }

  @override
  // TODO: implement version
  String get version => throw UnimplementedError();
}

GIO _gio;
GIO get gio => _gio ??= GIO(ffi.DynamicLibrary.open('libgio-2.0.so'));

GLib _glib;
GLib get glib => _glib ??= GLib(ffi.DynamicLibrary.open('libglib-2.0.so'));
