-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 23, 2022 at 11:53 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwdiplo`
--

-- --------------------------------------------------------

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `img_id`, `cuerpo`) VALUES
(1, 'Los 10 tipos de sitios web que existen y cuándo utilizarlos', '¿Alguna vez has pensado en una página web, pero en realidad te referías a un sitio web?', 'y6rp0brrpaixvto7ham9', '¿Qué es un sitio web? La definición es más sencilla si la comparamos con un libro: un sitio web es un libro completo, que se forma con diferentes páginas web de contenido. Por lo tanto, es fácil identificar un sitio porque su URL es siempre el mismo y generalmente se estructura así: nombredesitioweb.com (o .org, .net, .co, etc.).  1.	Institucionales o de negocio Dan información básica sobre su marca, producto o servicio: desde cuándo existe, cuál es su misión y valores, dónde tiene presencia, sus diferenciadores. 2.	Personales o portafolios Tienen un diseño que responde a los tipos de proyectos que ahí se muestran: videos, imágenes, textos.  Debido a que la intención es dar a conocer la experiencia y conocimientos de la persona propietaria, compartirá información de su formación, colaboraciones y creaciones, reconocimientos y premios, así como los lugares en donde se puede consultar o ver su trabajo, además de una manera sencilla de contacto.  3.	Micrositios Generalmente tiene una sola página, pero es más larga que la de una landing page, pues su finalidad es dar información detallada sobre un producto, un evento, un negocio. Aunque puede estar ligada al sitio web oficial de una marca o empresa, el micrositio tiene su propia URL. 4.	Blogs Su tono es informal, buscan contar una historia o, al menos, adoptar un estilo conversacional para atrapar a los lectores. Según el objetivo y el tipo de información que comparte, cada publicación de blog puede leerse entre 3 minutos o hasta 15. Eso depende del nivel de profundidad que se le da a un tema.  5.	Educativos Muestran procedimientos, paso a paso, que se consultan por sus visitantes cada vez que lo necesiten. Puede ser sobre temas escolares, pero los hay también de cualquier habilidad: actividades físicas, construcción de muebles, recetarios de cocina, el cuidado de mascotas o plantas, etc. 6.	Comercio electrónico Muestra el catálogo actualizado de los productos de una marca y toda la información necesaria para la decisión de compra: materiales, dimensiones o tallas, precio, tiempo de envío, descuentos (cuando están disponibles), lugares de entrega, tipos de pago (tarjetas bancarias, Paypal, transferencias electrónicas, cupones, etc.). 7.	Portales Requieren un gran soporte porque su carga de información es mucho más robusta. Los portales comparten textos, videos, imágenes, infografías y cualquier formato que ayude a captar la atención y explicar mejor una historia. En algunas ocasiones, los portales nacen como sitios privados, en donde se comparte información valiosa para un sector o grupo de personas limitadas, que pertenecen a un gremio, institución o servicio.  8.	Noticias o revista Responden a una agenda informativa que comparte los puntos de vista de sus visitantes. Es decir, que le dan preponderancia y espacio a las ideologías y el mismo rigor que la gente que los consume.  9.	Wiki o foros de comunidades Según el nivel de especialización de temas, es posible que se pidan ciertas credenciales comprobables antes de ingresar. De cualquier manera, siempre se solicita un registro, como el que se pide para crear una sencilla cuenta de correo, para participar en este tipo de sitios web. 10.	 Redes sociales Los sitios web de redes sociales son aquellos que le dan espacio a las personas para compartir su contenido propio, dentro de una plataforma con características definidas. Algunas redes sociales le dan prioridad a cierto formato de contenido, por lo que es común que atraiga a distintos perfiles de gente. '),
(2, 'Cómo vender por Instagram? ', 'Guía definitiva para aumentar tus ventas', 'eoicffpkmzp3vvw6hlws', 'Primeros pasos para vender por InstagramPara vender por Instagram necesitás:Contar con un perfil de empresa en la red social.Publicar contenido relevante para tus seguidores.Conseguir seguidores de calidad.Ofrecer tus productos a través de Instagram Shopping.De perfil personal a profesionalPara vender en Instagram, lo primero que tenés que hacer es cambiar tu perfil personal a una cuenta profesional.Existen tres tipos de cuentas en Instagram:Persona: accedés a las funciones de compartir fotos y videos, crear historias, reels y transmitir en vivo. Este perfil no está destinado a vender por vender por Instagram. Podés configurar la cuenta como pública o privada.Creador: este tipo de cuenta en Instagram está destinada a creadores de contenido, que pueden ser influencers, artistas, blogueros, figuras públicas.Empresa: el perfil para negocios, marcas u organizaciones. Está diseñado especialmente para acciones comerciales.En los dos últimos perfiles, Instagram permite acceder al detalle de información analítica y estadísticas para hacer el seguimiento de la interacción de tu comunidad. Por eso llamamos a estas dos “cuentas profesionales” y es clave que elijas alguno de estos perfiles.Las cuentas de Creador o Empresa, van a permitirte no solamente mostrarte ante tus seguidores como una marca profesional, sino también contar con funcionalidades adicionales que la plataforma ofrece exclusivamente a los negocios.Las ventajas más relevantes de tener una cuenta profesional son:Estadísticas de tu cuenta. Donde podés chequear la interacción que las personas tienen con tus publicaciones. Con eso, vas a tomar mejores decisiones en tu estrategia de redes sociales.Promoción de tus publicaciones. Para que tu alcance sea cada vez mayor y consigas más seguidores de calidad.Activación de Instagram Shopping. Es la funcionalidad estrella de esta red social a nivel comercial. Al vincularla con tu tienda online, te permite vender por Instagram. Más adelante, entramos en detalle sobre en este punto para enseñarte a habilitarlo.Entonces, ¿cómo crear una página en Instagram para vender? Comencemos por asegurarnos de que cuentes con un perfil profesional.Para tener una cuenta profesional en Instagram, tenés que seguir estos pasos:En la Configuración, buscá la sección de Cuenta.Pulsá sobre Cambiar a cuenta profesional.Seleccioná la Categoría que mejor represente a tu negocio.Completá la información solicitada ¡y listo!Una vez que hayas cambiado tu perfil personal a uno de empresa, estás listo para optimizar este nuevo perfil y empezar a publicar en Instagram para vender.'),
(3, '5 ventajas de aparecer en Google Maps', 'Lo que hay que saber de Goolge maps', 'incmasp0xp6so9mawiet', 'Estarás donde están los clientes: 84 % de los usuarios de Google utilizan Google Maps, así que vale la pena configurar y optimizar tu perfil.Te beneficiarás de la navegación: Google Maps tiene presencia en más de 220 países. En 171 de ellos da información en tiempo real sobre las condiciones del tránsito. ¿Te imaginas si tu negocio está en una calle despejada cuando un cliente potencial ve tu ubicación y tu competencia no?Transmitirás confianza: Google Maps es una aplicación que depende mucho de sus usuarios, pues son ellos quienes ayudan a actualizar la información de nuevos negocios o cambios en la geografía de una ciudad. También pueden compartir valoraciones y comentarios de un negocio, lo cual genera más confianza a los nuevos clientes.Dispondrás de un escaparate: gracias a las opciones que ofrece la aplicación, puedes subir imágenes de tus productos y servicios, de tu local, información de tus precios, si cuentas con estacionamiento o valet parking, qué tipo de pagos aceptas y el horario de atención, entre otros datos útiles.Mejoras tu posicionamiento: si cuentas con un perfil en Google Maps, los resultados de tu estrategia SEO pueden mejorar. Las reseñas de los usuarios ayudan a elevar tu visibilidad.'),
(8, 'prueba 3  editando  55 agregandi img 234', 'ww', NULL, 'EEE'),
(16, 'prueba 3  editando y agregando', 'nananan', 'jvxsdewcuqdpkskjepij', 'lllllllllllllllll'),
(14, 'hhhhh con imagen editado 2 prueba borrar', 'oooo', NULL, 'ananana');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
