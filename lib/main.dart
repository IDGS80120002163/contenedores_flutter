import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primera práctica',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 20, 86)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Primera práctica'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.1, 1],
            colors: [Colors.blue, Colors.black],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // First row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 75,
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: const Text("Hola mundo!"),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 15, 216, 58),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 95, 3),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: const Center(child: Text("Otro container")),
                    ),
                    Container(
                      margin: EdgeInsets.all(40),
                      width: 300,
                      height: 90,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xFF4AAEFD),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Container(
                        width: 210,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFF94CCF9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Lonches',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: const Text("Hola mundo!"),
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.centerRight,
                          radius: 0.8,
                          colors: [Colors.yellow, Colors.black],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Click corto");
                      },
                      onLongPress: () {
                        print("Click Largo");
                      },
                      onDoubleTap: () {
                        print("Doble click");
                      },
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 5),
                          image: DecorationImage(
                            image: AssetImage("../assets/hamburguesa.png"),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(-5, 5),
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
                // Second row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 75,
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: const Text("Hola mundo!"),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 15, 216, 58),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 95, 3),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: const Center(child: Text("Otro container")),
                    ),
                    Container(
                      margin: EdgeInsets.all(40),
                      width: 300,
                      height: 90,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xFF4AAEFD),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Container(
                        width: 210,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFF94CCF9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Lonches',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: const Text("Hola mundo!"),
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.centerRight,
                          radius: 0.8,
                          colors: [Colors.yellow, Colors.black],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Click corto");
                      },
                      onLongPress: () {
                        print("Click Largo");
                      },
                      onDoubleTap: () {
                        print("Doble click");
                      },
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 5),
                          image: DecorationImage(
                            image: AssetImage("../assets/hamburguesa.png"),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(-5, 5),
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
                // Third row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 75,
                      height: 75,
                      margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                      child: const Text("Hola mundo!"),
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 15, 216, 58),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 11, 95, 3),
                            blurRadius: 20.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          ),
                        ],
                      ),
                      child: const Center(child: Text("Otro container")),
                    ),
                    Container(
                      margin: EdgeInsets.all(40),
                      width: 300,
                      height: 90,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Color(0xFF4AAEFD),
                        borderRadius: BorderRadius.circular(45),
                      ),
                      child: Container(
                        width: 210,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xFF94CCF9),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            bottomLeft: Radius.circular(45),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Lonches',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      alignment: Alignment.center,
                      child: const Text("Hola mundo!"),
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.centerRight,
                          radius: 0.8,
                          colors: [Colors.yellow, Colors.black],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print("Click corto");
                      },
                      onLongPress: () {
                        print("Click Largo");
                      },
                      onDoubleTap: () {
                        print("Doble click");
                      },
                      child: Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow, width: 5),
                          image: DecorationImage(
                            image: AssetImage("../assets/hamburguesa.png"),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: Offset(-5, 5),
                              spreadRadius: 10,
                            ),
                          ],
                        ),
                        alignment: Alignment.bottomLeft,
                        child: const Text(""),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
