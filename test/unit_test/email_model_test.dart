import 'package:dominic_flutter_template/widgets/form/model/email.model.dart';
import 'package:flutter_test/flutter_test.dart';

void emailModelTest() {
  test('Valid email', () {
    expect(EmailModel.isValid('example@example.com'), true);
    expect(EmailModel.isValid('user123@example.co.uk'), true);
    expect(EmailModel.isValid('user.name@example-domain.com'), true);
  });

  test('Invalid email', () {
    expect(EmailModel.isValid('invalid-email'), false);
    expect(EmailModel.isValid('example@'), false);
    expect(EmailModel.isValid('@example.com'), false);
    expect(EmailModel.isValid('example.com'), false);
    expect(EmailModel.isValid('user@.com'), false);
    expect(EmailModel.isValid('user@domain'), false);
    expect(EmailModel.isValid('user+tag@example.com'), false);
  });
}
