var express = require('express');
var router = express.Router();
var usuariosModel = require('../../models/usuariosModel');
var novedadesModel = require('../../models/novedadesModel');
const util = require('util');
const cloudinary = require('cloudinary') .v2;
const uploader = util.promisify(cloudinary.uploader.upload);
const destroy =  util.promisify(cloudinary.uploader.destroy);


/* GET admin/login.para traer la novedades*/
router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();
 
  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
      const imagen = cloudinary.image(novedad.img_id, {
        width: 70,
        height: 70,
        crop: 'fill' // pad
      });
      return {
        ...novedad,
        imagen
      }
    } else {
      return{
        ...novedad,
        imagen: ''
      }
    }
  });

  res.render('admin/novedades', {
    layout: 'admin/layout',
    persona: req.session.nombre,
    novedades
  });
});

/* GET admin/agregar.*/
router.get('/agregar', async function (req, res, next) {
  res.render('admin/agregar', {
    layout: 'admin/layout',


  });
});

/*insertar novedades nuevas*/
router.post('/agregar', async (req, res, next) => {
  try {

      var img_id = '';
      if (req.files && Object.keys(req.files).length > 0){
        imagen = req.files.imagen;
        img_id = (await uploader(imagen.tempFilePath)).public_id;
      }

    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertNovedades({
        ...req.body, //spread titulo, subtitulo y curpo
        img_id // le sumo la imagen que puede estar o no
      });
      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true,
        message:'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true,
      message: 'No se cargo la novedad'
    })
  }
})


//para borrar una novedad, delete
router.get('/eliminar/:id', async (req, res, next) => {
  var id = req.params.id;

let novedades = await novedadesModel.getNovedadesById(id);
if (novedades.img_id){
  await (destroy(novedades.img_id));
}

  await novedadesModel.deleteNovedadesById(id);
  res.redirect('/admin/novedades'); 
    
  });

  //para editar o modificar novedad
  router.get('/modificar/:id', async (req, res, next) => {
    var id = req.params.id;
    console.log(req.params.id);
    var novedades = await novedadesModel.getNovedadesById(id);
   
    res.render('admin/modificar', {
      layout: 'admin/layout',
      novedades
    });
  });

  router.post('/modificar', async (req, res, next) => {
    try {
    // esto es para modificar la imagen editar o eliminarla
      let img_id = req.body.img_original;// si no modifico nada se guarda la imagen original

      let borrar_img_vieja = false; //si no cambio la imagen 

      if (req.body.img_delete === "1") {
        img_id = null;
        borrar_img_vieja = true;
        //este if es para la opcioon de eliminar tildada (por esos borrar_img_vieja es true)
      } else {
          if (req.files && Object.keys(req.files).length > 0) {
            imagen = req.files.imagen; //captura de imagen nueva
            img_id = (await uploader(imagen.tempFilePath)).public_id;//sube imagen nueva
            borrar_img_vieja = true; //habilita la opcion eliminar imagen vieja
          } // este if es  para subir una imagen nueva o reemplazarla
      }
      if (borrar_img_vieja && req.body.img_original){
        await (destroy(req.body.img_original)); //destruye o elimina imagen original
      }
//fin modificar o editar o eliminar imagen 
      var obj = {
        titulo: req.body.titulo,
        subtitulo: req.body.subtitulo,
        cuerpo: req.body.cuerpo,
        img_id //sumamos lo que pasa con la imagen 
      }
      console.log(obj)

      await novedadesModel.modificarNovedadesById(obj, req.body.id);
      res.redirect('/admin/novedades');

    } catch (error) {
      console.log(error)
      res.render('admin/modificar', {
        layout: 'admin/layout',
        error: true,
        message: 'No se modifico la novedad'
      })
    }
  });
  

module.exports = router;