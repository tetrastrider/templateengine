<?php

class iniciom extends Modelo{
  public function __construct() { parent::__construct(); }

  public function ultimas(){ $this->select('*','contenido')->orden('id_contenido','DESC')->limit(9); return $this->query(); }

  public function dest(){ $this->select('*','contenido')->orden('cont','DESC')->limit(9); return $this->query(); }

  public function reg(){ $this->select('*','region')->orden('id','ASC'); return $this->query(); }

  public function antigua(){ $this->select('*','noticias')->orden('id','ASC')->limit(9); return $this->query(); }

  public function carrusel(){ $this->select('*','baner')->orden(); return $this->query(); }

  public function cat(){ $this->select('*','propiedad')->orden('id_propiedad','ASC'); return $this->query(); }

  public function link(){ $this->select('*','links')->orden('id','ASC'); return $this->query(); }

}

?>
