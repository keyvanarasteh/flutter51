main() {

  var list = ['bir', 'iki', '3', 4, true];

  List<String> list2 = [ 'bir', 'iki', '4'];

  // List<int> list = [];
  // List<double> list = [];

  List<dynamic> list3 = [1, true, 'yazi', 3.14];

  var ogrenciler1 = ['ali', 'ali', 'cahit', 'deniz', 'eda'];
  List<String> ogrenciler11 = ['ali', 'ali', 'cahit', 'deniz', 'eda'];
  
  var ogrenciler2 = {'ali', 'ali', 'cahit', 'deniz', 'eda'};
  Set<String> ogrenciler22 = {'ali', 'ali', 'cahit', 'deniz', 'eda'};

  var hoca = {
    'ad': 'Keyvan',
    'soyad': 'Arasteh',
    'yas': 30, 
    'evli': false,
  };

  Map<dynamic, dynamic> ogrenci = {
    'ad': 'Cahit',
    'soyad': 'Saral',
    'yas': 30, 
    'evli': false,
    4: false,
  };


  print(ogrenciler1);
  print(ogrenciler2);
}