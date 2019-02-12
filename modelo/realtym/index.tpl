<?php

class realtym extends Modelo{
  public function __construct() { parent::__construct(); }

  public function reg(){ $this->select('*','region')->orden('id','ASC'); return $this->query(); }

  public function simple($id){

      if(!is_numeric($id)){ echo('<script>window.location.assign("inicio")</script>'); header("location:inicio");
          exit;
      }else{ $this->select('*','contenido as p,ciudades as c,region as r')->where('p.id_ciudad=','c.id')->y('p.id_region=','r.id')->y('id_contenido=',$id); } return $this->query();
  }

  public function vista($limite,$pages, $orden){
    $offset= (($pages * $limite) - $limite);

    if ($orden == 0){ $ordenar = "precio DESC"; }elseif ($orden == 1){ $ordenar = "precio ASC"; }elseif ($orden == 2){
     $ordenar = "id_contenido ASC"; }elseif ($orden == 3){ $ordenar = "id_contenido DESC"; }
     $this->sql="SELECT * FROM contenido as p,ciudades as c,region as r WHERE p.id_ciudad=c.id AND p.id_region=r.id ORDER BY $ordenar LIMIT $offset,$limite"; return $this->cons(); }

  public function pag($limite)
  {
    $this->sql="SELECT COUNT(*) as num FROM contenido";
    $query = $this->query();
    $total_results = $query->fetch();
    $total_pages = ceil($total_results['num'] / $limite);
    $this->total_pages = $total_pages;
    return $this->total_pages;
  }

  public function totalcontenido(){ return $this->contar('contenido');}

  public function buscarPropiedad($buscar){
  $this->sql="SELECT * FROM contenido as p,ciudades as c,region as r WHERE p.titulo LIKE '%" . $buscar . "%' AND p.id_ciudad=c.id AND p.id_region=r.id";
  return $this->cons();
  }

  public function cuentaBuscador($s)
  {
  $this->sql="SELECT count(*) AS cuantos FROM contenido WHERE titulo LIKE '%" . $s . "%'";
  $q=$this->query(); foreach($q as $q){ $tl=$q['cuantos'];} return $tl;
  }

  public function filtra($propiedad, $preciomin, $preciomax, $ciudad, $region, $sector, $bano, $cuarto, $venta, $orden, $limit, $moneda, $tasa, $page)
  {
  if($moneda == 2){ $premin = ($preciomin * $tasa); $premax = ($preciomax * $tasa); }else{ $premin = $preciomin; $premax = $preciomax; }

  if($orden == 0){ $ordenar = "precio DESC"; }elseif($orden == 1){ $ordenar = "precio ASC"; }elseif ($orden == 2){
   $ordenar = "id_contenido ASC"; }elseif ($orden == 3){ $ordenar = "id_contenido DESC"; }

  $this->sql = "SELECT * FROM contenido WHERE";

  if(isset($propiedad)&&!empty($propiedad)){ $this->sql.= " id_propiedad='$propiedad' AND"; }

  if(isset($region)&&!empty($region)){ $this->sql.= " id_region=$region AND"; }

  if(isset($ciudad)&&!empty($ciudad)){ $this->sql.= " id_ciudad=$ciudad AND"; }

  if(isset($sector)&&!empty($sector)&&$sector !== "**Todos"&&$sector !== "Todos"&&$sector !== "Todas"){ $this->sql.= " id_sector='$sector' AND"; }

  if(isset($bano)&&!empty($bano)){ $this->sql.= " id_bano='$bano' AND"; }

  if (isset($cuarto)&&!empty($cuarto)){ $this->sql.= " id_cuarto='$cuarto' AND"; }

  if (isset($venta)&&!empty($venta)){ $this->sql.= " id_venta='$venta' AND"; }

  $this->sql.= " precio >= $premin AND precio <= $premax ";

  $this->sql.= " ORDER BY $ordenar LIMIT $page,$limit";
  
  return $this->query();
  }

