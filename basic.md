https://www.youtube.com/watch?v=eJojC3lSkwg

### Dart
- Dart is a typesafe language
- two types of check 
  - Static Type check -> compile time
  - Runtime Check -> Runtime
- 









### BuildContext : 

- BuildContext is somehow a tool which helps handel the location of a widget inside the widget tree
- 3 completely wrong assumption about buildcontext
  - Builcontext instance `context` , we use it many place, actually the  `context`  are not same
  - if ther's no `context` instance passed to a widget, then the widget isn't build with a build context. that's wrong assumption
  - The context in which the next child will be build, won't be related to the parent context. the assumption is wrong.
- Compile way
  - | just in time compiler |
