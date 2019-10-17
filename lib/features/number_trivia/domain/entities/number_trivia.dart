import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable{

  final String text;
  final int number;

  NumberTrivia({@required  this.text, @required this.number}):super([text,number]);

}

// Equatable 
  // value eqility eka check karanwa flutter wala thiyenne refernital equlity eka withrai e kiyanne 
  // object deke data samana wunath Object deka samana wenne na Equatble walain puluwan data samana Object samana karanna