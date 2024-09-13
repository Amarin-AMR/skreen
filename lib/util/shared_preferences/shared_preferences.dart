import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefService {
  Future<void> setTokenApi(String tokenApi) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('TokenApi', tokenApi);
  }

  Future<String?> getTokenApi() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('TokenApi') ?? '';
  }

  Future<void> setFcmToken(String fcmToken) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('fcmToken', fcmToken);
  }

  Future<String?> getFcmToken() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('fcmToken');
  }

  Future<void> setUserId(int userId) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setInt('id', userId);
  }

  Future<int?> getUserId() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getInt('id');
  }

  Future<void> setRole(String role) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('role', role);
  }

  Future<String?> getRole() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('role') ?? '';
  }

  Future<void> setName(String name) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('name', name);
  }

  Future<String?> getName() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('name') ?? '';
  }

  Future<void> setExpiresAt(String expiresAt) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('expiresAt', expiresAt);
  }

  Future<String?> getExpiresAt() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('expiresAt') ?? '';
  }

  Future<void> setPasswordChangedAt(String passwordChangedAt) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('passwordChangedAt', passwordChangedAt);
  }

  Future<String?> getPasswordChangedAt() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString('passwordChangedAt') ?? '';
  }

  Future<void> clearAll() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.clear();
  }
}
