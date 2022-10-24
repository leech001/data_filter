class ExpRunningAvg {
  double coef;
  int prd;

  double _fil = 0.0;
  int _tmr = 0;

  ExpRunningAvg({
    required this.coef,
    required this.prd,
  });

  num filteredTime(num value) {
    if (DateTime.now().millisecondsSinceEpoch - _tmr >= prd) {
      _tmr += prd;
      filtered(value);
    }
    return _fil;
  }

  num filtered(num value) {
    return _fil += (value - _fil) * coef;
  }
}
