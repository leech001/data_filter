import 'dart:math';

class Median3 {
  List<num> buf = [0, 0, 0];
  int _counter = 0;

  dynamic filtered(dynamic value) {
    buf[_counter] = value;
    if (++_counter > 2) _counter = 0;

    return (max(buf[0], buf[1]) == max(buf[1], buf[2]))
        ? max(buf[0], buf[2])
        : max(buf[1], min(buf[0], buf[2]));
  }
}
