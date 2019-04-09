import 'package:flutter/material.dart';
import 'screen.dart';
import 'blocs/calc_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalcBlocProvider(
        child: CalcScreen(),
      ),
    );
  }
}

//streamをつかうことで、データの送信と保存が簡単にできる。
//また、transformを使うことでデータの変更できる。
//streamに加えて、providerを設定すれば、streamのデータなどは
//設定したproviderのwidget以降はデータを共通して取り扱えれる。