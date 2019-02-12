<?php

class registrom extends Modelo
{
  public function __construct() { parent::__construct(); }

  public function usuarios(){ $this->modo('obj')->select('*','usuarios')->orden('usuario','ASC'); return $this->cons(); }

	public function verbasededatos(){ $this->verdb(); return $this->query(); }

	public function tablas($bd){$this->vertabla($bd); return $this->query(PDO::FETCH_NUM); }

  public function creatabla($tabla,$comando){ $sql ="CREATE table $tabla($comando);"; $this->conexion->exec($sql); echo "TABLA $tabla SE CREO CON EXITO.\n"; }
  
  public function borrartabla($tabla){ $sql ="DROP TABLE $tabla;" ; $this->conexion->exec($sql); echo "TABLA $tabla SE BORRO CON EXITO.\n"; }

  public function comandosql($comando){ $this->conexion->exec($comando); }

	public function categorias(){$this->modo('obj')->select('*','categoria'); return $this->cons(); }

	public function borracat($id){$this->tabla('categoria')->attr(["id"=>$id])->borrar('id',':id'); }

  public function estado($est){$this->select('*','usuarios')->where('id_usuario=',$est);
    	$estado = $this->query();
    	if($es=$estado->fetch()){
   		$activado = $es['activo'];
   		}

   		if ($activado=='activo') {
   			$shiftactivo='inactivo';
   		}else{
   			$shiftactivo='activo';
   		}
      $this->sql="UPDATE usuarios SET activo='$shiftactivo' WHERE id_usuario=$est";
   		$this->query()->execute();
    }

  public function simple($id)

  {

    if(!is_numeric($id)){

        echo('<script>window.location.assign("/inicio")</script>');
        header("location:/inicio");
        exit;
    }else{
      $this->sql="SELECT * FROM contenido as p,ciudades as c,region as r WHERE p.id_ciudad=c.id AND p.id_region=r.id AND id_contenido=$id";
    }

    
  $query = $this->query();
  if ($data = $query->fetch(PDO::FETCH_ASSOC))
   {
   $this->simple = $data;
   }
  return $this->simple;
  }

  public function borracontenido($id){

  if ($data = $this->simple($id))
   {
   $foto1 = $data['foto1'];
   $foto2 = $data['foto2'];
   $foto3 = $data['foto3'];
   $foto4 = $data['foto4'];
   $foto5 = $data['foto5'];
   $foto6 = $data['foto6'];
   $foto7 = $data['foto7'];
   $foto8 = $data['foto8'];
   }
  unlink(FULL.$foto1);
  unlink(FULL.$foto2);
  unlink(FULL.$foto3);
  unlink(FULL.$foto4);
  unlink(FULL.$foto5);
  unlink(FULL.$foto6);
  unlink(FULL.$foto7);
  unlink(FULL.$foto8);
  unlink(MINI.$foto1);
  unlink(MINI.$foto2);
  unlink(MINI.$foto3);
  unlink(MINI.$foto4);
  unlink(MINI.$foto5);
  unlink(MINI.$foto6);
  unlink(MINI.$foto7);
  unlink(MINI.$foto8);
  $this->sql="DELETE FROM contenido WHERE id_contenido=$id";
  //header("location:adminent");
  echo "<script>window.location.assign('/registro')</script>";
  return $this->query();
  }

  public function carrusel(){ $this->sql="SELECT * FROM baner ORDER BY RAND()";
  return $this->cons();
  }

  public function carruselporid($id){ $this->sql="SELECT baner FROM baner WHERE id_baner=$id";

  $query=$this->query();
  foreach($query as $q){ $car = $q['baner']; } return $car;
  }

  public function borrarbaner($id){ $this->sql="DELETE FROM baner WHERE id_baner=$id"; return $this->query(); }

}

?>
