<?php

class serviciosm extends Modelo
{
    public function __construct() {
        parent::__construct();
    }

    public function carrusel(){ $this->select('*','baner')->orden(); return $this->query(); }

    public function reg(){ $this->select('*','region')->orden('id','ASC'); return $this->query(); }

    public function cat(){ $this->select('*','propiedad')->orden('id_propiedad','ASC'); return $this->query(); }

    public function link(){ $this->select('*','links')->orden('id','ASC'); return $this->query(); }

}

?>
