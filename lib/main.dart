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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // banner
            Container(
              margin: const EdgeInsets.only(top: 20,left: 10,right: 10,bottom: 10),
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Card(
                color: Colors.deepPurpleAccent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                        child: const Column(
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
            // workspace section
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    "Workspace",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  GestureDetector(
                    child: const Text("view all",),
                    onTap: () => {
                      print("tap")
                    },
                  ),
                ],
              )
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WorkspaceItem(context),
                    WorkspaceItem(context),
                    WorkspaceItem(context),
                    WorkspaceItem(context),
                    WorkspaceItem(context),
                  ],
                ),
              ),
            ),
            // task section
            Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Text(
                      "Today Task",
                      style: TextStyle(fontSize: 18),
                    ),
                    const Spacer(),
                    GestureDetector(
                      child: const Text("view all",),
                      onTap: () => {
                        print("tap")
                      },
                    ),
                  ],
                )),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TaskItem(context),
                  TaskItem(context),
                  TaskItem(context),
                  TaskItem(context),
                  TaskItem(context),
                  TaskItem(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget TaskItem(context) {
  return Card(
    child: SizedBox(
      height: 100,
      width: MediaQuery.of(context).size.width - 28,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            const Card(
              color: Colors.amber,
              child: SizedBox(
                height: 80,
                width: 80,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add to market",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text("10h - 11h")
                ],
              ),
            ),
            const Spacer(),
            Checkbox(
                value: false,
                onChanged: (value) {
                  print("d");
                }),
          ],
        ),
      ),
    ),
  );
}

Widget WorkspaceItem(context) {
  return const SizedBox(
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
  );
}
