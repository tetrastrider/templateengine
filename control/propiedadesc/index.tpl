<?php 
class propiedadesc  extends controlador{

	private $limite = 21;
	private $orden = 0;
	private $pagina = 1;
	private $moneda = 1;
	private $id;
	private $tasa;
	private $bano,$sector,$cuarto,$venta = 'Venta',$region,$propiedad,$ciudad;
	private $preciomin = 0;
	private $preciomax =9999999999999999;
	private $arreglo=array();
	public function __construct(){ parent::__construct(); $this->tasa=$this->modelo->tasa(); }

	public function index(){
		$ultimas = $this->modelo->carrusel();
			foreach($ultimas as $ult){$this->arreglo['titulo'][]=$ult['titulo'];$this->arreglo['baner'][]=$ult['baner'];}
		$god =array(array('baner'=>$this->arreglo['baner'][0],'titulo'=>$this->arreglo['titulo'][0],'id'=>'first','class'=>'firstanimation'),
					array('baner'=>$this->arreglo['baner'][1],'titulo'=>$this->arreglo['titulo'][1],'id'=>'second','class'=>'secondanimation'),
					array('baner'=>$this->arreglo['baner'][2],'titulo'=>$this->arreglo['titulo'][2],'id'=>'third','class'=>'thirdanimation'),
					array('baner'=>$this->arreglo['baner'][3],'titulo'=>$this->arreglo['titulo'][3],'id'=>'fourth','class'=>'fourthanimation'),
					array('baner'=>$this->arreglo['baner'][4],'titulo'=>$this->arreglo['titulo'][4],'id'=>'fifth','class'=>'fifthanimation'));
			
		$this->vista->eachset('carrusel',$god);
		/*pagina*/
		if(isset($_GET['p'])&&is_numeric($_GET['p'])){ $this->pagina=(int)$_GET['p']; } $this->vista->eti("pagina", $this->pagina);
		/*limite*/
		if(isset($_GET['l'])&&is_numeric($_GET['l'])){ $this->limite=$_GET['l']; } $this->vista->eti("limite",$this->limite);
		/*orden*/
		if(isset($_GET['o'])&&is_numeric($_GET['o'])){ $this->orden=(int)$_GET['o']; } $this->vista->eti("orden",$this->orden);
		/*moneda*/
		if (isset($_GET['moneda'])){ $this->moneda = $_GET['moneda']; } $this->vista->eti("moneda", $this->moneda);
		/*total*/
		$this->vista->eti('total',$this->modelo->paginacion($this->limite));
		/*totalcontenido*/
		$this->vista->eti('totalcontenido',$this->modelo->totalcontenido());
		/**/
		$this->vista->eti("si",'')->eti("si2",'')->eti("si3",'')->eti("si4",'')->eti("si5",'')->eti("si6",'');
		if ($this->limite == 12){ $this->vista->eti("si",'selected'); }elseif ($this->limite == 21){ $this->vista->eti("si2",'selected'); }elseif ($this->limite == 33){ $this->vista->eti("si3",'selected'); }elseif ($this->limite == 42){ $this->vista->eti("si4",'selected'); }elseif ($this->limite == 51){ $this->vista->eti("si5",'selected'); }elseif($this->limite == 63){ $this->vista->eti("si6",'selected'); }else{}
		/**/
		$this->vista->eti("ok",'')->eti("ok2",'')->eti("ok3",'')->eti("ok4",'');
		if ($this->orden == 3) { $this->vista->eti("ok4",'selected'); } elseif ($this->orden == 2) { $this->vista->eti("ok3",'selected'); } elseif ($this->orden == 1) { $this->vista->eti("ok2",'selected'); } else { $this->vista->eti("ok",'selected'); }
		/**/
		$this->vista->eti('prev',($this->pagina - 1));
		$this->vista->eti('sm10',($this->pagina - 10));
		$this->vista->eti('sm20',($this->pagina - 20));
		$this->vista->eti('sm5',($this->pagina - 5));
		$this->vista->eti('sm4',($this->pagina - 4));
		$this->vista->eti('sm3',($this->pagina - 3));
		$this->vista->eti('sm2',($this->pagina - 2));
		$this->vista->eti('sm1',($this->pagina - 1));
		$this->vista->eti('s1',($this->pagina + 1));
		$this->vista->eti('s2',($this->pagina + 2));
		$this->vista->eti('s3',($this->pagina + 3));
		$this->vista->eti('s4',($this->pagina + 4));
		$this->vista->eti('s5',($this->pagina + 5));
		$this->vista->eti('s10',($this->pagina + 10));
		$this->vista->eti('s20',($this->pagina + 20));
		$this->vista->eti('next',($this->pagina + 1));
		/**/
	$this->vista->eachset('cat',$this->modelo->cat());
	$this->vista->eachset('link',$this->modelo->link());
	$this->vista->eachset('region',$this->modelo->reg());
	$this->vista->eachset('propiedad',$this->modelo->vista($this->limite,$this->pagina,$this->orden));
	$this->vista->ver();

	 }

