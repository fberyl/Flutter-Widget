part of 'pages.dart';
class Pageempat extends StatefulWidget {
  const Pageempat({ Key? key }) : super(key: key);

  @override
  _PageempatState createState() => _PageempatState();
}

class _PageempatState extends State<Pageempat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Empat'),
        centerTitle: true,
      ), 
    );
  }
}