import 'package:flutter/material.dart';
import 'package:tshombo/utils/dimension.dart';
import 'package:tshombo/views/forgotPassword.dart';
import 'package:tshombo/views/signUp.dart';
import 'package:tshombo/utils/couleurs.dart';
import 'package:tshombo/utils/typographie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final formKey = GlobalKey<FormState>();
  
  var textEditingControllerEmail = TextEditingController();
  var textEditingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    var dimension = Dimension(context);

    return Scaffold(
      backgroundColor: Couleur().white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/images/lineup.png"),
            Padding(
              padding: EdgeInsets.all(dimension.width * 0.060),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Bienvenue !",
                      style: h1(dimension.height * 0.036 , FontWeight.bold, Couleur().blue)
                    ),
                    SizedBox(height: dimension.height * 0.001,),
                    Text(
                      "Connexion au compte",
                      style: h1(dimension.height * 0.026 , FontWeight.bold, Couleur().blue)
                    ),
                    SizedBox(height: dimension.height * 0.030,),
                    TextFormField(
                      style: h1(null, FontWeight.normal, Couleur().blue),
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                        suffixIcon: Icon(Icons.email, color: Couleur().blue,),
                        focusedBorder:  UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Couleur().blue,
                            width: 1.5
                          ),
                        ),
                      ),
                      cursorColor: Couleur().blue,
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
                        return null;
                      },
                    ),
                    SizedBox(height: dimension.height * 0.020,),
                    TextFormField(
                      style: h1(null, FontWeight.normal, Couleur().blue),
                      decoration: InputDecoration(
                        labelText: "Mot de passe",
                        labelStyle: h1(dimension.height * 0.018, FontWeight.normal, Couleur().blue),
                        suffixIcon: Icon(Icons.lock, color: Couleur().blue),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Couleur().blue,
                            width: 1.5
                          ),
                        ),
                      ),
                      controller: textEditingControllerPassword,
                      cursorColor: Couleur().blue,
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
                        return null;
                      },
                    ),
                    SizedBox(height: dimension.height * 0.030,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {

                            } 
                          },
                          backgroundColor: Couleur().blue,
                          tooltip: "Connexion",
                          child: const Icon(Icons.arrow_forward_rounded, color: Colors.white,),
                        )
                      ],
                    ),
                    SizedBox(height: dimension.height * 0.040,),
                    footers(context, dimension.height, dimension.width)
                  ],
                ),
              ),
            ),
          ],
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
            Navigator
            .of(context)
            .push(
              MaterialPageRoute(builder: (context) => const ForgotPassword())
            );
          },
          child: Text(
            "Mot de passe oublié ?",
            style: h1(height! * 0.018, FontWeight.bold, Couleur().blue)
          ),
        ),
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
            style: h1(height * 0.018, FontWeight.bold, Couleur().blue)
          ),
        ),
      ],
    )
  ],
);