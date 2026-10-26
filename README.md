# Gestión de solicitudes de datos maestros — SAP RAP

Diseño técnico en español para gestionar solicitudes de creación, copia,
modificación e inactivación de materiales con trabajo concurrente por áreas.

## Alcance implementado

- Modelo persistente separado por solicitud, tarea de área, valor de campo,
  configuración, auditoría y cola de integración.
- Diseño RAP sin borrador para evitar que un *draft lock* bloquee a todas las
  áreas de una solicitud.
- ETag independiente por tarea de área y actualización granular de valores.
- Acciones de negocio para guardar progreso, finalizar, clasificar BPM,
  solicitar corrección y aprobar.
- Contrato de integración desacoplado para crear o modificar el material.
- Arquitectura, estados, controles de acceso y estrategia de pruebas.

El repositorio contiene fuentes de referencia listas para trasladar a un
paquete ABAP mediante ADT. No se incluyen metadatos XML de abapGit porque deben
generarse desde el sistema ABAP y el *software component* de destino.

## Documentación

- [Arquitectura](docs/arquitectura.md)
- [Decisiones y trazabilidad](docs/trazabilidad.md)
- [Despliegue y pendientes](docs/despliegue.md)

## Estructura

```text
src/ddic/       tablas transparentes
src/cds/        entidades de interfaz y consumo
src/behavior/   definiciones RAP
src/abap/       contratos y lógica de dominio
docs/           arquitectura y guía de implantación
```

