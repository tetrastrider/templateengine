<?php
class realtyc  extends controlador {
	private $limite = 20;
	private $orden = 0;
	private $pagina = 1;
	private $moneda = 1;
	private $id = null;
	private $tasa;
	private $bano='',$sector='',$cuarto='',$venta = "Venta",$region ='',$propiedad='',$ciudad='';
	private $preciomin = 0;
	private $preciomax =9999999999999999;
public function __construct(){ parent::__construct();  $this->tasa=$this->modelo->tasa(); }

public function index(){
	$this->vista->eachset('region',$this->modelo->reg());
		/**/
	$this->vista->eti('ahora',$this->modelo->fecha().' '.$this->modelo->hora());
	$this->vista->eti('user',$_SESSION['user']);
	$this->vista->eti('ts',$this->tasa);
	$this->vista->eti('tc',$this->modelo->tc());
		/**/

	$this->vista->ver();

}

public function publicaciones(){
		/*pagina*/
		if(isset($_GET['p'])&&is_numeric($_GET['p'])){ $this->pagina=(int)$_GET['p']; } $this->vista->eti("pagina", $this->pagina);
		/*limite*/
		if(isset($_GET['l'])&&is_numeric($_GET['l'])){ $this->limite=$_GET['l']; } $this->vista->eti("limite",$this->limite);
		/*orden*/
		if(isset($_GET['o'])&&is_numeric($_GET['o'])){ $this->orden=(int)$_GET['o']; } $this->vista->eti("orden",$this->orden);
		/*moneda*/
		if (isset($_GET['moneda'])){ $this->moneda = $_GET['moneda']; } $this->vista->eti("moneda", $this->moneda);
		/*total*/
		$this->vista->eti('total',$this->modelo->pag($this->limite));
		/*totalcontenido*/
		$this->vista->eti('totalcontenido',$this->modelo->totalcontenido());
		/**/
		$this->vista->eti("si",'')->eti("si2",'')->eti("si3",'')->eti("si4",'')->eti("si5",'')->eti("si6",'');
		if ($this->limite == 10){ $this->vista->eti("si",'selected'); }elseif ($this->limite == 20){ $this->vista->eti("si2",'selected'); }elseif ($this->limite == 30){ $this->vista->eti("si3",'selected'); }elseif ($this->limite == 40){ $this->vista->eti("si4",'selected'); }elseif ($this->limite == 50){ $this->vista->eti("si5",'selected'); }else{ $this->vista->eti("si6",'selected'); }
		/**/
		$this->vista->eti("ok",'')->eti("ok2",'')->eti("ok3",'')->eti("ok4",'');
		if ($this->orden == 3) { $this->vista->eti("ok4",'selected'); } elseif ($this->orden == 2) { $this->vista->eti("ok3",'selected'); } elseif ($this->orden == 1) { $this->vista->eti("ok2",'selected'); } else { $this->vista->eti("ok",'selected'); }
		/**/
$this->vista->eti('user',$_SESSION['user']);
$this->vista->eti('ts',$this->tasa);
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
		$this->vista->eti('tc',$this->modelo->tc());
		/**/
if(empty($_GET['b'])){
	$this->vista->eachincluir('vistas/realty/propiedades','propiedades',$this->modelo->vista($this->limite,$this->pagina,$this->orden));
}
	/**/
	if(!empty($_GET['b'])){$buscar =trim($_GET['b']);
		$res=$this->modelo->cuentaBuscador($buscar);$this->vista->eti('res',$res);
		
			$this->vista->eachincluir('vistas/realty/propiedades','propiedades',$this->modelo->buscarPropiedad($buscar));
		
		}
	/**/
	$this->vista->ver();
}//FIN INDEX

public function id(){
	$this->vista->eachincluir('vistas/realty/region','todasregion',$this->modelo->reg());
		/**/
	$this->vista->eti('ahora',$this->modelo->fecha().' '.$this->modelo->hora());
	$this->vista->eti('user',$_SESSION['user']);
	$this->vista->eti('ts',$this->tasa);
	$this->vista->eti('tc',$this->modelo->tc());
		/**/
	$i=$this->pedir->args();
		$this->id=(int)$i[0];
		$this->vista->eachset('uno',$this->modelo->simple($this->id));
	$this->vista->ver();
}

public function eliminar(){ if(isset($_GET["i"])){if(!empty($_GET["i"])){(int)$id=$_GET["i"];}}
	$this->modelo->eliminar($id);header('location:publicaciones');}


