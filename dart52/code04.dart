main() {


  List<Map<String, dynamic>> puan_listesi = [
    {
      'ad': 'ali',
      'puan': 65,
    },
    {
      'ad': 'cahit',
      'puan': 99,
    },
    {
      'ad': 'hasancan',
      'puan': 0,
    },
    {
      'ad': 'murat',
      'puan': -1,
    },
  ];

  var x1 = puan_listesi.every((element) => (element['puan'] >= 35));
  var x2 = puan_listesi.any((element) => (element['puan'] >= 35));
  var z1 = puan_listesi.every((element) => (element['puan'] < 35));
  var z2 = puan_listesi.any((element) => (element['puan'] < 35));

  var sinavaGirmeyen = puan_listesi.any((element) => (element['puan'] == -1));



}