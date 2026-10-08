# cp-6bm1-equipo09 — Cómputo Paralelo · 6BM1 · 27/1

Repositorio del equipo 9 para las Prácticas 1–6 y el proyecto integrador: **Entrenamiento de una red neuronal simple (MLP) con paralelismo de datos** (ver [`proyecto/`](proyecto/)).

## Integrantes

| Nombre | Boleta | Usuario GitHub |
|---|---|---|
| Arce Padilla Carlos | 2024630998 | [carlos15672](https://github.com/carlos15672) |
| Montes Olguin José Alberto | 2024631047 | [Alberto-debugger](https://github.com/Alberto-debugger) |
| Salinas Padilla Rubén Iván | 2024630873 | [rubensanilas0117](https://github.com/rubensanilas0117) |

## Estructura

```
├── README.md            integrantes y fichas técnicas
├── .gitignore
├── practicas/
│   └── practica1/       entorno, código, scripts, resultados, notebook de GPU y reporte
└── proyecto/            propuesta y versiones del proyecto integrador
```

## Fichas técnicas de hardware

### Salinas Padilla Rubén Iván

Máquina en la que se midieron los resultados de la Práctica 1.

| Campo | Valor |
|---|---|
| Modelo de CPU | 11th Gen Intel Core i3-1115G4 |
| Núcleos físicos / hilos lógicos | 2 / 4 |
| Frecuencia base / turbo | 3.00 GHz / 4.10 GHz (especificación de Intel) |
| Caché L1d / L2 / L3 | 48 KiB por núcleo / 1.25 MiB por núcleo / 6 MiB compartida |
| Memoria RAM | 3.7 GiB disponibles para WSL2 |
| Extensiones vectoriales | SSE4.2, AVX, AVX2, AVX-512F, FMA |
| Sistema operativo | Ubuntu sobre WSL2 |
| Compilador | gcc / g++ 15.2.0 |
| Python / NumPy / BLAS | 3.14.4 / 2.5.3 / OpenBLAS 0.3.34 |
| GPU | Ninguna NVIDIA accesible desde WSL2; Google Colab Tesla T4 (16 GB) para la Parte E |
| Condiciones | Laptop conectada a la corriente; se cerraron aplicaciones innecesarias antes de medir |

### Arce Padilla Carlos

| Campo | Valor |
|---|---|
| Modelo de CPU | 12th Gen Intel Core i5-12400F |
| Núcleos físicos / hilos lógicos | 6 / 12 |
| Frecuencia base / turbo | 2.50 GHz / 4.40 GHz (especificación de Intel) |
| Caché L1d / L2 / L3 | 48 KiB por núcleo / 1.25 MiB por núcleo / 18 MiB compartida |
| Memoria RAM | 7.7 GiB disponibles para WSL2 |
| Extensiones vectoriales | SSE4.2, AVX, AVX2, FMA |
| Sistema operativo | Ubuntu sobre WSL2 |
| Compilador | gcc / g++ 15.2.0 |
| Python / NumPy / BLAS | 3.14.4 / 2.5.3 / OpenBLAS 0.3.34 |
| GPU | Ninguna NVIDIA accesible desde WSL2 |
| Condiciones | Ejecución local sobre WSL2, equipo conectado a la corriente |

### Montes Olguin José Alberto

| Campo | Valor |
|---|---|
| Modelo de CPU | AMD Ryzen 9 5900HS with Radeon Graphics |
| Núcleos físicos / hilos lógicos | 8 / 16 |
| Frecuencia base / turbo | 3.0 GHz / 4.6 GHz (especificación de AMD; WSL2 no expone la frecuencia) |
| Caché L1d / L2 / L3 | 32 KiB por núcleo / 512 KiB por núcleo / 16 MiB compartida |
| Memoria RAM | 11 GiB disponibles para WSL2 (24 GB instalados) |
| Extensiones vectoriales | SSE4.2, AVX, AVX2, FMA |
| Sistema operativo y kernel | Ubuntu 24.04.5 LTS sobre WSL2, kernel 6.18.40.1-microsoft-standard-WSL2 |
| Compilador | gcc / g++ 13.3.0 |
| Python / NumPy / BLAS | 3.12.3 / 2.5.3 / OpenBLAS 0.3.34 |
| GPU | NVIDIA GeForce RTX 3060 Laptop GPU (6 GB), visible desde WSL2 con `nvidia-smi` (CUDA 13.4) |
| Condiciones | Laptop conectada a la corriente, plan de energía "Turbo". No se midieron resultados de la Práctica 1 en esta máquina |

## Convenciones

- Rama `main` siempre funcional.
- Mensajes de commit descriptivos; commits de los tres integrantes.
- Cada práctica se entrega con una etiqueta (`practica1`, `practica2`, ...).
