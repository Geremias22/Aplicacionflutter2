import 'package:flutter/material.dart';

class AppbarInicio extends StatelessWidget implements PreferredSizeWidget {
  const AppbarInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: true, // Asegura que aparezca el botón del Drawer
      backgroundColor: const Color.fromARGB(255, 200, 0, 0),
      foregroundColor: Colors.black,
      title: const Text(
        "HOLY BURGERS",
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
