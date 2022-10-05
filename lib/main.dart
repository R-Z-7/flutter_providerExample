import 'package:flutter/material.dart';
import 'package:flutterprovider/screen1.dart';
import 'package:provider/provider.dart';

class Manage extends ChangeNotifier{
	int count = 0 ;

	int get counter{
	return count ;
	}

	void increaseCounter(){
	count++ ;
	notifyListeners();
	}

	void decreaseCounter(){
		count-- ;
		notifyListeners();
	}
}



void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MultiProvider(
	providers: [
		ChangeNotifierProvider.value(value: Manage())
	],
		child: MaterialApp(
		home: HomePage(),
	),
	);
}
}



