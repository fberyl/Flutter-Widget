part of 'pages.dart';

class Pagedua extends StatefulWidget {
  const Pagedua({ Key? key }) : super(key: key);
  static const String routeName = '/pagedua';

  @override
  _PageduaState createState() => _PageduaState();
}

class _PageduaState extends State<Pagedua> {

  String hello = 'Hello!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Dua'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pagetiga(hello)));
              },
              child: Text('Go to 3rd Page v2 without replacement'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Pagetiga(hello)));
              },
              child: Text('Go to 3rd Page v2 with replacement'),
            ),
          ],
        ),
      ),
    );
  }
}