import 'package:flutter/material.dart';
import 'package:untitled/Widgets/responsive_builder.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return ResponsiveBuilder(
        mobile: Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text('home'),

              ),
              ListTile(
                title: Text('setting'),

              ),
              ListTile(
                title: Text('product'),

              ),
              ListTile(
                title: Text('contact'),

              ),
              ListTile(
                title: Text('view'),

              ),
            ],
          ),
        ),
      ),
      body: ResponsiveBuilder(
        mobile: Center(
          child: Text('Hello world from mobile'),
        ), desktop: Center(
        child: Text('Hello world form desktop'),
      ),
        tablet: Center(
            child: Text('Hello world from tablet')
        ),),
    ),
        desktop: Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  child: Expanded(
                    child:Column(
                      children: [
                        RichText(text: TextSpan(
                            text: 'Flutter Web The Basic',
                            style: TextStyle(fontSize: 45)
                        )),
                        RichText(text: TextSpan(
                            text: 'Flutter Web The Basic',
                            style: TextStyle(fontSize: 45)
                        ))

                      ],
                    ),
                  ),
              ),
            ),
            SizedBox(width: 150),
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: ContinuousRectangleBorder()
              ) ,
              onPressed: () {
                // Add your button action here
              },
              child: Text('Button Pressed', style: TextStyle(fontSize: 20,color: Colors.white),),
            ),
            SizedBox(width: 100,)
          ],
        ),
      ),
      ),
    ),
        tablet: Scaffold(
      appBar: AppBar(
        title: const Text('home'),

      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text('home'),

              ),
              ListTile(
                title: Text('setting'),

              ),
              ListTile(
                title: Text('product'),

              ),
              ListTile(
                title: Text('contact'),

              ),
              ListTile(
                title: Text('view'),

              ),
            ],
          ),
        ),
      ),
      body: ResponsiveBuilder(
        mobile: Center(
          child: Text('Hello world from mobile'),
        ), desktop: Center(
        child: Text('Hello world form desktop'),
      ),
        tablet: Center(
            child: Text('Hello world from tablet')
        ),),
    )
    );
  }
}
