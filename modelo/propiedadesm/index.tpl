<?php

class propiedadesm extends Modelo
{
    public function __construct() {
        parent::__construct();
    }

    public function carrusel(){ $this->select('*','baner')->orden(); return $this->query(); }

    public function reg(){ $this->select('*','region')->orden('id','ASC'); return $this->query(); }

    public function contador($cont, $contenido){ $contar = $cont + 1;
	  $query = $this->query("UPDATE contenido SET cont='$contar' WHERE id_contenido=$contenido") or die('error');
	  return $query;
	  }

	public function simple($id){

	    if(!is_numeric($id)){ echo('<script>window.location.assign("inicio")</script>'); header("location:inicio");
	        exit;
	    }else{ $this->select('*','contenido as p,ciudades as c,region as r')->where('p.id_ciudad=','c.id')->y('p.id_region=','r.id')->y('id_contenido=',$id); } return $this->cons();
	}

	public function vista($limite,$pages, $orden){
		$offset= (($pages * $limite) - $limite);

	  if ($orden == 0){ $ordenar = "precio DESC"; }elseif ($orden == 1){ $ordenar = "precio ASC"; }elseif ($orden == 2){
	   $ordenar = "id_contenido ASC"; }elseif ($orden == 3){ $ordenar = "id_contenido DESC"; }
	   $this->sql="SELECT * FROM contenido as p,ciudades as c,region as r WHERE p.id_ciudad=c.id AND p.id_region=r.id ORDER BY $ordenar LIMIT $offset,$limite"; return $this->cons(); }

  public function paginacion($limite)
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

  public function filtra($propiedad,$premin,$premax,$ciudad,$region,$sector,$bano,$cuarto,$venta,$orden,$limit,$page)
  {
  $offset= (($page * $limit) - $limit);
  if($orden == 0){ $ordenar = "precio DESC"; }elseif($orden == 1){ $ordenar = "precio ASC"; }elseif ($orden == 2){
   $ordenar = "id_contenido ASC"; }elseif ($orden == 3){ $ordenar = "id_contenido DESC"; }

  $this->sql = "SELECT * FROM contenido WHERE";
  
  if(isset($propiedad)&&!empty($propiedad)){ $this->sql.= " id_propiedad='$propiedad' AND"; }
  
  if(isset($region)&&!empty($region)){ $this->sql.= " id_region=$region AND"; }
  
  if(isset($ciudad)&&!empty($ciudad)){ $this->sql.= " id_ciudad=$ciudad AND"; }

  if(isset($sector)&&!empty($sector)&&$sector !== "**Todos"&&$sector !== "Todos"&&$sector !== "Todas"){ $this->sql.= " id_sector='$sector' AND"; }

  if(isset($bano)&&!empty($bano)){ $this->sql.= " id_bano='$bano' AND"; }

  if (isset($cuarto)&&!empty($cuarto)){ $this->sql.= " id_cuarto='$cuarto' AND"; }
  
  if(isset($venta)&&!empty($venta)){ $this->sql.= " id_venta='$venta' AND"; }

  $this->sql.= " precio >= $premin AND precio <= $premax ";

  $this->sql.= " ORDER BY $ordenar LIMIT $offset,$limit";
  
  return $this->cons();
  }
//*********************************************
  public function contadorPropiedad($propiedad,$premin,$premax,$ciudad,$region,$sector,$bano,$cuarto,$venta){
 
  $this->sql = "SELECT COUNT(*) AS cuantos FROM contenido WHERE";
  if (isset($propiedad)&&!empty($propiedad)){ $this->sql.= " id_propiedad='$propiedad' AND"; }
  if (isset($region)&&!empty($region)){ $this->sql.= " id_region=$region AND"; }
  if (isset($ciudad)&&!empty($ciudad)){ $this->sql.= " id_ciudad=$ciudad AND"; }
  if (isset($sector)&&!empty($sector) && $sector !== "**Todos" && $sector !== "Todos" && $sector !== "Todas"){ $this->sql.= " id_sector='$sector' AND"; }
  if (isset($bano)&&!empty($bano)){ $this->sql.= " id_bano='$bano' AND"; }
  if (isset($cuarto)&&!empty($cuarto)){ $this->sql.= " id_cuarto='$cuarto' AND"; }
  if (isset($venta)&&!empty($venta)){ $this->sql.= " id_venta='$venta' AND"; }
  $this->sql.= " precio >= $premin AND precio <= $premax";
  
  $q = $this->cons(); foreach($q as $q){$count=$q->cuantos;}
  return $count;
  }
  public function paginacionxb($propiedad,$preciomin = 0,$preciomax = 999999999999999999,$ciudad,$region,$sector,$bano,$cuarto,$venta,$entradas)
  {
  $this->sql = "SELECT COUNT(*) as num FROM contenido WHERE";
  $this->sql.= " precio >= $preciomin AND precio <= $preciomax";
  if (isset($ciudad)&&!empty($ciudad) && $ciudad !== 0)
   {
   $this->sql.= " AND id_ciudad=$ciudad";
   }
  if (isset($sector)&&!empty($sector) && $sector !== "**Todos" && $sector !== "Todos" && $sector !== "Todas")
   {
   $this->sql.= " AND id_sector='$sector'";
   }
  if (isset($cuarto)&&!empty($cuarto))
   {
   $this->sql.= " AND id_cuarto='$cuarto'";
   }
  if (isset($venta)&&!empty($venta))
   {
   $this->sql.= " AND id_venta='$venta'";
   }
  if (isset($bano)&&!empty($bano))
   {
   $this->sql.= " AND id_bano='$bano'";
   }
  if (isset($propiedad)&&!empty($propiedad))
   {
   $this->sql.= " AND id_propiedad='$propiedad'";
   }
  if (isset($region)&&!empty($region))
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

  public function cat(){ $this->select('*','propiedad')->orden('id_propiedad','ASC'); return $this->query(); }

  public function link(){ $this->select('*','links')->orden('id','ASC'); return $this->query(); }

}

?>
