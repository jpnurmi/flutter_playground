import 'dart:async';
import 'dart:io';

class DeviceInfo {
  LinuxDeviceInfo _linuxInfo;
  Future<LinuxDeviceInfo> get linuxInfo async {
    return _linuxInfo ??= await _linuxDeviceInfo();
  }
}

class LinuxDeviceInfo {
  LinuxDeviceInfo({
    this.id,
    this.name,
    this.version,
    this.prettyName,
    this.hostName,
    this.machineId,
  });

  final String id;
  final String name;
  final String version;
  final String prettyName;
  final String hostName;
  final String machineId;
}

extension StringEx on String {
  String removePrefix(String prefix) {
    if (!startsWith(prefix)) return this;
    return substring(prefix.length);
  }

  String removeSuffix(String suffix) {
    if (!endsWith(suffix)) return this;
    return substring(0, length - suffix.length);
  }

  String unquote() {
    return removePrefix('"').removeSuffix('"');
  }
}

Future<LinuxDeviceInfo> _linuxDeviceInfo() async {
  final rel = await _tryReadKeyValues('/etc/os-release') ??
      await _tryReadKeyValues('/usr/lib/os-release') ??
      await _tryReadKeyValues('/etc/lsb-release') ??
      {};

  return LinuxDeviceInfo(
    id: rel['ID'] ?? rel['DISTRIB_ID'],
    name: rel['NAME'],
    version: rel['VERSION'] ?? rel['VERSION_ID'] ?? rel['DISTRIB_RELEASE'],
    prettyName: rel['PRETTY_NAME'] ?? rel['DISTRIB_DESCRIPTION'],
    hostName: await _tryReadValue('/etc/hostname'),
    machineId: await _tryReadValue('/etc/machine-id'),
  );
}

Future<String> _tryReadValue(String path) async {
  try {
    return (await File(path).readAsString()).trim();
  } on FileSystemException catch (e) {
    return null;
  }
}

Future<Map<String, String>> _tryReadKeyValues(String path) async {
  try {
    final lines = await File(path).readAsLines();
    return Map.fromEntries(lines.map((line) {
      final parts = line.split('=');
      if (parts.length != 2) return MapEntry(line, null);
      return MapEntry(parts.first, parts.last.unquote());
    }));
  } on FileSystemException catch (e) {
    return null;
  }
}
