# Tarea: Implementación de Sistema de Autenticación en CRM Rails

## Descripción General
Implementar un sistema de autenticación completo para la aplicación CRM en Ruby on Rails que soporte dos tipos de usuarios: Admin y User, (Usuario registrado), validación por email y recuperación de contraseñas.

## Requisitos
- Autenticación básica con email y contraseña
- Dos roles de usuario: Admin, User, (ambos usuarios registrados)
- Validación de email para nuevos registros
- Funcionalidad de recuperación de contraseña vía email
- Interfaz de usuario intuitiva para login/registro
- Seguridad robusta siguiendo las mejores prácticas

## Subtareas

### 1. Configuración Inicial de Devise
- [ ] Añadir la gema Devise al Gemfile
- [ ] Ejecutar `bundle install`
- [ ] Ejecutar el generador de instalación de Devise (`rails generate devise:install`)
- [ ] Configurar los ajustes recomendados por Devise en:
  - config/environments/development.rb (configuración de mailer)
  - config/routes.rb (definir root_path)
  - Añadir flash messages en app/views/layouts/application.html.erb

### 2. Creación del Modelo User
- [ ] Generar el modelo User con Devise (`rails generate devise User`)
- [ ] Añadir campos adicionales al modelo User (nombre, apellido, etc.)
- [ ] Ejecutar migraciones (`rails db:migrate`)
- [ ] Personalizar las vistas de Devise (`rails generate devise:views`)

### 3. Implementación de Roles de Usuario
- [ ] Añadir la gema Rolify al Gemfile
- [ ] Ejecutar `bundle install`
- [ ] Configurar Rolify con el modelo User
- [ ] Crear los dos roles requeridos (Admin, User)
- [ ] Implementar lógica para asignación de roles
- [ ] Crear seeds para usuarios de prueba con diferentes roles, el admin debe tener al menos un usuario registrado y sera User: Admin, Role: Admin, Password: admin, Email: aaromnido@gmail.com

### 4. Configuración de Validación por Email
- [ ] Habilitar el módulo Confirmable de Devise
- [ ] Añadir campos necesarios a la tabla users mediante migración
- [ ] Configurar el mailer de Devise para envío de emails de confirmación
- [ ] Personalizar las plantillas de email de confirmación
- [ ] Configurar el entorno para envío de emails (SMTP o servicio de terceros)

### 5. Implementación de Recuperación de Contraseña
- [ ] Habilitar el módulo Recoverable de Devise
- [ ] Personalizar las vistas de recuperación de contraseña
- [ ] Personalizar las plantillas de email para recuperación
- [ ] Probar el flujo completo de recuperación de contraseña

### 6. Desarrollo de Interfaz de Usuario
- [ ] Diseñar y desarrollar página de login
- [ ] Diseñar y desarrollar página de registro
- [ ] Diseñar y desarrollar página de recuperación de contraseña
- [ ] Implementar navegación condicional basada en estado de autenticación
- [ ] Añadir indicadores visuales del rol actual del usuario

### 7. Implementación de Autorización
- [ ] Añadir la gema CanCanCan o Pundit para manejo de autorización
- [ ] Definir habilidades/políticas basadas en roles de usuario
- [ ] Implementar restricciones de acceso en controladores
- [ ] Implementar restricciones de acceso en vistas
- [ ] Crear tests para verificar la correcta aplicación de permisos

### 8. Pruebas y Seguridad
- [ ] Escribir tests unitarios para modelos de autenticación
- [ ] Escribir tests de integración para flujos de autenticación
- [ ] Implementar protección contra CSRF
- [ ] Configurar políticas de seguridad adecuadas
- [ ] Realizar auditoría de seguridad básica

### 9. Documentación y Finalización
- [ ] Documentar el sistema de autenticación implementado
- [ ] Crear guía para administradores sobre gestión de usuarios
- [ ] Actualizar README con información sobre autenticación
- [ ] Realizar limpieza de código y refactorización si es necesario
- [ ] Verificar que todos los tests pasen correctamente

## Recursos Recomendados
- [Documentación oficial de Ruby on Rails ]()ttps://guides.rubyonrails.org/getting_started.html
- [Documentación oficial de Devise](https://github.com/heartcombo/devise)
- [Documentación de Rolify](https://github.com/RolifyCommunity/rolify)
- [Mejores prácticas de seguridad en Rails](https://guides.rubyonrails.org/security.html)

## Criterios de Aceptación
- Todos los flujos de autenticación funcionan correctamente
- Los dos roles de usuario (Admin y User) están implementados y funcionan según lo esperado
- Los emails de confirmación y recuperación se envían correctamente
- La interfaz de usuario es intuitiva y responsive
- Todos los tests pasan correctamente
- El código sigue las convenciones y mejores prácticas de Rails
- La documentación está completa y actualizada