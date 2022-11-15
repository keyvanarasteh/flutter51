main() {

  List<String> students = [
    "Ali",
    "Eda",
    "Duman",
    "Teoman"
  ];

  List<int> puan = [
    86, 
    32,
    22,
    100,
  ];

  bool HuseynGirdiMi = students.contains('Huseyn');

  students.every((element) {
    print(element);
    return true;
  });

  var x = puan.every((element) => element >= 35);
  print('herkes gecti mi: $x');

  var y = puan.any((element) => element >= 35);
  print('gecen oldu mi: $y');

  var z = puan.any((element) => element < 35);
  print('kalan var mi: $z');

}