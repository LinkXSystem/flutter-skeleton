# listener

用于实验怎么实现 Flutter 的埋点功能

## 方案

- 基于 Listener 来实现

```dart
@override
Widget build(BuildContext context) {
    return Listener( child: Container(), onPointerDown: (PointerDownEvent event) {});
}
```
