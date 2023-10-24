### numpy-dart
A simple implementation of some features of the `numpy python` library brought `to dart`. This was just a personal project to learn dart.


### mean
```dart
import 'package:numpy/numpy.dart' as np;

var array = [1, 2, 3, 4, 5, 6];
var mean_ = np.mean(array);
print("mean: ${mean_}");

```

### diff
```dart
import 'package:numpy/numpy.dart' as np;

var array = [1, 2, 3, 4, 5, 6];
var diff_ = np.diff(array);

print("diff: ${diff_}");
```

### arange
```dart
import 'package:numpy/numpy.dart' as np;


var dt  = np.arange(start: 0, stop: 10, step: 1);
print("dt: ${dt}");

```

### Complex
```dart
import 'package:numpy/numpy.dart' as np;

var a = np.Complex(1, 1);
var b = np.Complex(1, 2);
var c = np.Complex.polar(1.4142, 0.7854);

print(a);
print(a.phase());
print(a * 2);
print(a.exp());
print(a + b);
print(c);
```


### DFT
Discrete Fourier Transform:
```dart
import 'package:numpy/numpy.dart' as np;

var array = [1, 2, 3];
var dft = np.dft(array);
print(dft);
```