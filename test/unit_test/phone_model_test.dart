import 'package:dominic_flutter_template/widgets/form/model/phone.model.dart';
import 'package:flutter_test/flutter_test.dart';

void phoneModelTest() {
  test('Valid phone numbers', () {
    expect(PhoneModel.isValid('+1234567890'), true);
    expect(PhoneModel.isValid('1234567890'), true);
    expect(PhoneModel.isValid('123-456-7890'), true);
    expect(PhoneModel.isValid('123 (456) 7890'), true);
    expect(PhoneModel.isValid('+1 123-456-7890'), true);
    expect(PhoneModel.isValid('+123 (456) 789-0123'), true);
  });

  test('Invalid phone numbers', () {
    expect(PhoneModel.isValid('invalid'), false);
    expect(PhoneModel.isValid('12345'), false);
    expect(PhoneModel.isValid('+1'), false);
    expect(PhoneModel.isValid('+'), false);
    expect(PhoneModel.isValid(''), false);
  });
}
