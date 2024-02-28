import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Card(
          elevation: 0,
          child: Icon(Icons.menu),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text(
          "HomePage",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () => print("blabla"),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: 180,
            child: const Card(
              color: Colors.deepPurpleAccent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today progress summery",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            "15 Tasks",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              "Workspace",
              style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: Card(
                      child: Center(
                        child: Text(
                          "ss",
                          style: TextStyle(fontSize: 26),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: const Text(
              "Today Task",
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
