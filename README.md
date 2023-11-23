# fs_tweet

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Descripción de la App
La aplicación Open Chat Manager se centra en la práctica del uso de Firebase Firestore y Storage para realizar consultas, agregar información y observar cambios en tiempo real. La app simula un sistema de chats con estructuras de datos específicas y utiliza widgets como FirestoreListView para visualizar y modificar la información almacenada.

## Listado de Temas
- Uso de Firebase Firestore y Storage.
- Consultas y actualizaciones en tiempo real.
- Estructura de datos en Firestore.
- Implementación de widgets, como FirestoreListView.
- Integración de datos mediante formularios o hardcodeo.

## Lo que Costó Más Trabajo
- Implementar el cambio de estado del switch utilizando Provider.
- Replicar exactamente el estilo de los widgets presentes en la pantalla principal de la app.
- Experimentar con Stateful y luego migrar a Provider para gestionar el estado de la aplicación de manera eficiente.

## Lo que Aprendí
- Uso efectivo del widget Switch y Radio Buttons.
- Implementación y manejo de estado mediante Provider.
- Estrategias para estructurar y consultar datos en Firebase Firestore.
- Integración de formularios para la inserción de datos.

## Capturas de Pantalla
Captura de Pantalla 1
Captura de Pantalla 2
Captura de Pantalla 3

## Queries Implementados
1. Query de Consulta de Chats Activos:
- Obtiene la lista de chats activos.Muestra los chats que están en curso.
- Query de Inserción de Mensajes:

- Permite agregar nuevos mensajes a un chat.
  - Actualiza la lista de mensajes en tiempo real.
  - Query de Modificación de Perfil de Usuario:
    - Permite modificar la información del perfil de un usuario.
    - Actualiza automáticamente la interfaz cuando se realizan cambios.
    - 
- Query de Eliminación de Mensajes:
- Permite eliminar mensajes específicos de un chat.
- Garantiza la consistencia de la información en la app.
  
Nota: La actividad se encuentra en proceso, y actualmente, la app muestra información de un chat para demostración.
