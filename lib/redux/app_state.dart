import 'package:flutter_redux_app/redux/list/list_state.dart';

class AppState {
  ListState listState;

  AppState(this.listState);

  factory AppState.initial() {
    // 对于存在多个页面State情况，
    // 可以通过AppState(ListState.initial()， ListState2.initial()， ListState3.initial())这样的形式添加
    return AppState(ListState.initial());
  }
}