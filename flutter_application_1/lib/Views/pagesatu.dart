part of 'pages.dart';

class Pagesatu extends StatefulWidget {
  const Pagesatu({ Key? key }) : super(key: key);
  static const String routeName = '/';

  @override
  _PagesatuState createState() => _PagesatuState();
}

class _PagesatuState extends State<Pagesatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Satu'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, Pagedua.routeName);
              },
              child: Text('Go to 2nd Page v1 without replacement'),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacementNamed(context, Pagedua.routeName);
              },
              child: Text('Go to 2nd Page v1 with replacement'),
            ),
          ],
        ),
      ),
    );
  }
}