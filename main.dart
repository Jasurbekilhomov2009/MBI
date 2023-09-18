import 'dart:io';

void main() {
  print('Введите строку для проверки на палиндром:');
  String inputString = stdin.readLineSync()!;
  
  bool isPalindrome = checkPalindrome(inputString);
  
  if (isPalindrome) {
    print('$inputString является палиндромом');
  } else {
    print('$inputString не является палиндромом');
  }
}

bool checkPalindrome(String str) {
  String reversedStr = str.split('').reversed.join();
  return str == reversedStr;
}

