# Despliegue y validación

## Prerrequisitos pendientes del sistema SAP

1. Tipo de plataforma: S/4HANA privado/on-prem o SAP BTP ABAP Environment.
2. URL/tenant de desarrollo, método de conexión ADT y software component.
3. Paquete y orden de transporte, convención de namespace y release ABAP.
4. API liberada para crear/modificar/inactivar materiales y destino técnico.
5. Servicios de correo, catálogos IAM/PFCG y usuarios de prueba por área.

## Orden recomendado

1. Crear dominios/data elements o sustituir los tipos locales por tipos
   permitidos en la edición ABAP destino.
2. Activar tablas e índices.
3. Activar CDS, behaviors, clases y DCL.
4. Crear service definition y OData V4 service binding.
5. Cargar la matriz inicial desde los adjuntos mediante plantilla controlada.
6. Configurar roles, destino S/4 y Application Jobs.
7. Ejecutar pruebas ABAP Unit, EML y concurrencia con usuarios separados.

## Pruebas de aceptación mínimas

- CONT y LOG guardan al mismo tiempo sin conflicto.
- Dos sesiones modificando la misma tarea producen conflicto ETag controlado.
- Guardar progreso admite obligatorios vacíos; finalizar no.
- Un usuario no puede escribir campos de otra área mediante una llamada OData.
- BPM requiere aprobación de Calidad; no BPM genera outbox automáticamente.
- Repetir el job no duplica el material.
- Un fallo remoto conserva la solicitud y permite reintento trazable.
- La auditoría registra antes/después, usuario e instante UTC.

Estas fuentes no pudieron activarse ni probarse en ABAP porque el entorno
entregado solo contiene un repositorio Git vacío y no incluye conexión ADT a un
sistema SAP. No deben considerarse desplegadas hasta superar estas pruebas.

