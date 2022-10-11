part of 'pages.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() { 
    super.initState();
    
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  bool isHide = true;
  
  @override
  void dispose() { 
    ctrlEmail.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Form(
          key: _loginKey,
          child:  Column(
            children: [
              SizedBox(height: 32,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: Icon(Icons.email)
                ),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return !EmailValidator.validate(value.toString())
                  ? 'Email tidak valid!' : null;
                },
              ),
              SizedBox(height: 16,),
              TextFormField(
                obscureText: isHide,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.lock),suffixIcon: GestureDetector(
                    onTap: (){
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child: Icon(
                      isHide
                        ? Icons.visibility
                        : Icons.visibility_off
                    ),
                  )
                ),
                controller: ctrlPass,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  return value.toString().length < 8
                  ? 'Password at least 8 character!'
                  : null;
                },
              ),

              SizedBox(height:32),
              ElevatedButton(
                onPressed: (){
                  if(_loginKey.currentState!.validate()){
                    Fluttertoast.showToast(
                      msg: 'email:'+ctrlEmail.text.toString()+', password: '+ctrlPass.text.toString(),
                      toastLength: Toast.LENGTH_SHORT,
                      fontSize: 14,
                      backgroundColor: Colors.greenAccent,
                      textColor: Colors.white
                    );
                  }else{
                    Fluttertoast.showToast(
                      msg: "Please fill all fields!",
                      toastLength: Toast.LENGTH_SHORT,
                      fontSize: 14,
                      backgroundColor: Colors.redAccent,
                      textColor: Colors.white
                    );
                  }
                },
                child: Text("Login")
              )

            ],
          )
        ),
      ),
      
    );
  }
}