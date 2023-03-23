
import 'package:intl/intl.dart';

import '../variables/my_variables.dart';

void addDataToFirebase(){
  try{
    var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    var hourAndMinutes = DateFormat('HH:MM');


    databaseReference.collection('items').add({
      "time": hourAndMinutes.format(now),
      "date": formatter.format(now).toString(),
      "done": false,
    }).then((value) => print(value.id));
    myController.clear();
  }catch(error) {
    print(error.toString());
  }
}




