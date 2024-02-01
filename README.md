# Aplicación de Lista de Tareas en Flutter

Esta es una aplicación de lista de tareas desarrollada con Flutter y Dart. Permite a los usuarios gestionar sus tareas diarias de manera eficiente, agregando, editando y eliminando tareas según sea necesario.

## Características

- **Agregar Tareas**: Los usuarios pueden agregar nuevas tareas con un título y una descripción.
- **Editar Tareas**: Las tareas existentes pueden ser editadas para cambiar su título, descripción o marcarlas como completadas.
- **Eliminar Tareas**: Las tareas pueden ser eliminadas de la lista.
- **Estado de Tareas**: Las tareas pueden ser marcadas como completadas o pendientes.
- **Interfaz Intuitiva**: La aplicación cuenta con una interfaz de usuario amigable y fácil de usar.

## Tecnologías Utilizadas

- Flutter
- Dart
- Provider para el manejo del estado

## Estructura del Proyecto

- `/lib`
  - `/models` - Define el modelo de datos de la tarea.
  - `/providers` - Contiene el `TasksProvider` para manejar el estado de la aplicación.
  - `/screens` - Pantallas de la aplicación, incluyendo la lista de tareas y la pantalla de edición.
  - `/widgets` - Widgets reutilizables, como los que representan cada tarea en la lista.
  - `main.dart` - Punto de entrada de la aplicación Flutter.
