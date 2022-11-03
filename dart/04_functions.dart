main() {
  epostaGonder();
  var sonuc = epostaDogrula();
  print(sonuc);
  validateMail('keyvan.arateh@live.com');
  Login('keyvanarasteh', '123456');
  Register('user', 'pass', 'phone');
  Register('user', 'pass');

  Register2('us', 'ps', '', 'istanbul');

  Register3('username', 'password', 
    ilce: 'Kadikoy',
    il: 'Istanbul',
    phone: '+905529992222',
  );

  Register4(username: 'user', password: 'pass', ilce: 'Kadikoy');
}

void epostaGonder() {
  print('gondeerdim');  
}

bool epostaDogrula() {
  return false;
}

bool validateMail(String mail) {
  if(1==1) {
    return true;
  }
  else {
    return false;
  }
}

// Positional Parameters

void Login(String username, String password) {}

void Register(String username, String  password , [ String phone = "" ]) {}

void Register2(String username, String  password , [ String phone = "", String ilce = '' ]) {}

void Register3(String username, String password, {
  String phone = '', 
  String ilce = '',
  String il = '',
}) {}

void  Register4({
  required String username,
  required String password,
  String phone = '',
  String il = '',
  String ilce = '',
}) {}