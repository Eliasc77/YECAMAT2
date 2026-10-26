# Gestión de solicitudes de datos maestros — SAP RAP

Diseño técnico en español para gestionar solicitudes de creación, copia,
modificación e inactivación de materiales con trabajo concurrente por áreas.

## Alcance importable en SAP Trial

- Modelo persistente separado por solicitud, tarea de área, valor de campo,
  configuración, auditoría y cola de integración.
- Diseño RAP sin borrador para evitar que un *draft lock* bloquee a todas las
  áreas de una solicitud.
- ETag independiente por tarea de área y actualización granular de valores.
- BO RAP administrados para solicitudes y tareas concurrentes, con entidades
  hijas de campos y control ETag.
- Contrato de integración desacoplado para crear o modificar el material.
- Arquitectura, estados, controles de acceso y estrategia de pruebas.

El repositorio está serializado en formato abapGit: incluye `.abapgit.xml`, el
paquete, tablas DDIC, fuentes y metadatos XML. Puede vincularse desde la vista
Git Repositories de ADT al paquete `YECMAT2` del componente `ZLOCAL`.

Las acciones avanzadas del flujo están especificadas en la arquitectura y se
incorporarán sobre esta base después de validar la primera activación en el
release concreto del tenant Trial.

## Importación

1. Actualizar o volver a clonar el repositorio desde Git Repositories en ADT.
2. Seleccionar la rama `main` y el paquete `YECMAT2`.
3. Ejecutar Pull y activar los objetos pendientes si ADT no los activa en lote.
4. Abrir `ZBD_DM_SOLICITUD`, verificar que esté publicado y ejecutar Preview.

## Documentación

- [Arquitectura](docs/arquitectura.md)
- [Decisiones y trazabilidad](docs/trazabilidad.md)
- [Matriz de campos por área](docs/matriz-campos-areas.md)
- [Despliegue y pendientes](docs/despliegue.md)

## Estructura

```text
src/ddic/       tablas transparentes
src/cds/        entidades de interfaz y consumo
src/behavior/   definiciones RAP
src/abap/       contratos y lógica de dominio
docs/           arquitectura y guía de implantación
```

