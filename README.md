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



