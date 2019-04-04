import 'dart:async';

import "package:flutter_redux_app/redux/app_state.dart";
import 'package:redux/redux.dart';

import 'list_action.dart';
import 'package:redux_thunk/redux_thunk.dart';

ThunkAction<AppState> fetchList = (Store<AppState> store) async {
  // 模拟网络请求
  await Future.delayed(Duration(milliseconds: 3000));
  var list = [
    "1. Redux State Management",
    "2. Redux State Management",
    "3. Redux State Management",
    "4. Redux State Management",
    "5. Redux State Management",
    "6. Redux State Management",
    "7. Redux State Management",
    "8. Redux State Management",
    "9. Redux State Management",
    "10. Redux State Management"
  ];

  store.dispatch(FetchListAction(list));
};

// 如果需要使用到ThunkAction需要引入参数，可以通过返回thunk的形式
// ThunkAction<AppState> fetchList(int pageNum, int pageSize) {
//   return (Store<String> store) async {
//     ...
//
//     store.dispatch(FetchListAction(list));
//   };
// }
// store.dispatch(fetchList(1, 20));