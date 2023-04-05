import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart' ;
import '../variables/my_variables.dart';
import 'package:firebase_auth/firebase_auth.dart';

void addDataToFirebase(){
  initializeDateFormatting('fr_FR', null);
  try{
    var user = FirebaseAuth.instance.currentUser;
    var now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy','fr_FR');
    var hourAndMinutes = DateFormat('HH:mm');

    databaseReference.collection('users').doc(user?.uid).collection('items').add({
      "time": hourAndMinutes.format(now),
      "date": formatter.format(now).toString(),
      "done": false,
    }).then((value) => print(value.id));
    myController.clear();
  } catch(error) {
    print(error.toString());
  }
}
