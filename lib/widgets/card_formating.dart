import 'package:flutter/services.dart';

class CardFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newString = newValue.text;

    if (newString.isEmpty) {
      return newValue;
    }

    final phoneNumber = newString.replaceAll(RegExp(r'\D'), '');

    final List<String> numberParts = [];
    int startIndex = 0;
    final partSizes = [4,4,4,4];

    for (final size in partSizes) {
      if (phoneNumber.length - startIndex <= size) {
        numberParts.add(phoneNumber.substring(startIndex));
        break;
      } else {
        numberParts.add(phoneNumber.substring(startIndex, startIndex + size));
        startIndex += size;
      }
    }

    final formattedPhoneNumber = numberParts.join('     ');

    final selectionIndex =
        newValue.selection.baseOffset + formattedPhoneNumber.length - newString.length;

    return TextEditingValue(
      text: formattedPhoneNumber,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}