	public function agregarpropiedad(){

		if(isset($_POST['propiedad'])){$propiedad=$_POST['propiedad'];}if(isset($_POST['region'])){$region=$_POST['region'];}if(isset($_POST['ciudad'])){$ciudad=$_POST['ciudad'];}if(isset($_POST['sector'])){$sector=$_POST['sector'];}if(isset($_POST['cuarto'])){$cuarto=$_POST['cuarto'];}if(isset($_POST['bano'])){$bano=$_POST['bano'];}if(isset($_POST['precio'])){$precio=$_POST['precio'];}if(isset($_POST['contenido'])){$contenido=$_POST['contenido'];}else{$contenido='';}if(isset($_POST['moneda'])){$moneda=$_POST['moneda'];}if(isset($_POST['venta'])){$venta=$_POST['venta'];}if(isset($_POST['metros'])){$metros=$_POST['metros'];}if(isset($_POST['parqueos'])){$parqueos=$_POST['parqueos'];}if(isset($_POST['titulo'])){$titulo=$_POST['titulo'];}if(isset($_POST['ca1'])){$ca1=$_POST['ca1'];}else{$ca1='';}if(isset($_POST['ca2'])){$ca2=$_POST['ca2'];}else{$ca2='';}if(isset($_POST['ca3'])){$ca3=$_POST['ca3'];}else{$ca3='';}if(isset($_POST['ca4'])){$ca4=$_POST['ca4'];}else{$ca4='';}if(isset($_POST['ca5'])){$ca5=$_POST['ca5'];}else{$ca5='';}if(isset($_POST['ca6'])){$ca6=$_POST['ca6'];}else{$ca6='';}if(isset($_POST['ca7'])){$ca7=$_POST['ca7'];}else{$ca7='';}if(isset($_POST['ca8'])){$ca8=$_POST['ca8'];}else{$ca8='';}if(isset($_POST['ca9'])){$ca9=$_POST['ca9'];}else{$ca9='';}if(isset($_POST['ca10'])){$ca10=$_POST['ca10'];}else{$ca10='';}if(isset($_POST['ca11'])){$ca11=$_POST['ca11'];}else{$ca11='';}if(isset($_POST['ca12'])){$ca12=$_POST['ca12'];}else{$ca12='';}if(isset($_POST['ca13'])){$ca13=$_POST['ca13'];}else{$ca13='';}if(isset($_POST['ca14'])){$ca14=$_POST['ca14'];}else{$ca14='';}if(isset($_POST['mueble'])){$mue=$_POST['mueble'];}else{$mue='';}if(isset($_POST['ca15'])){$ca15=$_POST['ca15'];}else{$ca15='';}if(isset($_POST['ca16'])){$ca16=$_POST['ca16'];}else{$ca16='';}if(isset($_FILES["foto1"])){$foto1=$_FILES['foto1']['name'];$foto1_tmp=$_FILES['foto1']['tmp_name'];}else{$foto1="";$foto1_tmp="";}if(isset($_FILES["foto2"])){$foto2=$_FILES['foto2']['name'];$foto2_tmp=$_FILES['foto2']['tmp_name'];}else{$foto2="";$foto2_tmp="";}if(isset($_FILES["foto3"])){$foto3=$_FILES['foto3']['name'];$foto3_tmp=$_FILES['foto3']['tmp_name'];}else{$foto3="";$foto3_tmp="";}if(isset($_FILES["foto4"])){$foto4=$_FILES['foto4']['name'];$foto4_tmp=$_FILES['foto4']['tmp_name'];}else{$foto4="";$foto4_tmp="";}if(isset($_FILES["foto5"])){$foto5=$_FILES['foto5']['name'];$foto5_tmp=$_FILES['foto5']['tmp_name'];}else{$foto5="";$foto5_tmp="";}if(isset($_FILES["foto6"])){$foto6=$_FILES['foto6']['name'];$foto6_tmp=$_FILES['foto6']['tmp_name'];}else{$foto6="";$foto6_tmp="";}if(isset($_FILES["foto7"])){$foto7=$_FILES['foto7']['name'];$foto7_tmp=$_FILES['foto7']['tmp_name'];}else{$foto7="";$foto7_tmp="";}if(isset($_FILES["foto8"])){$foto8=$_FILES['foto8']['name'];$foto8_tmp=$_FILES['foto8']['tmp_name'];}else{$foto8="";$foto8_tmp="";}if(isset($_POST["usuario"])){$usuario=$_POST['usuario'];}
			$publicado=$_POST['publicado'];
			$this->modelo->agregarPropiedad($foto1,$foto1_tmp,$foto2,$foto2_tmp,$foto3,$foto3_tmp,$foto4,$foto4_tmp,$foto5,$foto5_tmp,$foto6,$foto6_tmp,$foto7,$foto7_tmp,$foto8,$foto8_tmp,$propiedad,$ciudad,$bano,$cuarto,$moneda,$precio,$metros,$parqueos,$contenido,$sector,$region,$titulo,$venta,$mue,$ca1,$ca2,$ca3,$ca4,$ca5,$ca6,$ca7,$ca8,$ca9,$ca10,$ca11,$ca12,$ca13,$ca14,$ca15,$ca16,$usuario,$publicado);
	} 