  public function contadorPropiedad($propiedad, $preciomin, $preciomax, $ciudad, $region, $sector, $bano, $cuarto, $venta, $tasa, $moneda)
  {
  if ($moneda == 2)
   {
   $premin = ($preciomin * $tasa);
   $premax = ($preciomax * $tasa);
   }
    else
   {
   $premin = $preciomin;
   $premax = $preciomax;
   }
  $this->sql = "SELECT COUNT(*) AS cuantos FROM contenido WHERE";
  if (!empty($propiedad))
   {
   $this->sql.= " id_propiedad='$propiedad' AND";
   }
  if (!empty($region))
   {
   $this->sql.= " id_region=$region AND";
   }
  if (!empty($ciudad))
   {
   $this->sql.= " id_ciudad=$ciudad AND";
   }
  if (!empty($sector) && $sector !== "**Todos" && $sector !== "Todos" && $sector !== "Todas")
   {
   $this->sql.= " id_sector='$sector' AND";
   }
  if (!empty($bano))
   {
   $this->sql.= " id_bano='$bano' AND";
   }
  if (!empty($cuarto))
   {
   $this->sql.= " id_cuarto='$cuarto' AND";
   }
  if (!empty($venta))
   {
   $this->sql.= " id_venta='$venta' AND";
   }
  $this->sql.= " precio >= $premin AND precio <= $premax ";
  $q = $this->cons(); foreach($q as $q){$count=$q->cuantos;}
  return $count;
  }
  public function paginacionxb($propiedad, $preciomin = 0, $preciomax = 999999999999999999, $ciudad, $region, $sector, $bano, $cuarto, $venta, $entradas)
  {
  $this->sql = "SELECT COUNT(*) as num FROM contenido WHERE";
  $this->sql.= " precio >= $preciomin AND precio <= $preciomax";
  if (!empty($ciudad) && $ciudad !== 0)
   {
   $this->sql.= " AND id_ciudad=$ciudad";
   }
  if (!empty($sector) && $sector !== "**Todos" && $sector !== "Todos" && $sector !== "Todas")
   {
   $this->sql.= " AND id_sector='$sector'";
   }
  if (!empty($cuarto))
   {
   $this->sql.= " AND id_cuarto='$cuarto'";
   }
  if (!empty($venta))
   {
   $this->sql.= " AND id_venta='$venta'";
   }
  if (!empty($bano))
   {
   $this->sql.= " AND id_bano='$bano'";
   }
  if (!empty($propiedad))
   {
   $this->sql.= " AND id_propiedad='$propiedad'";
   }
  if (!empty($region))
   {
   $this->sql.= " AND id_region='$region'";
   }
  $query = $this->query();
  $total_results = $query->fetch();
  $total_pages = ceil($total_results['num'] / $entradas);
  $this->total_pages = $total_pages;
  return $this->total_pages;
  }

  public function tasa(){ $this->select('tasa','tasa'); $mey = $this->cons();foreach($mey as $mey){$tasa = $mey->tasa; } return $tasa;
  }

  public function ciudadid($id){ $this->sql="SELECT * FROM ciudades WHERE id_region=$id ORDER BY id ASC"; return $this->query(); }

  public function sector($id){ $this->sql="SELECT * FROM comuna WHERE ciudad=$id ORDER BY id ASC"; return $this->query();
  }

  public function tc(){ return $this->sumar('cont','contenido'); }

  public   function fecha(){ date_default_timezone_set('America/La_Paz');

    $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
    $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"); return $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y') ;
  }

  public function hora(){ date_default_timezone_set('America/La_Paz'); return date('H:i.s.A'); }

  public function permitidas_imagenes($file_name){ $allowed_ext = array('jpg','jpeg','png','gif');
  $file_ext = end(explode('.', $file_name)); return (in_array($file_ext, $allowed_ext) == true) ? true : false;
  }

