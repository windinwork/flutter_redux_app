import 'package:flutter/material.dart';
import 'package:flutter_redux_app/redux/redux_export.dart';

import 'list_page.dart';

class ShowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show'),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StoreConnector<AppState, String>(
                converter: (store) => store.state.listState.selected,
                builder: (context, selected) {
                  return Text(selected);
                },
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 36.0),
                  textColor: Colors.white,
                  child: Text(
                    '前往列表',
                  ),
                  color: Colors.lightBlue,
                  onPressed: () =>
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ListPage();
                      })),
                ),
              ),
            ],
          )),
    );
  }
}
