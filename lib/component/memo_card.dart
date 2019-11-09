import 'package:flutter/material.dart';
import 'package:flutter_note/Model/memo.dart';

class MemoCard extends StatelessWidget {
  Memo _memo;


  MemoCard(this._memo);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.button.copyWith(
      color: Colors.white,
    );


    return Padding(
        padding: EdgeInsets.symmetric(horizontal:16).copyWith(bottom: 16),
        child:Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              color: _memo.color,
              shadows: [
                // Offset : 그림자 위치 이동
                BoxShadow(blurRadius: 5.0,
                    color : Colors.black26,
                    offset: Offset.fromDirection(90, 3))
              ]
          ),
          padding: EdgeInsets.all(12),
          child: Column(
            // 가로줄에서 왼쪽으로 이동.
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_memo.title, style: textStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
              Padding(padding: EdgeInsets.only(bottom: 8)),
              Text(_memo.content, style: textStyle)

            ],
          ),
        )
    );
  }
}
