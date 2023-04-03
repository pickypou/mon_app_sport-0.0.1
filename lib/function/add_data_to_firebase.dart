import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart' ;
import '../variables/my_variables.dart';

void addDataToFirebase(){
  initializeDateFormatting('fr_FR', null);
  try{
    var now = DateTime.now();
    var formatter = DateFormat('EEEE dd MMMM yyyy','fr_FR');
    var hourAndMinutes = DateFormat('HH:mm');

    databaseReference.collection('items').add({
      "time": hourAndMinutes.format(now),
      "date": formatter.format(now).toString(),
      "done": false,
    }).then((value) => print(value.id));
    myController.clear();
  } catch(error) {
    print(error.toString());
  }
}
