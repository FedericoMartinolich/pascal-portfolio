# Pascal Portfolio — Ejercicios y proyectos en Free Pascal

Colección completa de **128 programas escritos en Free Pascal (FPC 3.2.2)**, desde los
fundamentos del lenguaje hasta mini-aplicaciones con `record`, procedimientos, matrices y
algoritmos de ordenamiento. Incluye la selección de piezas destacadas pensada para
portafolio.

## ⭐ Destacados

| Programa | Qué hace | Por qué destaca |
|---|---|---|
| `ejercicios/ejer165.pas` | Estadística de partidos de fútbol: resultados, máximas diferencias de goles y búsqueda por club | La mini-aplicación más completa: `record` + array de records, 5 procedimientos y flujo cargar → procesar → consultar → mostrar |
| `ejercicios/ejerparcial2.pas` | Registro de personas: menores de edad, distribución por ciudad con porcentajes y consulta por categoría | Mejor arquitectura del conjunto: records, ordenamiento por nombre y reportes con múltiples criterios |
| `ejercicios/ejerplus+.pas` | Base de datos de clientes: carga, orden alfabético y consultas por rangos de sueldo y edad | Pipeline completo con 7 procedimientos y pasaje correcto de parámetros |
| `ejercicios/ejer61.pas` | Conversor de números decimales a números romanos (1–4999) | Problema concreto resuelto con notación sustractiva (IV, IX, XL, XC, CD, CM) por valor posicional |
| `ejercicios/ejer41.pas` | Validación de fechas (meses de 30/31 días, años bisiestos) y orden cronológico | Combina dos dominios en un programa: calendario + ordenamiento |
| `ejercicios/ejerplus4.pas` | Facturación de fotocopias con descuentos escalonados y recargo por color | Reglas de negocio concretas y correctas; único programa firmado con mi nombre |
| `ejercicios/ejerparcial.pas` | Facturación de cadetes de reparto con regla de precio dinámico | Regla de negocio (>2 viajes → +$500) y seis estadísticas de salida |
| `ejercicios/ejerplus5.pas` | Altas de legajos con búsqueda por DNI y tabulación cruzada tipo de contrato × sexo | Procesamiento en una sola pasada con búsqueda por clave |
| `ejercicios/ejer116.pas` | Verificación de números capicúa | Extracción de dígitos, inversión de array y comparación elemento a elemento |
| `ejercicios/ejer122.pas` | Informe de inscripciones escolares con matrices 4×4 | Sumas por fila, máxima por columna y reporte formateado |
| `ejercicios/ejer110.pas` | Ordenamiento dual: ascendente hasta la posición k y descendente después | Requisito de orden no estándar bien implementado |
| `ejercicios/ejerplus11.pas` | Clientes ordenados por dirección con filtro por localidad | Único ordenamiento multi-campo de records hecho correctamente |

## 📁 Estructura

```
ejercicios/   128 archivos .pas — el conjunto completo, tal como se escribieron
README.md     este archivo
```

## 🧩 Notas honestas

- **Duplicados exactos**: `ejer47.pas` ≡ `ejer41.pas`, `ejer79.pas` ≡ `ejer78.pas`,
  `ejer101.pas` ≡ `Ejemplo Vectores.pas`. Se conservan por fidelidad al original.
- **Sin compilar / incompletos**: `ejer103`, `ejerplus9`, `ejerplus12`, `New Procedure`
  (errores de sintaxis), `ejer20` (vacío) y `ejer82` (abandonado). Son borradores de
  aprendizaje y quedan incluidos como registro del proceso.
- Son programas de consola de un curso: usan `crt`, datos de entrada a veces hardcodeados
  y no siempre validan la entrada. Los destacados son los que tienen estructura modular
  y resuelven un problema concreto.

## 🔧 Compilar

Con [Free Pascal](https://www.freepascal.org/):

```bash
cd ejercicios
fpc ejer165.pas     # genera ejer165.exe
```
