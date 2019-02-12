<?php

class administradorm extends Modelo
{
    public function __construct() { parent::__construct(); }

    public function pxu($user){ return $this->contar('noticias','user',$user); } 

    public function pub(){ return $this->contar('noticias'); }
    
    public function uvi($user){ return $this->sumar('visitas','noticias','user',$user); }

    public function tvi(){ return $this->sumar('visitas','noticias'); }

    public function tco(){ return $this->sumar('comentarios','noticias'); }
    	
    public function uco($user){ return $this->sumar('comentarios','noticias','user',$user); }

    public function cat(){$this->tabla('categoria'); return $this->selectall("categoria"); }

    public function inoticia($tit,$fot,$con,$user,$cat){$this->insertar('noticias',['titulo'=>$tit,'foto'=>$fot,'contenido'=>$con,'user'=>$user,'categoria'=>$cat,'publicado'=>$this->fecha().' '.$this->hora()]);}

    public function icat($categoria){ $this->insertar('categoria',['categoria'=>$categoria]); }

    public function actualizartasa($tasa){ $this->sql="UPDATE tasa SET tasa='$tasa'"; return $this->query(); }

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

    public function insertarcarrusel($file_name, $file_tmp)
  {
  if ($this->permitidas_imagenes($file_name) == true)
   {
   $file_name = md5(microtime(true)) . '.png';
   $this->watermark_image($file_tmp, FULL. $file_name);
   $directorio = FULL;
   $archibo = $directorio . '/' . $file_name;
   $this->thumbnail = new thumbnail(FULL. $file_name);
   $this->thumbnail->size_width(820);
   $this->thumbnail->size_height(330);
   $this->thumbnail->jpeg_quality(99);
   $this->thumbnail->save(MINI. $file_name);
   $saved = FULL. $file_name;
   }
    else
   {
     echo "<script>window.location.assign('adminbanner')</script>";
   //header("location:adminbanner");
   }
  $query = $this->cos("INSERT INTO baner (baner) VALUES ('$saved')") or die('error');
  if ($data = $query->fetch())
   {
   $this->foto = $data;
   }
    echo "<script>window.location.assign('adminbanner')</script>";
  //header("location:adminbanner");
  return $this->foto;
  }
    
}

?>
