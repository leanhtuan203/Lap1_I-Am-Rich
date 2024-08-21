import 'package:flutter/material.dart';
// Row(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Container(
// height: 100.0,
// // margin: const EdgeInsets.only(left: 30.0),
// // padding: const EdgeInsets.all(20.0),
// color: Colors.white,
// child: const Text('Container 1'),
// ),
// const SizedBox(
// width: 30.0,
// ),
// Container(
// height: 100.0,
// color: Colors.blue,
// child: const Text('Container 2'),
// ),
// Container(
// height: 100.0,
// color: Colors.red,
// child: const Text('Container 3'),
// ),
// ],
// )
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                const Text(
                  'Huynh Trong Duc',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                const SizedBox(height: 5.0,),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.teal.shade100,
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+84 775 445 811',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 15.0
                      ),
                    ),
                  ),
                ),
                Card(
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.5),
                    child: ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'ducht.21it@vku.udn.vn',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro'
                        ),
                      ),
                    )
                )
              ],
            )
        ),
      ),
    );
  }
}
