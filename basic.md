https://www.youtube.com/watch?v=eJojC3lSkwg

### Dart
- Dart is a typesafe language
- two types of check 
  - Static Type check -> compile time
  - Runtime Check -> Runtime
- Compile way
  -  just in time compilers -> intermediary language that can be run by the dart virtual machine -> Ahed of time compiler compile the source code to machine code 

### Dart Project Structure 

- .dart_tool, .packages, pubspace.lock, pubspace.yaml file  are associated with dart packages 
- on the other hand the `lib` folder is realated with libraries.
- the analysis_options.yaml file is related to how the static dart analyzer scans the code by following a set of rules a process called linting
- Bin folder resvered for command line apps 
- Dart Linting -> Static analyzer show warning by lint rules


### Running Dart Application in- Depth :









### BuildContext : 

- BuildContext is somehow a tool which helps handel the location of a widget inside the widget tree
- 3 completely wrong assumption about buildcontext
  - Builcontext instance `context` , we use it many place, actually the  `context`  are not same
  - if ther's no `context` instance passed to a widget, then the widget isn't build with a build context. that's wrong assumption
  - The context in which the next child will be build, won't be related to the parent context. the assumption is wrong.

