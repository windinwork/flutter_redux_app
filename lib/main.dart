import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_app/pages/show_page.dart';
import 'package:flutter_redux_app/redux/app_state.dart';
import 'package:flutter_redux_app/redux/store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 创建 Store
    var store = createStore();
    // 使用 StoreProvider 作为根布局
    return StoreProvider<AppState>(
        store: store,
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: ShowPage(),
        ));
  }
}
