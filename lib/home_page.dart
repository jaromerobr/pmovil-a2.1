import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil Profesional'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 8,
        // Action button con ícono (requisito: al menos un action)
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Información: Aplicación Flutter personalizada'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
          ),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // WIDGET 1: CircleAvatar mejorado
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.deepPurple,
              child: const Icon(
                Icons.person,
                size: 60,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),

          // WIDGET 2: Nombre (tu nombre completo)
          Text(
            'James Romero',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),

          // WIDGET 3: Cédula
          Center(
            child: Text(
              'Cédula: 1234567890',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const SizedBox(height: 8),

          // WIDGET 4: Carrera
          Center(
            child: Text(
              'Carrera: TICS',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          const SizedBox(height: 24),
          // WIDGET 5: Ocupación (con Card personalizado)
          Center(
            child: Text(
              'Ocupación: Estudiante en UIDE',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.deepPurple,
                  ),
            ),
          ),  

          const SizedBox(height: 24),

          // Card con elevation y RoundedRectangleBorder personalizados
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                color: Colors.deepPurple,
                width: 2,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Icon(
                    Icons.school,
                    size: 48,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Estudiante en UIDE',
                    style: Theme.of(context).textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Especializado en desarrollo móvil con Flutter y Dart. Estudiando para ser el próximo gran desarrollador.',
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // Email Row (mejorado)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.email,
                color: Colors.deepPurple,
                size: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'estudiante@uide.edu.ec',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // WIDGET 6 (último): ElevatedButton con onPressed
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // Imprime en consola (DEBUG CONSOLE en VS Code)
              debugPrint('=== BOTÓN PRESIONADO ===');
              debugPrint('Nombre: James Romero');
              debugPrint('Cédula: 1234567890');
              debugPrint('Carrera: TICS');
              debugPrint('Ocupación: Estudiante en UIDE');
              debugPrint('Email: estudiante@uide.edu.ec');
              debugPrint('Timestamp: ${DateTime.now()}');
              debugPrint('========================');
            },
            child: const Text(
              'Mostrar Información en Consola',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),

      // FloatingActionButton con SnackBar usando ScaffoldMessenger
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: const Text(
                '¡Hola! Bienvenido a mi aplicación Flutter personalizada.',
              ),
              backgroundColor: Colors.deepPurple,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              margin: const EdgeInsets.all(16),
              duration: const Duration(seconds: 4),
              action: SnackBarAction(
                label: 'Cerrar',
                textColor: Colors.white,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.message),
      ),
    );
  }
}