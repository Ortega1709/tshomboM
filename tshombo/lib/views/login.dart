import 'package:flutter/material.dart';
import 'package:tshombo/views/index.dart';
import 'package:tshombo/views/signUp.dart';
import '../utils/couleurs.dart';
import '../utils/typographie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();

  var textEditingControllerEmail = TextEditingController();
  var textEditingControllerPassword = TextEditingController();

  // connexion 
  connexion() async {
    if (textEditingControllerEmail.text.trim().toLowerCase() == "kabweortega@gmail.com" && textEditingControllerPassword.text.trim() == "observateur17092002") {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Index()));
    } else {
      ScaffoldMessenger
      .of(context)
      .showSnackBar(SnackBar(content: Text("Email ou mot de passe incorrect", style: h1(null, FontWeight.bold, Colors.white),), backgroundColor: grey1,));
    }
  }

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ghost,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(width * 0.060),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Bienvenue !",
                      style: h1(height * 0.039 , FontWeight.bold, grey1)
                    ),
                    SizedBox(height: height * 0.001,),
                    Text(
                      "Connexion au compte",
                      style: h1(height * 0.029 , FontWeight.bold, grey1)
                    ),
                    SizedBox(height: height * 0.030,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                        suffixIcon: const Icon(Icons.email, color: grey1,),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: grey1,
                            width: 1.5
                          ),
                        ),
                      ),
                      cursorColor: grey1,
                      controller: textEditingControllerEmail,
                      keyboardType: TextInputType.text,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez remplir ce champ";
                        }
                        else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                          return "Veuillez entrer une adresse correct";
                        }
                      },
                    ),
                    SizedBox(height: height * 0.020,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Mot de passe",
                        labelStyle: h1(height * 0.018, FontWeight.normal, grey1),
                        suffixIcon: const Icon(Icons.lock, color: grey1,),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: grey1,
                            width: 1.5
                          ),
                        ),
                      ),
                      controller: textEditingControllerPassword,
                      cursorColor: grey1,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Veuillez remplir ce champ";
                        } 
                        else if (!RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$").hasMatch(value)) {
                          return "Veuillez entrer un mot de passe correct";
                        }
                      },
                    ),
                    SizedBox(height: height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              connexion();
                            } else {
                              return;
                            }
                          },
                          backgroundColor: grey1,
                          tooltip: "Connexion",
                          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                        )
                      ],
                    ),
                    SizedBox(height: height * 0.040,),
                    footers(context, height, width)
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}


// bottom action (create an account and forgot password)
Widget footers(BuildContext context, double? height, double? width) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        GestureDetector(
          onTap: () {
            
          },
          child: Text(
            "Mot de passe oublié ?",
            style: h1(height! * 0.018, FontWeight.bold, grey1)
          ),
        )
      ],
    ),
    Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const SignUp())
            );
          },
          child: Text(
            "Créer un compte",
            style: h1(height * 0.018, FontWeight.bold, grey1)
          ),
        ),
      ],
    )
  ],
);