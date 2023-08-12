//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas


import 'package:go_router/go_router.dart';
import 'package:sekerme_ecommerce/app/presentation/views/forgot_password/forgot_%20password_view.dart';
import 'package:sekerme_ecommerce/app/presentation/views/login/widgets/forgotpassword.dart';

//Archivo que contiene los links de las vistas
import 'package:sekerme_ecommerce/app/presentation/views/views_links.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  initialLocation: '/',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        if (Supabase.instance.client.auth.currentUser != null){
          return const HomeView();
        } else {
          return const LoginView();
        }
      }
    ),
    GoRoute(
      path: '/home',
      name: HomeView.name,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/register',
      name: RegisterView.name,
      builder: (context, state) => const RegisterView(),
    ),
    GoRoute(
      path: '/login',
      name: LoginView.name,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
        path: '/recover',
        name: ForgotPasswordView.name,
      builder: (context, state) => const ForgotPasswordView(),
    )
  ],

);


