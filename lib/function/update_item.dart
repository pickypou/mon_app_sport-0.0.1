

import 'package:mon_app_sport/variables/my_variables.dart';

void updateItem(String itemID, bool itemDone) {
  databaseReference
  .collection('items')
      .doc(itemID)
      .update({"done": itemDone});
}