	public function id(){
		
		$i=$this->pedir->args();
		$this->id=(int)$i[0];
		$this->vista->eachset('region',$this->modelo->reg());
		$this->vista->eachset('amigo',$this->modelo->simple($this->id));
		$this->vista->eachset('msg',$this->modelo->simple($this->id));
		$this->vista->eachset('simple',$this->modelo->simple($this->id));
		$this->vista->eachset('cat',$this->modelo->cat());
		$this->vista->eachset('link',$this->modelo->link());
		$this->vista->eachincluir("vistas/propiedades/headerb",'headerb',$this->modelo->simple($this->id));
		$this->vista->eti('id',$this->id);
		$this->vista->ver();
	}

	public function buscar(){
		$ultimas = $this->modelo->carrusel();
			foreach($ultimas as $ult){$this->arreglo['titulo'][]=$ult['titulo'];$this->arreglo['baner'][]=$ult['baner'];}
		$god =array(array('baner'=>$this->arreglo['baner'][0],'titulo'=>$this->arreglo['titulo'][0],'id'=>'first','class'=>'firstanimation'),
					array('baner'=>$this->arreglo['baner'][1],'titulo'=>$this->arreglo['titulo'][1],'id'=>'second','class'=>'secondanimation'),
					array('baner'=>$this->arreglo['baner'][2],'titulo'=>$this->arreglo['titulo'][2],'id'=>'third','class'=>'thirdanimation'),
					array('baner'=>$this->arreglo['baner'][3],'titulo'=>$this->arreglo['titulo'][3],'id'=>'fourth','class'=>'fourthanimation'),
					array('baner'=>$this->arreglo['baner'][4],'titulo'=>$this->arreglo['titulo'][4],'id'=>'fifth','class'=>'fifthanimation'));
			
		$this->vista->eachset('carrusel',$god);
		$this->vista->eachset('region',$this->modelo->reg());
		/*********************/
		if(isset($_GET['moneda'])){ $this->moneda = (int)$_GET['moneda']; }
		$this->vista->eti("mon", $this->moneda);
		if (isset($_GET['cuarto'])){ $this->cuarto = $_GET['cuarto']; }
		$this->vista->eti("cuo", $this->cuarto);
		if (isset($_GET['sector'])){$this->sector = $_GET['sector']; }
		$this->vista->eti("sec", $this->sector);
		if (isset($_GET['bano'])){ $this->bano = $_GET['bano']; }
		$this->vista->eti('pipi',$this->bano);
		if (isset($_GET['venta'])){ $this->venta = $_GET['venta']; }
		$this->vista->eti('vta',$this->venta);
		if (isset($_GET['region'])){ $this->region = $_GET['region']; }
		$this->vista->eti("re", $this->region);
		if (isset($_GET['propiedad'])){ $this->propiedad = (string)$_GET['propiedad']; }
		$this->vista->eti("uchi", $this->propiedad);
		if (isset($_GET['ciudad'])){ if($_GET['ciudad'] == 0){ $this->ciudad = ''; }else{ $this->ciudad = $_GET['ciudad']; } }
		$this->vista->eti('casio',$this->ciudad);
		if(isset($_GET['p'])&&is_numeric($_GET['p'])){ $this->pagina=(int)$_GET['p']; }
		$this->vista->eti("cpagina", $this->pagina);
		if (!empty($_GET['preciomin'])&&isset($_GET['preciomin'])) { $this->preciomin = $_GET['preciomin']; }
		$this->vista->eti("minimo", $this->preciomin);
		if (!empty($_GET['preciomax'])&&isset($_GET['preciomax'])) { $this->preciomax = $_GET['preciomax']; }
		$this->vista->eti("maximo", $this->preciomax);
		/*limite*/
		if(isset($_GET['l'])&&is_numeric($_GET['l'])){ $this->limite=$_GET['l']; }
		$this->vista->eti("limite",$this->limite);
		/*orden*/
		if(isset($_GET['o'])&&is_numeric($_GET['o'])){ $this->orden=(int)$_GET['o']; }
		$this->vista->eti("orden",$this->orden);
		/**/
		$this->vista->eti("si",'')->eti("si2",'')->eti("si3",'')->eti("si4",'')->eti("si5",'')->eti("si6",'');
		if ($this->limite == 12){ $this->vista->eti("si",'selected'); }elseif ($this->limite == 21){ $this->vista->eti("si2",'selected'); }elseif ($this->limite == 33){ $this->vista->eti("si3",'selected'); }elseif ($this->limite == 42){ $this->vista->eti("si4",'selected'); }elseif ($this->limite == 51){ $this->vista->eti("si5",'selected'); }elseif($this->limite == 63){ $this->vista->eti("si6",'selected'); }else{}
		/**/
		$this->vista->eti("ok",'')->eti("ok2",'')->eti("ok3",'')->eti("ok4",'');
		if ($this->orden == 3) { $this->vista->eti("ok4",'selected'); } elseif ($this->orden == 2) { $this->vista->eti("ok3",'selected'); } elseif ($this->orden == 1) { $this->vista->eti("ok2",'selected'); } else { $this->vista->eti("ok",'selected'); }
		/**/
		if(empty($_GET['s'])){ $this->vista->incluir('vistas/propiedades/ordenb','ordenar'); }else{$this->vista->eti("ordenar",'');}
		/**/
		$this->vista->eti('prev',($this->pagina - 1));
		$this->vista->eti('sm10',($this->pagina - 10));
		$this->vista->eti('sm20',($this->pagina - 20));
		$this->vista->eti('sm5',($this->pagina - 5));
		$this->vista->eti('sm4',($this->pagina - 4));
		$this->vista->eti('sm3',($this->pagina - 3));
		$this->vista->eti('sm2',($this->pagina - 2));
		$this->vista->eti('sm1',($this->pagina - 1));
		$this->vista->eti('s1',($this->pagina + 1));
		$this->vista->eti('s2',($this->pagina + 2));
		$this->vista->eti('s3',($this->pagina + 3));
		$this->vista->eti('s4',($this->pagina + 4));
		$this->vista->eti('s5',($this->pagina + 5));
		$this->vista->eti('s10',($this->pagina + 10));
		$this->vista->eti('s20',($this->pagina + 20));
		$this->vista->eti('next',($this->pagina + 1));
		/**/
		$this->vista->eachset('cat',$this->modelo->cat());
		$this->vista->eachset('link',$this->modelo->link());
		/*********************/
		if(empty($_GET['s'])){
		$f=$this->modelo->filtra($this->propiedad,$this->preciomin,$this->preciomax,$this->ciudad,$this->region,$this->sector,$this->bano,$this->cuarto,$this->venta,$this->orden,$this->limite,$this->pagina);
		$this->vista->eachset('mododios',$f);

		$totalcontenidos=$this->modelo->contadorPropiedad($this->propiedad,$this->preciomin,$this->preciomax,$this->ciudad,$this->region,$this->sector,$this->bano,$this->cuarto,$this->venta);
		
		$this->vista->eti('totalcontenidos',$totalcontenidos);
		$total = $this->modelo->paginacionxb($this->propiedad,$this->preciomin,$this->preciomax,$this->ciudad,$this->region,$this->sector,$this->bano,$this->cuarto,$this->venta,$this->limite);////
		$this->vista->eti('total',$total);
		}
		/*********************/
		
		if(!empty($_GET['s'])){$buscar =$_GET['s'];
		$res=$this->modelo->cuentaBuscador($buscar);$this->vista->eti('res',$res);
		// if($res==1){
			$this->vista->eachset('mododios',$this->modelo->buscarPropiedad($buscar));
			// }
		}
		if(empty($_GET['s'])){$this->vista->incluir('vistas/propiedades/paginacionb','paginacion');}
		$this->vista->ver();
	}

	public function ciudad(){ ?>

			<div id="ciudad">
		<label class="select">
	<select name="ciudad"  onchange="from(document.form.ciudad.value,'sector','/propiedades/sector')" title="Seleccione una Ciudad" >
	    <?php $ciu = $this->modelo->ciudadid($_GET['id'])?>
	    <option value="">Seleccione una Ciudad</option>
	    <?php foreach($ciu as $ciu): ?>
	        <option value="<?= $ciu['id_ciudad']?>"><?= $ciu['nombre']?></option>
	    <?php endforeach;?>
	</select></label></div>
	<?php
	}

	public function sector(){
		$sector=$this->modelo->sector($_GET['id']); ?>
		<label class="select">
		<select name="sector" id="sector">
		<option value="">Seleccione un Sector</option>
		<?php foreach($sector as $sector):?>
		        <option value="<?= $sector["snombre"];?>"><?= $sector["snombre"];?></option>
		    <?php endforeach;?>
		</select>
		</label> <?php
	}


} 

?>