  public function watermark_image($file, $destination)
  {
  $watermark = imagecreatefrompng('/imagenes/marcadeagua.png');
  $source = getimagesize($file);
  $source_mime = $source['mime'];
  if ($source_mime == 'image/png')
   {
   $image = imagecreatefrompng($file);
   }
  elseif ($source_mime == 'image/jpeg')
   {
   $image = imagecreatefromjpeg($file);
   }
  elseif ($source_mime == 'image/gif')
   {
   $image = imagecreatefromgif($file);
   }
  imagecopy($image, $watermark, 0, 0, 0, 0, imagesx($watermark) , imagesy($watermark));
  imagepng($image, $destination);
  }

  public function modificarPropiedad($foto1, $foto2, $foto3, $foto4, $foto5, $foto6, $foto7, $foto8, $id_propiedad, $id_ciudad, $id_bano, $id_cuarto, $id_moneda, $precio, $metros, $parqueo, $descripcion, $id_sector, $id_region, $titulo, $id_venta, $mue, $cat1, $cat2, $cat3, $cat4, $cat5, $cat6, $cat7, $cat8, $cat9, $cat10, $cat11, $cat12, $cat13, $cat14, $cat15, $cat16, $id){
    
  $this->sql="UPDATE contenido SET foto1='$foto1',foto2='$foto2',foto3='$foto3',foto4='$foto4',foto5='$foto5',foto6='$foto6',foto7='$foto7',foto8='$foto8',id_propiedad='$id_propiedad',id_ciudad='$id_ciudad',id_bano='$id_bano',id_cuarto='$id_cuarto',id_moneda='$id_moneda',precio='$precio',metros='$metros',parqueo='$parqueo',descripcion='$descripcion',id_sector='$id_sector',id_region='$id_region',titulo='$titulo',id_venta='$id_venta',mueble='$mue',caracteristicas1='$cat1',caracteristicas2='$cat2',caracteristicas3='$cat3',caracteristicas4='$cat4',caracteristicas5='$cat5',caracteristicas6='$cat6',caracteristicas7='$cat7',caracteristicas8='$cat8',caracteristicas9='$cat9',caracteristicas10='$cat10',caracteristicas11='$cat11',caracteristicas12='$cat12',caracteristicas13='$cat13',caracteristicas14='$cat14',eje='$cat15',linea='$cat16' WHERE id_contenido='$id'";
    return $this->query();
  
  
  }

