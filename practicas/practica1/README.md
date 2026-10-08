# Práctica 1 — Plataformas y herramientas

Entrega: jueves 10 de septiembre de 2026, 10:30 (etiqueta `practica1`).

## Reproducir todo (dos comandos)

Requisitos: Linux o WSL2 con `gcc`, `make`, Python 3 y el entorno `cp-env` con `numpy`, `matplotlib` y `pandas` (ver Parte A de la guía).

```bash
cd practicas/practica1/src
bash ../scripts/run_all.sh        # compila (make) y genera ../results/*.csv  (~5 min)
cd .. && python3 scripts/plot.py  # resumen.csv + practica1.png
```

## Contenido

- `entorno.txt` — salida de la verificación de la Parte A y de la ficha técnica (Parte B).
- `src/` — `matmul.c`, `matmul_pure.py`, `matmul_numpy.py`, `hello_omp.c`, `Makefile` y `matmul_O3.s` (ensamblador de la pregunta guía 1, generado con `gcc -O3 -march=native -S matmul.c -o matmul_O3.s`).
- `scripts/` — `run_all.sh`, `plot.py`.
- `results/` — `c.csv`, `py_puro.csv`, `numpy.csv`, `resumen.csv`, `practica1.png`.
- `notebooks/p1_gpu.ipynb` — Parte E (Google Colab, Tesla T4), con salidas.
- `reporte.pdf` — reporte del equipo.

## Máquina en la que se midió

Las tablas de `results/` se midieron en la laptop de Salinas Padilla Rubén Iván:

| Campo | Valor |
|---|---|
| Modelo de CPU | 11th Gen Intel Core i3-1115G4 |
| Núcleos físicos / hilos lógicos | 2 / 4 |
| Frecuencia base / turbo | 3.00 GHz / 4.10 GHz (especificación de Intel; WSL2 no expone la frecuencia) |
| Caché L1d / L2 / L3 | 48 KiB por núcleo / 1.25 MiB por núcleo / 6 MiB compartida |
| Memoria RAM | 3.7 GiB disponibles para WSL2 |
| Extensiones vectoriales | SSE4.2, AVX, AVX2, AVX-512F, FMA |
| Sistema operativo | Ubuntu sobre WSL2 |
| Compilador | gcc 15.2.0 |
| Python / NumPy / BLAS | 3.14.4 / 2.5.3 / OpenBLAS 0.3.34 |
| GPU | Ninguna local; Google Colab Tesla T4 (16 GB) para la Parte E |
| Banderas | `-O0 -std=c11`, `-O2 -std=c11`, `-O3 -march=native -std=c11` |

Las fichas técnicas de las máquinas de los tres integrantes están en el [README principal](../../README.md).
