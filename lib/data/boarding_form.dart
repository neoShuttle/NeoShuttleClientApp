import 'package:neoshuttle/models/boarding_form.dart';

final boardingModels = [
  BoardingFormModel(
      'Phone Number?',
      'type your phone number that you used to register, we will send otp to this number.',
      'Phone number'),
  BoardingFormModel(
      'otp', 'type your otp to confirm that your mobile number.', 'otp',
      checkBox: 'allow whatsapp updates.'),
  BoardingFormModel('is this you?',
      'verify your details linked to your phone number to get started.', 'nah'),
];
