import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.blue),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormWidget(),
    );
  }
}

class FormWidget extends StatefulWidget {
  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom ScrolView"),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            backgroundColor: Colors.redAccent,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("SliverApp"),
              centerTitle: true,
              background: Image.asset(
                "assets/2.jpeg",
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ListTile(
                      title: Text("veri $index"),
                    ),
                childCount: 1000),
          )
        ],
      ),
    );
  }
}
