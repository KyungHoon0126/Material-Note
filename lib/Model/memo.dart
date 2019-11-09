import 'dart:ui';

class Memo {
  String _id;
  String _title;
  String _content;
  DateTime _createdAt;
  Color _color;


  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get content => _content;

  set content(String value) {
    _content = value;
  }

  DateTime get createdAt => _createdAt;

  set createdAt(DateTime value) {
    _createdAt = value;
  }

  Color get color => _color;

  set color(Color value) {
    _color = value;
  }


  // toString : 재정의
  // Class.toString : Class.toString을 하게되면 주소 값을 출력해주는데, 이것을 재정의 함.
  @override
  String toString() {
    return 'Memo{_id: $_id, _title: $_title, _content: $_content, _createdAt: $_createdAt, _color: $_color}';
  }

}