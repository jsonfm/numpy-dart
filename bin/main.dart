// import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:numpy/numpy.dart' as np;

void main(List<String> arguments) {
  var array = [1, 2, 3, 4, 5, 6];
  // var mean_ = np.mean(array);
  // var diff_ = np.diff(array);
  // var dt = np.arange(stop: 10);
  print(array);

  var a = np.Vector();
  print(a.abs());
  a.x = 1;
  print(a.abs());
}
