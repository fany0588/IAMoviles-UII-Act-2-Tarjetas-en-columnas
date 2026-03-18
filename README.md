# myapp

A new Flutter project.

## IAMoviles UII  Act 2 Tarjetas en columnas

Este proyecto fue desarrollado en Flutter utilizando el lenguaje Dart, con el objetivo de crear una interfaz visual inspirada en un sistema de categorías de una tienda en línea similar a Amazon.

La aplicación consiste en una sola pantalla que presenta una lista vertical de tarjetas (cards), cada una representando una categoría distinta: Electrónica, Hogar, Ropa, Mascotas y Deportes.

Para la estructura general, se utilizó un Scaffold sin AppBar tradicional, reemplazándolo por un contenedor personalizado que funciona como barra superior. Este encabezado incluye un diseño con degradado de colores (LinearGradient), específicamente tonos azul oscuro (#1F3A5F) y azul medio (#4A6FA5), además de bordes redondeados en la parte inferior y una sombra (BoxShadow) para dar profundidad. Dentro de este encabezado se colocó un ícono representativo de compras junto al título "Amazon", así como íconos adicionales de búsqueda y carrito alineados a la derecha, cada uno dentro de contenedores circulares con ligera transparencia.

El fondo principal de la pantalla también utiliza un degradado vertical que combina azul oscuro, azul medio y un tono amarillo claro (#FFE0A3), logrando una transición visual suave y agradable.

Las tarjetas fueron diseñadas como contenedores con un solo color sólido cada una, manteniendo una paleta coherente con la identidad visual del proyecto (azules, beige y naranja). Cada tarjeta incluye bordes redondeados (BorderRadius.circular) y sombras para generar un efecto de elevación.

La distribución interna de cada tarjeta se construyó mediante un Row, permitiendo organizar los elementos de manera horizontal. En el lado izquierdo se colocó una imagen obtenida desde una URL externa mediante Image.network. Las imágenes utilizadas corresponden a cada categoría:

* Electrónica: https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Electronica.jpg
* Hogar: https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Hogar.jpg
* Ropa: https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Ropa.jpg
* Mascotas: https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Mascotas1.jpg
* Deportes: https://raw.githubusercontent.com/fany0588/imagenes-para-flutter-6toI-fecha-11-feb-2026/refs/heads/main/Deportes1.jpg

A la derecha de cada imagen se colocó un bloque de información dentro de un Expanded que contiene una columna (Column) con alineación hacia el inicio (crossAxisAlignment.start). Este bloque incluye:

* Un título de la categoría acompañado de un ícono representativo.
* Una breve descripción relacionada con el tipo de productos.
* Un elemento visual tipo botón con el texto "Ver más", diseñado con bordes redondeados y un color blanco con transparencia, utilizando el método withAlpha para evitar problemas de compatibilidad.

El texto en las tarjetas se configuró en color blanco para asegurar buen contraste con los fondos, y se aplicaron diferentes tamaños y pesos de fuente para jerarquizar la información.

Para mostrar todas las tarjetas, se utilizó un ListView dentro de un Expanded, lo que permite desplazamiento vertical y adaptación a diferentes tamaños de pantalla.

En conjunto, el proyecto integra elementos visuales como degradados, sombras, bordes redondeados, distribución estructurada de contenido e imágenes externas, logrando una interfaz organizada, clara y visualmente atractiva.

<img width="1223" height="802" alt="image" src="https://github.com/user-attachments/assets/e4c86e1f-b7c0-4278-92c0-687afa5f86ad" />
