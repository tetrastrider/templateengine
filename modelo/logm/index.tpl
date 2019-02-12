<?php

class logm extends Modelo
{
    public function __construct() { parent::__construct(); }

    public function login($usuario,$password){ Acceso::login($usuario,$password); }

    public function carrusel(){ $this->select('*','baner')->orden(); return $this->query(); }

     public function reg(){ $this->select('*','region')->orden('id','ASC'); return $this->query(); }

}

?>
