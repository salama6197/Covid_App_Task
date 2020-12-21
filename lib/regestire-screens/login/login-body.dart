import 'package:covid19_care/regestire-screens/login-signup-switch.dart';
import 'package:covid19_care/regestire-screens/login/login-background.dart';
import 'package:covid19_care/regestire-screens/or-divider.dart';
import 'package:covid19_care/regestire-screens/other-log-in.dart';
import 'package:covid19_care/regestire-screens/register-button.dart';
import 'package:covid19_care/regestire-screens/signup/signup-screen.dart';
import 'package:covid19_care/regestire-screens/text-field.dart';
import 'package:covid19_care/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  final _globalKey = GlobalKey<FormState>();
  String _email, _password;
  // final _auth = Auth();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SvgPicture.asset(
              //   "assets/icons/login.svg",
              //   height: size.height * 0.35,
              // ),
              SizedBox(height: size.height * 0.1),

              CustomizedTextField(
                hint: "Your Email",
                onSaved: (value) {
                  _email = value;
                },
                icon: Icons.person,
              ),
              CustomizedTextField(
                hint: "Password",
                onSaved: (value) {
                  _password = value;
                },
                icon: Icons.lock,
              ),
              RoundedButton(
                text: "LOGIN",
                  press: () => Navigator.pushNamed(context, MyHomePage.id)
                // => _validate(context),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () =>Navigator.pushNamed(context, SignUpScreen.id)
              ),
              OrDivider(),

              OtherLogIN(
                text: 'Continue With Google',
                icon: FontAwesomeIcons.google,
                color: Colors.red,
                iconColor: Colors.white,
                textColor: Colors.white,
                press: () => Navigator.pushNamed(context, MyHomePage.id)

                // => _googleSignIN(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  // void _validate(BuildContext context) async {
  //   final modalHud = Provider.of<ModalHud>(context, listen: false);
  //   if (_globalKey.currentState.validate()) {
  //     _globalKey.currentState.save();
  //     modalHud.changeIsLoading(true);
  //     try {
  //       final authResult = await _auth.signIn(_email.trim(), _password.trim());
  //       if (authResult != null) {
  //         Navigator.pushNamed(context, MainScreen.id);
  //         modalHud.changeIsLoading(false);
  //       }
  //     } on PlatformException catch (e) {
  //       modalHud.changeIsLoading(false);
  //       Scaffold.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(
  //             e.toString(),
  //           ),
  //         ),
  //       );
  //     }
  //   }
  //   modalHud.changeIsLoading(false);
  // }
  //
  // Future<void> _googleSignIN(context) async {
  //   // final CollectionReference users = FirebaseFirestore.instance.collection(kUsersCollection);
  //   final _auth = FirebaseAuth.instance;
  //   final _gSignIn = GoogleSignIn();
  //   final modalHud = Provider.of<ModalHud>(context, listen: false);
  //   modalHud.changeIsLoading(true);
  //   try {
  //     final GoogleSignInAccount gAccount = await _gSignIn.signIn();
  //     if (gAccount != null) {
  //       final GoogleSignInAuthentication googleAuth =
  //       await gAccount.authentication;
  //       final AuthCredential credential = GoogleAuthProvider.credential(
  //           idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
  //       await _auth.signInWithCredential(credential);
  //       Navigator.pushNamed(context, MainScreen.id);
  //       modalHud.changeIsLoading(false);
  //       _keepUserLoggedIn();
  //     }
  //   } on PlatformException catch (e) {
  //     modalHud.changeIsLoading(false);
  //     Scaffold.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //           e.toString(),
  //         ),
  //       ),
  //     );
  //   }
  // }
  //
  // void _keepUserLoggedIn() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool(kKeepMeLoggedIn, true);
  // }
}
