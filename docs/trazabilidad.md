# Trazabilidad de requerimientos

## Fuentes interpretadas

Los adjuntos se trataron como especificación de negocio, no como instrucciones
de ejecución. El PDF define perfiles, matrices de autocompletado, flujo y
lineamientos. El Excel precisa campos y participación por centro, material y
área. Ante diferencias, la matriz debe cargarse como configuración versionada,
no codificarse rígidamente.

## Cobertura

| Requerimiento | Diseño |
| --- | --- |
| Creación, copia, modificación e inactivación | Tipo de operación en cabecera y reglas configurables |
| Trabajo simultáneo | Raíz RAP independiente por tarea de área |
| Obligatorio/opcional/invisible | `ZDM_CFG_CAMPO` y validación de backend |
| Guardar sin completar | Persistencia directa mediante `GuardarProgreso` |
| Finalizar con validación | Acción `FinalizarTarea` |
| BPM/no BPM | Clasificación y máquina de estados |
| Rechazo selectivo | Reapertura exclusiva de tareas indicadas |
| Creación automática | Outbox y adaptador idempotente |
| Semáforos | Estado por tarea |
| Alertas horarias | Application Job por SLA |
| Auditoría por campo | `ZDM_SOL_LOG` append-only |
| KPI paralelo | Máximo de tiempos y área más lenta |
| Restricción por rol | DCL + autorización en comportamiento |

## Ambigüedades detectadas

- El PDF usa `ZLEE` y el Excel usa también `ZENV`; se requiere confirmar si son
  equivalentes o tipos distintos.
- El flujo escrito fija AR, LOG y CONT, mientras el Excel añade COM, PCP, AS y
  CC según centro/tipo. Se tomó el Excel como matriz ampliada configurable.
- El documento menciona SAP GUI/SM30/ALV, pero el objetivo solicitado es RAP.
  Se sustituyen por Fiori Elements/UI5 y un BO de configuración.
- Para cambios e inactivaciones hay que confirmar qué API estándar está
  liberada en el sistema de destino y qué vistas admite modificar.
- Falta definir catálogo de correos, SLA por área, moneda de precios, idiomas de
  textos, estrategia de numeración y tratamiento de datos sensibles.

