# Matriz de campos por área

Análisis de la hoja `RESUMEN POR CAMPOS` del archivo entregado. Se identifican
43 campos funcionales y ocho áreas: SOLIC, COM, PCP, AR, CONT, LOG, AS y CC.

## Campos exclusivos

| Área | Campos |
| --- | --- |
| PCP | Almacenamiento; Nota interna |
| AR | Texto datos básicos; Texto inspección; Registro Sanitario; Línea de Producto; Código EAN/UPC; Titularidad Vitaline |
| CONT | Código ONU; Precio estándar; Centro de beneficio |
| LOG | Grupo de compras; Precio variable; Tamaño lote mínimo; Plazo entrega previsto |
| AS | Estado de material |
| CC | Norma Técnica Principal; Normas Técnicas Específicas 1, 2 y 3 |

## Campos repetidos

Hay 23 campos asignados a más de un área:

| Campo | Áreas |
| --- | --- |
| Texto breve de material | SOLIC, COM, PCP |
| Texto de pedido de compras | SOLIC, COM, PCP |
| Centro | SOLIC, COM, PCP |
| Tipo de material | SOLIC, COM, PCP |
| Unidad de medida base | SOLIC, COM, PCP |
| Grupo de artículos | SOLIC, COM, PCP |
| Condición de almacenaje | COM, PCP |
| Denominador | COM, PCP |
| Unidad de medida alternativa | COM, PCP |
| Numerador | COM, PCP |
| Organización de ventas | COM, PCP |
| Canal de distribución | COM, PCP |
| Categoría de producto | COM, PCP |
| Jefatura de Marketing | COM, PCP |
| Jerarquía de productos | COM, PCP |
| Peso bruto | COM, PCP |
| Volumen | COM, PCP |
| Presentación para orden de envasado | COM, PCP |
| Grupo de carga | COM, PCP |
| Grupo de estrategias | COM, PCP |
| Duración total de conservación | COM, AR |
| Cantidad base | CONT, LOG |
| Tamaño de lote máximo | PCP, LOG |

## Regla propuesta para repetidos

No se debe guardar una copia independiente por cada área: produciría valores
contradictorios. `ZDM_CFG_CAMPO` debe distinguir:

- **Área propietaria**: única área que modifica el valor canónico.
- **Área consumidora**: visualiza el mismo valor como solo lectura.
- **Corrección delegada**: Calidad puede reabrir temporalmente el campo para el
  área responsable, dejando auditoría.

Propuesta inicial de propiedad:

- SOLIC para los seis datos generales compartidos con COM y PCP.
- PCP para datos de planeamiento compartidos con COM o LOG.
- AR para duración total de conservación.
- CONT para cantidad base contable; confirmar si Logística necesita otro valor
  con semántica distinta.

La propiedad definitiva debe validarse con negocio antes de cargar la matriz.

## Representación en Fiori

La página de la solicitud contiene facets separados por cada área. Cada facet
navega a la tarea independiente del área y muestra su colección `_Campos`. La
separación es visual y transaccional: una tarea mantiene su propio ETag y no
bloquea las demás.

