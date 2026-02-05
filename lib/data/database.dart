import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  // reference to the Hive box (already opened in main)
  final Box myBox = Hive.box('myBox');
}