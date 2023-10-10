// import 'package:hello_world/hello_world.dart' as hello_world;
import 'package:numpy/numpy.dart' as np;

void main(List<String> arguments) {
  var array = [1.0, 2.0, 3.0];
  var mean_ = np.mean(array);
  var diff_ = np.diff(array);
  var dt = np.arange(stop: 10);
  print("dt: ${dt}");
  print("array: ${array} | mean: ${mean_} | diff: ${diff_}");

}
