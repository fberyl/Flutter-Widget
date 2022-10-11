part of 'pages.dart';

class Pagetiga extends StatefulWidget {
  final String arg;
  const Pagetiga(this.arg);

  @override
  _PagetigaState createState() => _PagetigaState();
}

class _PagetigaState extends State<Pagetiga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Tiga'),
        centerTitle: true,
      ),
      body: Column(children: [
        Text(widget.arg),
        ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (context) => Pageempat(),
              ),
              (route) => false);
          },
          child: Text('Go to 4th Page v3'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => Pageempat()));
          },
          child: Text('Go to 4th Page v2 with replacement'),
        ),
      ]),
    );
  }
}
