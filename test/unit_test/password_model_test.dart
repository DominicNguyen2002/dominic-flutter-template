import 'package:dominic_flutter_template/widgets/form/model/password.model.dart';
import 'package:flutter_test/flutter_test.dart';

void passwordModelTest() {
  test('Valid passwords', () {
    expect(PasswordModel.isValid('Abc123!@#'), true);
    expect(PasswordModel.isValid('Pa\$\$w0rd!'), true);
  });

  test('Invalid passwords', () {
    expect(PasswordModel.isValid('abc123'), false);
    expect(PasswordModel.isValid('Password'), false);
    expect(PasswordModel.isValid('12345678'), false);
    expect(PasswordModel.isValid('!@#\$%^&*'), false);
    expect(PasswordModel.isValid('short'), false);
  });

  test('Hash password', () {
    expect(PasswordModel.hash('abc123'), null);

    final hashedPassword = PasswordModel.hash('Pa\$\$w0rd!');
    expect(hashedPassword.runtimeType, String);
  });
}
