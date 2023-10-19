// 9-palindrome.dart

bool isPalindrome(String s) {
  return s.length < 3 ? false : s == s.split('').reversed.join('');
}
