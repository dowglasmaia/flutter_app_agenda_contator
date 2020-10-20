import 'package:sqflite/sqflite.dart';

/*Definindo os campos da Tabela do banco de Dados*/
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String phoneColumn = "phoneColumn";
final String pathImgColumn = "pathImgColumn";

class ContactHelper{

}

class Contact{
  int id;
  String name;
  String email;
  String phone;
  String pathImg;

  Contact.fromMap(Map map){
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    pathImg = map[pathImgColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn:name,
      emailColumn:email,
      phoneColumn:phone,
      pathImgColumn:pathImg
    };
    if(id != null){
      map[idColumn] =id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name:$name, email:$email, phone:$phone, img:$pathImg)";
  }
}