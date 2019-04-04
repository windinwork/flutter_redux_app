import 'package:flutter/material.dart';
import 'package:flutter_redux_app/redux/list/list_export.dart';
import 'package:flutter_redux_app/redux/redux_export.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListPageState();
  }
}

class ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    buildLoad() {
      return Center(
        child: Text("正在加载中..."),
      );
    }

    buildList(list) {
      return ListView.builder(
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(list[index]),
              onTap: () {
                var store = StoreProvider.of<AppState>(context);
                store.dispatch(SelectItemAction(list[index]));
                // 返回到上一级页面
                Navigator.pop(context);
              },
            );
          });
    }

    return Scaffold(
        appBar: AppBar(
          title: Text("List"),
        ),
        body: StoreConnector<AppState, ListState>(
            // 初始化时加载列表
            onInit: (store) {
          if (!store.state.listState.isInit) {
            store.dispatch(fetchList);
          }
          // 将store中的state转化为viewModel
        }, converter: (store) {
          // todo return view model
          return store.state.listState;
          // 通过viewModel更新界面
        }, builder: (contxet, state) {
          // 根据状态显示界面
          if (!state.isInit) {
            // 显示loading界面
            return buildLoad();
          } else {
            // 显示列表界面
            var list = state.list;
            return buildList(list);
          }
        }));
    ;
  }
}
