import 'package:map/api/model/model.dart';

import '../services/services.dart';

class myrepo{
  late final services webservices;
  myrepo(this.webservices);
  Future<List<Users>>getAllUsers()async{
    var response=await webservices.getAllUsers();
    return response.map((User) => Users.fromJson(User.toJson())).toList();
  }

}