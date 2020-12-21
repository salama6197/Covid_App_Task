import 'package:covid19_care/regestire-screens/login-signup-switch.dart';
import 'package:covid19_care/regestire-screens/login/login-screen.dart';
import 'package:covid19_care/regestire-screens/or-divider.dart';
import 'package:covid19_care/regestire-screens/other-log-in.dart';
import 'package:covid19_care/regestire-screens/register-button.dart';
import 'package:covid19_care/regestire-screens/signup/signup-background.dart';
import 'package:covid19_care/regestire-screens/text-field.dart';
import 'package:covid19_care/screens/main-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  // final _auth = Auth();
  final _globalKey = GlobalKey<FormState>();
  String _email , _password ;
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

              SizedBox(height: size.height * 0.1),
              // SvgPicture.asset(
              //   "assets/icons/signup.svg",
              //   height: size.height * 0.35,
              // ),
              // RoundedInputField(
              //   hintText: "Your Email",
              //   onChanged: (value) {
              //     _email = value;
              //   },
              // ),
              CustomizedTextField(
                hint: "Your Email",
                onSaved: (value) {
                  _email=value;
                },
                icon: Icons.person,
              ),
              CustomizedTextField(
                hint: "Password",
                onSaved: (value) {
                  _password=value;
                },
                icon: Icons.lock,
              ),
              // RoundedPasswordField(
              //   onChanged: (value) {
              //    _password = value;
              //   },
              // ),
              RoundedButton(
                text: "SIGNUP",
                press: ()=>Navigator.pushNamed(context,MyHomePage.id),
                // press: () async {
                  // logIn();
                  // if(_globalKey.currentState.validate())
                  // {
                  //   _globalKey.currentState.save();
                  //   final modalHud = Provider.of<ModalHud>(context , listen: false);
                  //   modalHud.changeIsLoading(true);
                  //   try
                  //   {
                  //     final authResult = await _auth.signUp(_email.trim(), _password.trim());
                  //     if(authResult != null)
                  //     {
                  //       Navigator.pushNamed(context, Login.id);
                  //       modalHud.changeIsLoading(false);
                  //     }
                  //   }
                  //   on PlatformException catch(e)
                  //   {
                  //     modalHud.changeIsLoading(false);
                  //     Scaffold.of(context).showSnackBar(SnackBar(content: Text(e.toString(),),),);
                  //   }
                  //   modalHud.changeIsLoading(false);
                  // }
                // },
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                  login: false,
                  press: () => Navigator.pushNamed(context, LoginScreen.id)
                  // =>Navigator.pushNamed(context, LoginScreen.id)
              ),
              OrDivider(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: <Widget>[
              //     SocalIcon(
              //       iconSrc: "assets/icons/facebook.svg",
              //       press: () {},
              //     ),
              //     SocalIcon(
              //       iconSrc: "assets/icons/twitter.svg",
              //       press: () {},
              //     ),
              //     SocalIcon(
              //       iconSrc: "assets/icons/google-plus.svg",
              //       press: () => _googleSignIn(context),
              //     ),
              //   ],
              // ),
              OtherLogIN(
                text: 'Continue With Google',
                icon: FontAwesomeIcons.google,
                color: Colors.red,
                iconColor: Colors.white,
                textColor: Colors.white,
                  press: () => Navigator.pushNamed(context, MyHomePage.id)
                // =>_googleSignIn(context),
              )
            ],
          ),
        ),
      ),
    );
  }
  // Future<void> _googleSignIn(BuildContext context) async {
  //
  //   final CollectionReference users = FirebaseFirestore.instance.collection(kUsersCollection);
  //   final _auth = FirebaseAuth.instance;
  //   final _gSignIn = GoogleSignIn();
  //   final modalHud = Provider.of<ModalHud>(context, listen: false);
  //   modalHud.changeIsLoading(true);
  //   try {
  //     final GoogleSignInAccount gAccount = await _gSignIn.signIn();
  //     if (gAccount != null) {
  //       final GoogleSignInAuthentication googleAuth = await gAccount.authentication;
  //       final AuthCredential credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
  //       UserCredential authResult = await _auth.signInWithCredential(credential);
  //       User user = authResult.user;
  //       users.add({
  //         kUserName: user.displayName,
  //         kUserEmail: user.email,
  //         kUserID: user.uid,
  //         kUserPicture: user.photoURL
  //       });
  //       Navigator.pushNamed(context, MainScreen.id);
  //       modalHud.changeIsLoading(false);
  //       keepUserLoggedIn();
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
  // void keepUserLoggedIn() async{
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool(kKeepMeLoggedIn, true);
  // }
}
