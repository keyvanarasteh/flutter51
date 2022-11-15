main() {

  var  list = [ 'cahit', 'murat', 'k1' , 'eda'];

  print(list);
  list[3] = 'ramazan';
  print(list);
  var sonuc = list.remove('eda');
  var sonuc2 = list.remove('ramazan');
  print(sonuc);
  print(sonuc2);
  print(list);

  var passwords = ["12","123","1234","12345","123456","1234567"];
  var boldunmu1 = passwords.contains('12');
  passwords.forEach((element) => print(element));
  passwords.removeWhere((element) => element.length < 6);
  print(passwords);

  var boldunmu2 = passwords.contains('12');

  print(boldunmu1);
  print(boldunmu2);

  var yoklama = ["cahit", "hasancan", "cahit" ,  "murat", "yavuz"];

  var CahitGelmisMi = yoklama.contains('cahit');
  var KacinciKisiGelmis = yoklama.indexOf('cahit');
  var KacinciKisiGelmisIkizi = yoklama.lastIndexOf('cahit');

  var urunler = [
    {
      'ad': 'Macbook',
      'durum': 'mevcut',
      'fiyat': 26000,
    }, 
    {
      'ad': 'Casper',
      'durum': 'bitti',
      'fiyat': 11000,
    },
    {
      'ad': 'Asus',
      'durum': 'bitti',
      'fiyat': 23000,
    },
  ];

  var ilk_var_olan = urunler.indexWhere((element) => element['durum'] == 'mevcut');
  var son_var_olan = urunler.lastIndexWhere((element) => element['durum'] == 'mevcut');

  print(ilk_var_olan);

  if(ilk_var_olan != -1) {
    print(urunler[ilk_var_olan]);
  }
  else {
    print('mevcut urun yoktur.');
  }

  var tumUrunlerVarMi = urunler.every((element) => element['durum'] == 'mevcut');
  var MevcutOlanUrunVarMi = urunler.any((element) => element['durum'] == 'mevcut');
  print(tumUrunlerVarMi);
  print(MevcutOlanUrunVarMi);
  // print(son_var_olan);
  // print(urunler[son_var_olan]);


  
} 

login() {

}

