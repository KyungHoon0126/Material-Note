import 'package:flutter/material.dart';

import 'Model/memo.dart';
import 'component/memo_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              title: TextStyle(color: Colors.black)
          )
      ),
      home: MainPage(title: 'Memo'),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    var memo1 = new Memo();
    memo1.title = "안녕하세요";
    memo1.content = "반갑습니다";
    memo1.color = Colors.red;

    var memo2 = new Memo();
    memo2.title = "안녕하세요";
    memo2.content = "반갑습니다";
    memo2.color = Colors.lightGreen;

    var memo3 = new Memo();
    memo3.title = "안녕하세요";
    memo3.content = "반갑습니다";
    memo3.color = Colors.teal;

    var memo = [memo1, memo2, memo3];

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title, style:Theme.of(context).textTheme.title),
          backgroundColor: Colors.white,
          elevation: 0, // 그림자 제거
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: _buildListView(memo),
              // Expanded안에 ListView를 넣어야 오류가 안생김.
            ),
            Container(
              decoration: BoxDecoration(
                // 선을 긋는다.
                border: Border(top: BorderSide(color : Colors.black12, width: 1)),
              ),
              child: SizedBox(
                // 주어진 공간을 끝까지 채운다,
                  width: double.infinity,
                  height: 50,
                  child : FlatButton(
                    // Take a note가 왼쪽으로 이동.
                    child:SizedBox(child:Text('Take a note', textAlign: TextAlign.left,),
                        width: double.infinity
                    ),
                    onPressed: (){},
                  )
              ),
            )
          ],
        )
    );
  }

  ListView _buildListView(List<Memo> memo) {
    return ListView(
      children: <Widget>[
        MemoCard(memo[0]),
        MemoCard(memo[1]),
        MemoCard(memo[2]),
      ],
    );
  }
}