  public  function agregarPropiedad($foto1 = "", $foto1_tmp = "", $foto2 = "", $foto2_tmp = "", $foto3 = "", $foto3_tmp = "", $foto4 = "", $foto4_tmp = "", $foto5 = "", $foto5_tmp = "", $foto6 = "", $foto6_tmp = "", $foto7 = "", $foto7_tmp = "", $foto8 = "", $foto8_tmp = "", $id_propiedad = "", $id_ciudad = "", $id_bano = "No", $id_cuarto = "No", $id_moneda = 1, $precio = 0, $metros = 0, $parqueo = 0, $descripcion = "", $id_sector = "", $id_region = "", $titulo = "", $id_venta = 1, $mue = "", $ca1 = "", $ca2 = "", $ca3 = "", $ca4 = "", $ca5 = "", $ca6 = "", $ca7 = "", $ca8 = "", $ca9 = "", $ca10 = "", $ca11 = "", $ca12 = "", $ca13 = "", $ca14 = "", $cat15 = "", $cat16 = "",$usuario="",$publicado="")
  {
  if (isset($foto1))
   {
   if ($this->allowes_images($foto1) == true)
    {
    $foto1 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto1_tmp, './imagenes/' . $foto1);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto1;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto1);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto1);
    $foto1 = "imagenes/" . $foto1;
    }
   elseif ($foto1 == "")
    {
    $foto1 = "./imagenes/leb.png";
    }
   }
  if (isset($foto2))
   {
   if ($this->allowes_images($foto2) == true)
    {
    $foto2 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto2_tmp, './imagenes/' . $foto2);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto2;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto2);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto2);
    $foto2 = "imagenes/" . $foto2;
    }
   elseif ($foto2 == "")
    {
    $foto2 = '';
    }
   }
  if (isset($foto3))
   {
   if ($this->allowes_images($foto3) == true)
    {
    $foto3 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto3_tmp, './imagenes/' . $foto3);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto3;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto3);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto3);
    $foto3 = "imagenes/" . $foto3;
    }
   elseif ($foto3 == "")
    {
    $foto3 = '';
    }
   }
  if (isset($foto4))
   {
   if ($this->allowes_images($foto4) == true)
    {
    $foto4 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto4_tmp, './imagenes/' . $foto4);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto4;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto4);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto4);
    $foto4 = "imagenes/" . $foto4;
    }
   elseif ($foto4 == "")
    {
    $foto4 = '';
    }
   }
  if (isset($foto5))
   {
   if ($this->allowes_images($foto5) == true)
    {
    $foto5 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto5_tmp, './imagenes/' . $foto5);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto5;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto5);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto5);
    $foto5 = "imagenes/" . $foto5;
    }
   elseif ($foto5 == "")
    {
    $foto5 = '';
    }
   }
  if (isset($foto6))
   {
   if ($this->allowes_images($foto6) == true)
    {
    $foto6 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto6_tmp, './imagenes/' . $foto6);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto6;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto6);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto6);
    $foto6 = "imagenes/" . $foto6;
    }
   elseif ($foto6 == "")
    {
    $foto6 = '';
    }
   }
  if (isset($foto7))
   {
   if ($this->allowes_images($foto7) == true)
    {
    $foto7 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto7_tmp, './imagenes/' . $foto7);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto7;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto7);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto7);
    $foto7 = "imagenes/" . $foto7;
    }
   elseif ($foto7 == "")
    {
    $foto7 = '';
    }
   }
  if (isset($foto8))
   {
   if ($this->allowes_images($foto8) == true)
    {
    $foto8 = md5(microtime(true)) . '.png';
    $this->watermark_image($foto8_tmp, './imagenes/' . $foto8);
    $directorio = './imagenes';
    $archibo = $directorio . '/' . $foto8;
    $this->thumbnail = new thumbnail("./imagenes/" . $foto8);
    $this->thumbnail->size_width(320);
    $this->thumbnail->size_height(220);
    $this->thumbnail->jpeg_quality(99);
    $this->thumbnail->save(MINI.$foto8);
    $foto8 = "imagenes/" . $foto8;
    }
   elseif ($foto8 == "")
    {
    $foto8 = '';
    }
   }

  $query = $this->sql="INSERT INTO contenido (foto1,foto2,foto3,foto4,foto5,foto6,foto7,foto8,id_propiedad,id_ciudad,id_bano,id_cuarto,id_moneda,precio,metros,parqueo,descripcion,id_sector,id_region,titulo,id_venta,mueble,caracteristicas1,caracteristicas2,caracteristicas3,caracteristicas4,caracteristicas5,caracteristicas6,caracteristicas7,caracteristicas8,caracteristicas9,caracteristicas10,caracteristicas11,caracteristicas12,caracteristicas13,caracteristicas14,eje,linea,usuario,publicado) VALUES ('$foto1','$foto2','$foto3','$foto4','$foto5','$foto6','$foto7','$foto8','$id_propiedad','$id_ciudad','$id_bano','$id_cuarto','$id_moneda','$precio','$metros','$parqueo','$descripcion','$id_sector','$id_region','$titulo','$id_venta','$mue','$ca1','$ca2','$ca3','$ca4','$ca5','$ca6','$ca7','$ca8','$ca9','$ca10','$ca11','$ca12','$ca13','$ca14','$cat15','$cat16','$usuario','$publicado')";
  
  
  return $this->query();
  }



} ?>
