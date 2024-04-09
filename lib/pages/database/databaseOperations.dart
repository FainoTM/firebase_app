import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseOperationsFirebase {
  final db = FirebaseFirestore.instance;

  Future<void> createNewUserFirebase(String nome, String email, String cpf,
      String datanasc, String telefone) async {

    final user = <String, dynamic>{
      "nome": nome,
      "email": email,
      "cpf": cpf,
      "datanasc": datanasc,
      "telefone": telefone,
    };

    await db.collection("users").add(user).then((documentSnapshot) =>
        print("Added Data with ID: ${documentSnapshot.id}"));
  }

  Future<List<Map<String, dynamic>>> getUserFirebase() async {

    List<Map<String, dynamic>> userList = [];

    QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await db.collection("users").get();

    querySnapshot.docs.forEach((doc) {
      userList.add(doc.data());
    });

    return userList;

  }

  Future<void> deleteRowFirebase(String cpf) async {

    QuerySnapshot<Map<String, dynamic>> querySnapshot = await db.collection("users").where("cpf", isEqualTo: cpf).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot = querySnapshot.docs.first;

      await db.collection("users").doc(documentSnapshot.id).delete();

      print("Documento com CPF $cpf deletado com sucesso.");
    } else {
      print("Nenhum documento encontrado com o CPF $cpf.");
    }
  }

  Future<void> updateRowFirebase(String nomeatual, String nomenovo) async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot = await db.collection(
        "users").where("nome", isEqualTo: nomeatual).get();

    if (querySnapshot.docs.isNotEmpty) {
      DocumentSnapshot<Map<String, dynamic>> documentSnapshot = querySnapshot
          .docs.first;

      await db.collection("users").doc(documentSnapshot.id).update(
          {"nome": nomenovo});
    }
  }
}