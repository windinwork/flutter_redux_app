import 'package:redux/redux.dart';
import 'app_state.dart';
import 'app_reducer.dart';
import 'package:redux_thunk/redux_thunk.dart';

Store<AppState> createStore() {
  return Store(appReducer, initialState: AppState.initial(), middleware: [
    // 引入thunk action的中间件
    thunkMiddleware
  ]);
}