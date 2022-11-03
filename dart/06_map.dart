main() {

  Map<int, Map<String, dynamic>> SinavSonucu = {
    2021: {
      'ad': 'Ali',
      'soyad': 'X',
      'puan': 55,
    },
    2022: {
      'ad': 'Deniz',
      'soyad': 'X',
      'puan': 95,
    },
    2023: {
      'ad': 'Eda',
      'soyad': 'X',
      'puan': 15,
    },
    2024: {
      'ad': 'Teoman',
      'soyad': 'X',
      'puan': 22,
    },
  };

  Map<int, Map<String, dynamic>> SinavGirmeyenler = {
    2028: {
      'ad': 'Huseyn',
      'soyad': 'X',
      'puan': -1,
    },
    2029: {
      'ad': 'Ramazaan',
      'soyad': 'X',
      'puan': -1,
    },
  };


  // iki map'i birlestirmek LIST SET MAP
  var tumOgrenciler = {...SinavSonucu, ...SinavGirmeyenler};
  
  var finalSonuc = tumOgrenciler.map((key, value) { 
    if(value['puan'] >= 35) {
      return MapEntry(key, {
        'ad': value['ad'],
        'soyad': value['soyad'],
        'puan': value['puan'],
        'durum': 'gecti',
      });
    }
    else if(value['puan'] == -1) {
      return MapEntry(key, {
        'ad': value['ad'],
        'soyad': value['soyad'],
        'puan': value['puan'],
        'durum': 'sinava girmedi',
      });
    }
    else {
      return MapEntry(key, {
        'ad': value['ad'],
        'soyad': value['soyad'],
        'puan': value['puan'],
        'durum': 'kaldi',
      });
    }
  });



  SinavSonucu[2025] = {
    'ad': 'deniz',
    'soyad': 'z',
    'puan': 99,
  };

  // print(SinavSonucu);

  finalSonuc.forEach((key, value) {
    print(value);
  });

  var girdimi = SinavSonucu.containsKey(2029);
  print('2029 ogreenci sinava girdi mi: $girdimi');
}