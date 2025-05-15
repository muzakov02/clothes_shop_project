extension CardExtension on String {
  String capitalize(){
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
  String maskAsCardNum(){
    replaceAll(' ', '');

    if (length != 16) {
      throw ArgumentError('Karta raqami 16 ta raqamdan iborat bo‘lishi kerak.');
    }

    // 12 ta yulduzcha va oxirgi 4 raqam
    String masked = '*' * 12 + substring(12);

    // Har to'rtta belgidan keyin bo'sh joy qo'shish
    String formatted = '';
    for (int i = 0; i < masked.length; i++) {
      if(i < 12){
        formatted += "${masked[i]} ";
      }else{
        formatted += masked[i];
      }

      if ((i + 1) % 4 == 0 && i != masked.length - 1) {
        formatted += ' ';
      }
    }

    return formatted;
  }
}

