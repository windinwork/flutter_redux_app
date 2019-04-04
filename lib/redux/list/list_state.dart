import 'dart:collection';

class ListState {
  bool _init = false; // 列表初始化标志
  List<String> _list = []; // 列表数据
  String _selected = ''; // 选中的列表项

  ListState(this._init, this._list, this._selected);

  factory ListState.initial() {
    return ListState(false, [], "未选中");
  }

  bool get isInit => _init;

  UnmodifiableListView<String> get list => UnmodifiableListView(_list);

  String get selected => _selected;
}