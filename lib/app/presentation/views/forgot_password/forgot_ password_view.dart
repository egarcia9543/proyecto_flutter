import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/my_text_form.dart';

class ForgotPasswordView extends StatelessWidget {
  static const String name = 'forgot_password_view';

  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo
                Image.asset(
                  'assets/images/bpc.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Recuperar Contraseña',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16.0),
                const MyTextForm(
                  hintText: 'Ingresa tu correo electrónico',
                  labelText: 'Correo electrónico',
                  textInputType: TextInputType.emailAddress,
                  obscureText: false,
                  suffixIcon: false,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para enviar correo de recuperación aquí
                  },
                  child: const Text('Recuperar Contraseña'),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿Ya tienes una cuenta?',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go('/login'); // Cambiar la ruta según tu configuración
                        },
                        child: Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
