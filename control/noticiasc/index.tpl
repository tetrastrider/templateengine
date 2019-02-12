<?php
class noticiasc  extends controlador
{
private $pagina=null;
private $limit=5;
private $orden=2;
private $id=null;
private $buscar="";
private $categoria='';
private $arreglo=array();
private $h5='',$h10='',$h15='',$h20='',$h25='',$h30='';
public function __construct(){ parent::__construct(); }

public function index(){ 
	$ultimas = $this->modelo->carrusel();
			foreach($ultimas as $ult){$this->arreglo['titulo'][]=$ult['titulo'];$this->arreglo['baner'][]=$ult['baner'];}
		$god =array(array('baner'=>$this->arreglo['baner'][0],'titulo'=>$this->arreglo['titulo'][0],'id'=>'first','class'=>'firstanimation'),
					array('baner'=>$this->arreglo['baner'][1],'titulo'=>$this->arreglo['titulo'][1],'id'=>'second','class'=>'secondanimation'),
					array('baner'=>$this->arreglo['baner'][2],'titulo'=>$this->arreglo['titulo'][2],'id'=>'third','class'=>'thirdanimation'),
					array('baner'=>$this->arreglo['baner'][3],'titulo'=>$this->arreglo['titulo'][3],'id'=>'fourth','class'=>'fourthanimation'),
					array('baner'=>$this->arreglo['baner'][4],'titulo'=>$this->arreglo['titulo'][4],'id'=>'fifth','class'=>'fifthanimation'));
			
		$this->vista->eachset('carrusel',$god);
/*MODELO*/$M=$this->modelo;
/*VISTA*/$V=$this->vista;

$V->eachset('region',$M->reg());
/**/
if(!empty($_GET["b"])){$this->buscar=$_GET["b"];} if(!empty($_GET['c'])){$this->categoria=$_GET['c'];}
/**/
if(isset($_GET['p'])&&is_numeric($_GET['p'])){ $this->pagina=(int)$_GET['p']; $V->eti("pagina", $this->pagina);
        }else{ $this->pagina=1; $V->eti("pagina", $this->pagina); }
/**/
if(!isset($_GET['lt'])||!is_numeric($_GET['lt'])){ $V->eti("limite", $this->limit); }else{ $this->limit=$_GET['lt']; $V->eti("limite",$this->limit); } $from=(($this->pagina * $this->limit)- $this->limit);
/**/
 $total=$M->pag($this->limit,$this->buscar,$this->categoria); $V->eti('total',$total);
/**/
if(!isset($_GET["co"])){ $check2='selected';$check1=''; }elseif($_GET["co"]==1){ $this->orden=$_GET["co"]; $check1='selected';$check2=''; }else{ $check2='selected';$check1='';}
/**/
if($this->limit==5){ $this->h5='selected'; }elseif($this->limit==10){ $this->h10='selected'; }elseif($this->limit==15){ $this->h15='selected'; }elseif($this->limit==20){ $this->h20='selected'; }elseif($this->limit==25){ $this->h25='selected'; }elseif($this->limit==30){ $this->h30='selected'; }else{ $this->h5='selected'; } /***/ $god =[['orden'=>$this->orden],['check2'=>$check2,'check1'=>$check1],['hasta5'=>$this->h5,'hasta10'=>$this->h10,'hasta15'=>$this->h15,'hasta20'=>$this->h20,'hasta25'=>$this->h25,'hasta30'=>$this->h30]]; $V->mset($god);
/**/
$no=$M->no($this->limit,$from,$this->orden,$this->buscar,$this->categoria,$this->id);
/**/
 if($total>=1){ $V->eachincluir("vistas/noticias/contenido",'contenido',$no,'contenido',0,2000); }else{ $V->eti('contenido',''); } 
/**/ 
$categoria=$M->categorias(); $V->eachset('categorias',$categoria); 
/**/
 $ultimos=$M->comentario(); $V->eachset('ultimos',$this->sub($ultimos,['comentario','autor'],0,485));
/**/
 if($total>=1){$V->eti("noresult",'');}else{$V->eti("noresult",'<center><h2>no se encontraron resultados</h2></center>'); }
/**/
if ($total>1){ $V->eti("siguiente",$this->pagina+1); $V->eti("anterior",$this->pagina-1); if($total>=1){ if($this->pagina==1){ $V->eti("inicio1",'style="display:none"'); }else{$V->eti("inicio1",'');} if($this->pagina<=2){ $V->eti("inicio2",'style="display:none"'); }else{$V->eti("inicio2",'');} if($this->pagina==$total){ $V->eti("inicio3",'style="display:none"'); }else{$V->eti("inicio3",'');} if($this->pagina==$total){ $V->eti("fin",'style="display:none"'); }else{$V->eti("fin",'');} } $V->incluir('vistas/noticias/paginacion','paginacion'); }else{ $V->eti('paginacion',''); }
$this->vista->eachset('cat',$this->modelo->cat());
$this->vista->eachset('link',$this->modelo->link());
 $V->ver();
 }
 public function id(){
 	$ultimas = $this->modelo->carrusel();
			foreach($ultimas as $ult){$this->arreglo['titulo'][]=$ult['titulo'];$this->arreglo['baner'][]=$ult['baner'];}
		$god =array(array('baner'=>$this->arreglo['baner'][0],'titulo'=>$this->arreglo['titulo'][0],'id'=>'first','class'=>'firstanimation'),
					array('baner'=>$this->arreglo['baner'][1],'titulo'=>$this->arreglo['titulo'][1],'id'=>'second','class'=>'secondanimation'),
					array('baner'=>$this->arreglo['baner'][2],'titulo'=>$this->arreglo['titulo'][2],'id'=>'third','class'=>'thirdanimation'),
					array('baner'=>$this->arreglo['baner'][3],'titulo'=>$this->arreglo['titulo'][3],'id'=>'fourth','class'=>'fourthanimation'),
					array('baner'=>$this->arreglo['baner'][4],'titulo'=>$this->arreglo['titulo'][4],'id'=>'fifth','class'=>'fifthanimation'));
			
		$this->vista->eachset('carrusel',$god);
	$this->vista->eachset('region',$this->modelo->reg());
	$i=$this->pedir->args();
	$this->id=(int)$i[0];
	$this->vista->eachset('noticiaid',$this->modelo->simple($this->id));
	/**/ 
	 $catxid=$this->modelo->categoriasid($this->id); foreach($catxid as $catid){ $catidc = $catid->categoria; $idcom=$catid->id; }
	/***/

	if (isset($_SESSION['user'])) { $varcomet=[['readonly'=>'readonly','comfoto'=>$_SESSION['user'].'.gif','comnombre'=>$_SESSION['user'],'comcorreo'=>$_SESSION['correo'],'catid'=>$catidc,'idcom'=>$idcom]]; }else{ $varcomet=[['readonly'=>'required','comfoto'=>'anonimo.png','comnombre'=>'','comcorreo'=>'','catid'=>$catidc,'idcom'=>$idcom]]; } $this->vista->incluir('vistas/noticias/comentar','comentar',$varcomet);
	
	/***/ 
 	$comexid=$this->modelo->comxid($this->id); if(count($comexid)!==0){ $this->vista->eti('tcxi',1);$this->vista->eachincluir('vistas/noticias/comid','comid',$comexid); }else{ $this->vista->eti('comid','<style>.comentarios{display:none}</style>'); } 
/**/$this->vista->eachset('cat',$this->modelo->cat());
	$this->vista->eachset('link',$this->modelo->link());
 	$this->vista->ver();
}
/*FIN INDEX*/ } ?>