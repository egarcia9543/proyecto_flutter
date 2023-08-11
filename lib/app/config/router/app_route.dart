//Este archivo se encarga de manejar las rutas de la aplicación
//Se debe importar el archivo de la vista que se desea mostrar
//Se debe agregar la ruta en el Map de rutas

import 'package:go_router/go_router.dart';

//Archivo que contiene los links de las vistas
import 'package:admylib/app/presentation/views/views_links.dart';


final appRouter = GoRouter(
  //La ruta inicial de la aplicación
  initialLocation: '/',
  // rutas de la aplicación
  routes: [
    GoRoute(
      path: '/',
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

  ],

);