	public function editarpropiedad(){

		$propiedad=$_POST['propiedad'];$region=$_POST['region'];$ciudad=$_POST['ciudad'];$sector=$_POST['sector'];$cuarto=$_POST['cuarto'];$bano=$_POST['bano'];$precio=$_POST['precio'];if(isset($_POST['contenido'])){$contenido=$_POST['contenido'];}else{$contenido='';}$moneda=$_POST['moneda'];$venta=$_POST['venta'];$metros=$_POST['metros'];$parqueos=$_POST['parqueos'];$titulo=$_POST['titulo'];if(isset($_POST['ca1'])){$ca1=$_POST['ca1'];}else{$ca1='';}if(isset($_POST['ca2'])){$ca2=$_POST['ca2'];}else{$ca2='';}if(isset($_POST['ca3'])){$ca3=$_POST['ca3'];}else{$ca3='';}if(isset($_POST['ca4'])){$ca4=$_POST['ca4'];}else{$ca4='';}if(isset($_POST['ca5'])){$ca5=$_POST['ca5'];}else{$ca5='';}if(isset($_POST['ca6'])){$ca6=$_POST['ca6'];}else{$ca6='';}if(isset($_POST['ca7'])){$ca7=$_POST['ca7'];}else{$ca7='';}if(isset($_POST['ca8'])){$ca8=$_POST['ca8'];}else{$ca8='';}if(isset($_POST['ca9'])){$ca9=$_POST['ca9'];}else{$ca9='';}if(isset($_POST['ca10'])){$ca10=$_POST['ca10'];}else{$ca10='';}if(isset($_POST['ca11'])){$ca11=$_POST['ca11'];}else{$ca11='';}if(isset($_POST['ca12'])){$ca12=$_POST['ca12'];}else{$ca12='';}if(isset($_POST['ca13'])){$ca13=$_POST['ca13'];}else{$ca13='';}if(isset($_POST['ca14'])){$ca14=$_POST['ca14'];}else{$ca14='';}if(isset($_POST['mueble'])){$mue=$_POST['mueble'];}else{$mue='';}if(isset($_POST['ca15'])){$ca15=$_POST['ca15'];}else{$ca15='';}if(isset($_POST['ca16'])){$ca16=$_POST['ca16'];}else{$ca16='';}$id=$_POST['id_contenido'];$archibo=$_POST['foto1'];$archibo2=$_POST['foto2'];$archibo3=$_POST['foto3'];$archibo4=$_POST['foto4'];$archibo5=$_POST['foto5'];$archibo6=$_POST['foto6'];$archibo7=$_POST['foto7'];$archibo8=$_POST['foto8'];if(isset($_FILES["foto1"]));{$file_name=$_FILES['foto1']['name'];$file_tmp=$_FILES['foto1']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}else{}}if(isset($_FILES["foto2"]));{$file_name=$_FILES['foto2']['name'];$file_tmp=$_FILES['foto2']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo2=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto3"]));{$file_name=$_FILES['foto3']['name'];$file_tmp=$_FILES['foto3']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo3=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto4"]));{$file_name=$_FILES['foto4']['name'];$file_tmp=$_FILES['foto4']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo4=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto5"]));{$file_name=$_FILES['foto5']['name'];$file_tmp=$_FILES['foto5']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo5=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto6"]));{$file_name=$_FILES['foto6']['name'];$file_tmp=$_FILES['foto6']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo6=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto7"]));{$file_name=$_FILES['foto7']['name'];$file_tmp=$_FILES['foto7']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo7=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}if(isset($_FILES["foto8"]));{$file_name=$_FILES['foto8']['name'];$file_tmp=$_FILES['foto8']['tmp_name'];if($this->modelo->permitidas_imagenes($file_name)==true){$file_name=md5(microtime(true)).'.png';$this->modelo->watermark_image($file_tmp,'imagenes/'.$file_name);$directorio='imagenes';$archibo8=$directorio.'/'.$file_name;$thumb=new thumbnail("imagenes/".$file_name);$thumb->size_width(300);$thumb->size_height(200);$thumb->jpeg_quality(75);$thumb->save(MINI.$file_name);}}
		$this->modelo->modificarPropiedad($archibo,$archibo2,$archibo3,$archibo4,$archibo5,$archibo6,$archibo7,$archibo8,$propiedad,$ciudad,$bano,$cuarto,$moneda,$precio,$metros,$parqueos,$contenido,$sector,$region,$titulo,$venta,$mue,$ca1,$ca2,$ca3,$ca4,$ca5,$ca6,$ca7,$ca8,$ca9,$ca10,$ca11,$ca12,$ca13,$ca14,$ca15,$ca16,$id);
			header("location:/realty/publicaciones");

	}

} ?>