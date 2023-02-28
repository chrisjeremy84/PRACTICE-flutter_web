import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

//Using State to control our variable
final counterProvider = StateProvider((ref) => 0);
void main() {
  runApp(const ProviderScope(child: MyApp()));
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Colors.white
      ),
      home: CounterClass(),
    );
  }
}



///in order to use the created provider;
///you need to extend the class  ->>> class Example extends ConsumerWidget
///you add the required parameter to the build method -> WidgetRef ref
/// And declare a variable that reads the changes to the state
class  CounterClass extends ConsumerWidget {
  const CounterClass({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterProvider);
        return  Scaffold(
          appBar: AppBar(
            title: Text('Counter App', style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          body: Container(
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(child: Text("COUNT: ${counterValue}", style: TextStyle(color: Colors.black, fontSize: 20),)),
                  Flexible(child: IconButton(onPressed: (){
                    /// To add the on pressed action
                    /// There is a reason why we do not update the counterValue created here instead...
                    /// The reason is that the counterValue is only a reference to the acutal provider.
                    /// If it is required to update the value of the provider
                    /// better do it by using ref widget as done below.

                    ref.read(counterProvider.notifier).state++;

                    ///What the above does is;
                    ///it reads the provider without a rebuild or updating the UI.
                  }, icon: const Icon(CupertinoIcons.add, size: 15.0, color: Colors.black)))

                ],
              ),
            ),
          ),
        );
      }
  }

