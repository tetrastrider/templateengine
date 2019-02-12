<?php
class serviciosc  extends controlador
{

 private $arreglo=array();

public function __construct(){
	parent::__construct();
	
}

public function index(){
	$ultimas = $this->modelo->carrusel();
			foreach($ultimas as $ult){$this->arreglo['titulo'][]=$ult['titulo'];$this->arreglo['baner'][]=$ult['baner'];}
		$god =array(array('baner'=>$this->arreglo['baner'][0],'titulo'=>$this->arreglo['titulo'][0],'id'=>'first','class'=>'firstanimation'),
					array('baner'=>$this->arreglo['baner'][1],'titulo'=>$this->arreglo['titulo'][1],'id'=>'second','class'=>'secondanimation'),
					array('baner'=>$this->arreglo['baner'][2],'titulo'=>$this->arreglo['titulo'][2],'id'=>'third','class'=>'thirdanimation'),
					array('baner'=>$this->arreglo['baner'][3],'titulo'=>$this->arreglo['titulo'][3],'id'=>'fourth','class'=>'fourthanimation'),
					array('baner'=>$this->arreglo['baner'][4],'titulo'=>$this->arreglo['titulo'][4],'id'=>'fifth','class'=>'fifthanimation'));
			
		$this->vista->eachset('carrusel',$god);
    $this->vista->eachset('region',$this->modelo->reg());
    $this->vista->eachset('cat',$this->modelo->cat());
    $this->vista->eachset('link',$this->modelo->link());

$this->vista->ver();
 }


} 

?>