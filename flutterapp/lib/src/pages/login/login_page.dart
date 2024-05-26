import 'package:flutter/material.dart';
import 'package:flutterapp/src/utils/my_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Stack(
              children: [
                //Positioned(child: child),
                Positioned(top: -80, left: -100, child: _circleLogin()),
                //Positioned(child: child),
                Positioned(top: 60, left: 25, child: _textLogin()),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      _imageBanner(),
                      _textFieldEmail(),
                      _textFieldPassword(),
                      _buttonLogin(),
                      _textDontHaveAccount(),
                    ],
                  ),
                )
              ],
            )));
  }

  Widget _circleLogin() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor,
      ),
    );
  }

  Widget _textLogin() {
    return const Text(
      'LOGIN',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
    );
  }

  Widget _textFieldEmail() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
              decoration: InputDecoration(
            hintText: 'Correo electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark,
            ),
            prefixIcon: Icon(
              Icons.email,
              color: MyColors.primaryColorDark,
            ),
          ))),
    );
  }

  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 200, bottom: MediaQuery.of(context).size.height * 0.10),
      child: Image.asset(
        'assets/img/logo_flutter.png',
        width: 250,
        height: 250,
      ),
    );
  }

  Widget _textFieldPassword() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),

      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
          decoration: BoxDecoration(
              color: MyColors.primaryOpacityColor,
              borderRadius: BorderRadius.circular(30)),
          child: TextField(
            obscureText: true,
              decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(
              color: MyColors.primaryColorDark,
            ),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColorDark,
            ),
          ))),
    );
  }

  Widget _buttonLogin(){
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
         child: ElevatedButton(
           onPressed: (){},
           child: Text('INGRESAR'),
           style: ElevatedButton.styleFrom(
             backgroundColor: MyColors.primaryColor,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(30)
             ),
             padding: EdgeInsets.symmetric(vertical: 15)
           ),
         ),

      ),
    );

  }

  Widget _textDontHaveAccount(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('no tienes acceso?',
        style: TextStyle(
          color: MyColors.primaryColor
        ),

        ),
        SizedBox(width: 7,),
        Text(
          'RESGISTRATE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: MyColors.primaryColor
          ),
        )
      ],

    );

  }

}
