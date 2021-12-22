import 'package:http/http.dart';
import 'package:to_do/models/todo_model.dart';

class TodoNetwork {
  String getdataUrl = "https://eager-pea-coat-bass.cyclic.app/todos";

//Get all todos
  Future getAlltodos() async {
    Response response = await get(Uri.parse(getdataUrl));

    if (response.statusCode == 200) {
      print("object");
      return todoModelFromJson(response.body);
    } else {
      throw {Exception("Failed to data from dataBase")};
    }
  }

//post/create a new todo

//update

//delete by id

}
