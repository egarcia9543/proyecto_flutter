import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/login_divider.dart';
import 'package:sekerme_ecommerce/app/presentation/views/my_sign.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_button_form.dart';
import 'package:sekerme_ecommerce/app/presentation/widgets/my_social_button.dart';

import '../../widgets/my_text_form.dart';

class LoginView extends StatelessWidget {

  static const String name = 'login_view';


  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Logo
                  SvgPicture.asset('assets/images/MyMarca.svg',
                    colorFilter:  ColorFilter.mode(
                      Theme.of(context).colorScheme.primary, BlendMode.srcIn,
                    ),
                    alignment: Alignment.topCenter,
                    height: 180,
                  ),
                  Text('QUE CANCION QUIEREN ESCUCHAR ?',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const MyTextForm(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                    suffixIcon: false,
                  ),
                  const SizedBox(height: 16.0),
                  const MyTextForm(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscureText: true,
                    suffixIcon: true,
                  ),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: (){},
                          child: Text('Forgot your password?',
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  MyButtonForm(text: 'Sing Up', onTap: (){}),
                  const SizedBox(height: 30.0),
                  const LoginDivider(),
                  const SizedBox(height: 30.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MySocialButton(
                          imagePath: 'assets/icons/facebook.png',
                          onTap: (){}
                      ),
                      MySocialButton(
                          imagePath: 'assets/icons/google.png',
                          onTap: (){}
                      ),
                      MySocialButton(

                          imagePath: 'assets/icons/twitter.png',
                          onTap: (){}
                      )
                    ],
                  ),
                  const SizedBox(height: 30.0),
                  MySign(onTap:(){
                    context.go('/register');
                  },
                      text: 'informacion' ,
                      route: 'bienvenidos'),
                ],
              ),
            ),
          )
      ),
    );
  }
}
