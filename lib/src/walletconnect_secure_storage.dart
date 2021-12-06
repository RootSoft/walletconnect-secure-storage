import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

class WalletConnectSecureStorage implements SessionStorage {
  final String storageKey;
  final FlutterSecureStorage _storage;

  WalletConnectSecureStorage({
    this.storageKey = 'wc_session',
    FlutterSecureStorage? storage,
  }) : _storage = storage ?? const FlutterSecureStorage();

  @override
  Future<WalletConnectSession?> getSession() async {
    final json = await _storage.read(key: storageKey);
    if (json == null) {
      return null;
    }

    try {
      final data = jsonDecode(json);
      return WalletConnectSession.fromJson(data);
    } on FormatException {
      return null;
    }
  }

  @override
  Future store(WalletConnectSession session) async {
    await _storage.write(key: storageKey, value: jsonEncode(session.toJson()));
  }

  @override
  Future removeSession() async {
    await _storage.delete(key: storageKey);
  }
}
