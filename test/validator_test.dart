import 'package:flutter_test/flutter_test.dart';
import 'package:loginpage_flutter/app_validator.dart';

void main() {
  group('Email Validation Tests', () {
    test('Empty email should return error string', () {
      final result = AppValidator.validateEmail('');
      expect(result, 'Email cannot be empty');
    });

    test('Invalid email syntax should return error string', () {
      final result = AppValidator.validateEmail('duaagmail.com');
      expect(result, 'Enter a valid email address');
    });

    test('Valid email should return null', () {
      final result = AppValidator.validateEmail('douaa@gmail.com');
      expect(result, null);
    });
  });

  group('Password Validation Tests', () {
    test('Short password should return error string', () {
      final result = AppValidator.validatePassword('123');
      expect(result, 'Password must be at least 6 characters');
    });

    test('Valid password should return null', () {
      final result = AppValidator.validatePassword('douaa2026');
      expect(result, null);
    });
  });
}