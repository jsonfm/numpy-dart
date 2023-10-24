// import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:numpy/numpy.dart' as np;

void main(List<String> arguments) {
  var array = [1, 2, 3, 4];
  var dft = np.dft(array);
  print(dft);
}

