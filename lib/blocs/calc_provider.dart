import 'package:flutter/material.dart';
import 'package:flutter_calc/blocs/calc_bloc.dart';
export 'package:flutter_calc/blocs/calc_bloc.dart';

class CalcBlocProvider extends InheritedWidget {
  const CalcBlocProvider({Key key, Widget child}) : super(key: key, child: child);

  CalcBloc get bloc => CalcBloc();

  @override
  bool updateShouldNotify(_) => true;

  static CalcBlocProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CalcBlocProvider);
  }
}

//providerを設定することで、すべてのwidgetでstreamを読んだり入れたりすることができる。
//CalcBloc(=calcprovider)→calcscreenという階層