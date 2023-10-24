import "dart:math";

const PI = 3.1415926535897932384626433832795028;
const EULER = 2.7182818284590452353602874713527;


num sum(List<num> array){
  if (array.isEmpty) return 0.0;
  num sum_ = 0;
  for(var i = 0; i < array.length; i++){
    sum_ += array[i];
  }
  return sum_;
}

num mean(List<num> array) {
  if (array.isEmpty) return 0;
  num sum_ = sum(array);
  int N = array.length;
  num mean = sum_ / N;
  return mean;
}


List<num> diff(List<num> array) {
  if (array.isEmpty) return [];
  if (array.length == 1) return array;

  List<num> result = [];

  for (int i = 0; i < array.length - 1; i++) {
    num current = array[i];
    num following = array[i + 1];
    num difference = following - current;
    result.add(difference);
  }

  return result;
}


List<num> arange({ num start = 0, num? stop, num step  = 1, bool includeStop = false}) {

  if (step == 0) {
    throw ArgumentError("`step` argument couldn't be 0.");
  }

  stop = stop ?? start;

  List<num> result = [];

  if (step > 0) {
    while(( start < stop) || (start == stop && includeStop)){
      result.add(start);
      start += step;
    }
  } else if (step <= 0) {
    while ((start > stop) || (start == stop && includeStop)){
      result.add(start);
      start += step;
    }
  }

  return result;
}



class Vector {
  num x = 2;
  num y = 1;

  Vector([num? x, num? y]){
    this.x = x ?? 0;
    this.y = y ?? 0;
  }

  num abs() {
    var abs_ = sqrt(pow(this.x, 2) + pow(this.y, 2));
    return abs_;
  }
}


class Complex {
  num real;
  num imag ;

  Complex([this.real = 0, this.imag = 0]);

  Complex operator *(num k) {
    return Complex(real * k, imag * k);
  }

  Complex operator +(Complex other) {
    var newReal = real + other.real;
    var newImag = imag + other.imag;
    return Complex(newReal, newImag);
  }

  static Complex polar(num amplitude, num phase){
    var a = amplitude * cos(phase);
    var b = amplitude * sin(phase);
    return Complex(a, b);
  }

  @override
  String toString() {
    String string = "${real.toStringAsFixed(4)} + ${imag.toStringAsExponential(4)}j";
    return string;
  }

  double abs() {
    var abs_ = sqrt(pow(real, 2) + pow(imag, 2));
    return abs_;
  }

  double phase() {
    var phase = atan2(imag, real);
    return phase;
  }

  String exp() {
    var amplitude = abs();
    var phi = phase();
    var string = "${amplitude.toStringAsFixed(4)} . exp(${phi.toStringAsFixed(4)}j)";
    return string;
  }

}


List<Complex> dft(List<num> array){

  var N = array.length;
  List<Complex> results = [];

  for(var k = 0; k <= N - 1; k++){
      var sum_ = Complex(0, 0);

      for(var n=0; n <= N - 1; n++){
        var xn = array[n];
        var phase = - (2 * PI * k * n) / N;
        var complex = Complex.polar(xn, phase);

        sum_ += complex;
      
      }

      results.add(sum_);
  }

  return results;
}