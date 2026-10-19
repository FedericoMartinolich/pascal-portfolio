# Pascal Portfolio — Ejercicios y proyectos en Free Pascal

Colección completa de **128 programas escritos en Free Pascal 3.2.2** (FPC, Windows),
desde los fundamentos del lenguaje hasta mini-aplicaciones con `record`, procedimientos,
matrices y algoritmos de ordenamiento. Incluye la selección de piezas destacadas pensada
para portafolio y los **ejecutables listos para correr**.

## ▶ Ejecutar sin compilar

`ejecutables-win32.zip` contiene los **122 programas que compilan**, compilados con
Free Pascal 3.2.2 para Windows (32 bits):

1. Cloná el repo: `git clone https://github.com/FedericoMartinolich/pascal-portfolio.git`
2. Descomprimí `ejecutables-win32.zip`
3. Doble click en cualquier `.exe` — se abren en una consola de Windows

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
ejercicios/             128 archivos .pas — el conjunto completo, tal como se escribieron
ejecutables-win32.zip   los 122 programas compilados y listos para ejecutar en Windows
README.md               este archivo
```

## 🧩 Notas honestas

- **122 de 128 programas compilan** con Free Pascal 3.2.2 (verificado compilándolos todos).
- **No compilan (5 borradores de aprendizaje)**: `ejer103` (error de sintaxis), `ejer20`
  (archivo vacío), `ejerplus9`, `ejerplus12` y `New Procedure` (refactors abandonados
  a medias). `ejer82` compila pero quedó inconcluso.
- **Duplicados exactos**: `ejer47.pas` ≡ `ejer41.pas`, `ejer79.pas` ≡ `ejer78.pas`,
  `ejer101.pas` ≡ `Ejemplo Vectores.pas`. Se conservan por fidelidad al original.
- Son programas de consola de un curso: usan `crt`, datos de entrada a veces hardcodeados
  y no siempre validan la entrada. Los destacados son los que tienen estructura modular
  y resuelven un problema concreto.

## 🔧 Compilar desde el código fuente

Requiere **Free Pascal 3.2.2** (la versión con la que están desarrollados y probados).
Descargas oficiales: <https://www.freepascal.org/download.html>

```bash
git clone https://github.com/FedericoMartinolich/pascal-portfolio.git
cd pascal-portfolio/ejercicios
fpc ejer165.pas     # genera ejer165.exe
```
