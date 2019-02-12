<body><div class="todo">
    <header>
    <nav>
  <a href="/"><div class="col">Sitio Web</div></a>
  <a href="/Administrador"><div class="col">Publicar</div></a>
  <a href="/publicaciones"><div class="col" >Publicaciones</div></a>
  <a href="/realty"><div class="col" id="activo">Realty</div></a>
  <a href="/registro"><div class="col">Control</div></a>
  <a href="/administrador/salir"><div class="col">Salir</div></a>
  <div class="buscar">
<form name="buscador" action="/realty"><input type="text" name="b" placeholder="Buscar codigo:"/><button type="submit" class="buscardor"title="buscar"/></button></form>
</div>
</nav>
    </header>

<div class="cuerpo">
<div class="limite">
<!---->

<!---->
</div>
<div class="servicios">
<div class='noticias'>
<div id="noticia">

<!-------->
<form action="/realty/editarpropiedad" method="post" name="form" class="formpub" enctype="multipart/form-data">

<center></each:uno/>

  <select name="propiedad"required="true">
    <option value="</id_propiedad/>" selected></id_propiedad/></option>
    <option value="">Tipo de Propiedad</option>
    <option value="Casas">Casas</option>
    <option value="Apartamentos">Apartamentos</option>
    <option value="Penthouses">Penthouses</option>
    <option value="Solares">Solares</option>
    <option value="Locales Comerciales">Locales Comerciales</option>
    <option value="Propiedad Tur&iacute;stica">Propiedad Tur&iacute;stica</option>
    <option value="Naves Industriales">Naves Industriales</option>
    <option value="Finca">Finca</option>
    <option value="Otros">Otros</option>
  </select>
  
  <select name="region" id="region" onChange="from(document.form.region.value,'ciudad','/propiedades/ciudad')"required="true">
    <option value="0">Seleccione la Provincia</option>
    </todasregion/>
    <option value="</id_region/>" selected></region/></option>
  </select>
  
  <select name="ciudad" id="ciudad" onChange="from(document.form.ciudad.value,'sector','/propiedades/sector')"required="true">
    <option value="</id_ciudad/>" selected></nombre/></option>
    <option>Seleccione una Ciudad</option>
  </select>
  
  <select name="sector" id="sector"required="true">
    <option value="</id_sector/>" selected></id_sector/></option>
    <option>Seleccione un Sector</option>
  </select>
  
   <select name="cuarto"required="true">
    <option value="</id_cuarto/>" selected></id_cuarto/></option>
    <option value="">Habitaciones</option>
    <option value="1">1</option>
    <option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option>
    <option value="7">7</option>
    <option value="+8">+8</option>
    <option value="No">No</option>
  </select>
  
  <select name="bano"required="true">
    <option value="</id_bano/>" selected></id_bano/></option>
    <option value="">Baños</option>
    <option value="1">1</option>
    <option value="1.5">1.5</option>
    <option value="2">2</option>
    <option value="2.5">2.5</option>
    <option value="3">3</option>
    <option value="3.5">3.5</option>
    <option value="4">4</option>
    <option value="4.5">4.5</option>
    <option value="5">5</option>
    <option value="5.5">5.5</option>
    <option value="+6">+6</option>
    <option value="No">No</option>
  </select>
  
  <select name="parqueos"required="true">
    <option value="</parqueo/>" selected></parqueo/></option>
    <option value="0">Parqueos</option>
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
  </select>
</center>
<hr>
<center>
  <input type="text" name="titulo" placeholder="Codigo" class="inputpub" value='</titulo/>'>
  <input type="text" name="precio" placeholder="precio" class="inputpub" value='</precio/>'>
  <input type="text" name="metros" placeholder="metros" class="inputpub" value='</metros/>'>
</center>
  <hr>
  <center>
  <b>Venta</b>
  <input type="checkbox" value="Venta" title="Venta" name="venta" id="venta"  class="regular-checkbox" </:si:('</id_venta/>')(igual)('Venta')/>checked="true"</:endsi:/>>
  <label for='venta'></label>

  <b>Alquiler</b>
  <input type="checkbox" value="Alquiler" name="venta" id="alquiler" class="regular-checkbox" </:si:('</id_venta/>')(igual)('Alquiler')/>checked="true"</:endsi:/>>
<label for='alquiler'></label>

  <b>RD$ </b>
  <input type="checkbox" value="1" name="moneda" id="pesos" class="regular-checkbox" </:si:(</id_moneda/>)(igual)(1)/>checked="true"</:endsi:/>>
<label for='pesos'></label>

  <b>US$</b>
  <input type="checkbox" value="2" id="dolares" name="moneda" class="regular-checkbox" </:si:(</id_moneda/>)(igual)(2)/>checked="true"</:endsi:/>>
<label for='dolares'></label>
</center>
<hr>
<center><img name="foto1" class="foto" src="/imagenes/mini/</foto1/>"><img name="foto2" class="foto" src="/imagenes/mini/</foto2/>"><img name="foto3" class="foto" src="/imagenes/mini/</foto3/>"><img name="foto4" class="foto" src="/imagenes/mini/</foto4/>"><img name="foto5" class="foto" src="/imagenes/mini/</foto5/>"><img name="foto6" class="foto" src="/imagenes/mini/</foto6/>"><img name="foto7" class="foto" src="/imagenes/mini/</foto7/>"><img name="foto8" class="foto" src="/imagenes/mini/</foto8/>"></center>

<hr>
<div class="botonera"><div class="fileUpload naranja b"><span>Foto 1</span>
  <input type="file" name="foto1" class="upload" value='</foto1/>'></div><div class="fileUpload naranja b"><span>Foto 2</span>
  <input type="file" name="foto2" class="upload" value='</foto2/>'></div><div class="fileUpload naranja b"><span>Foto 3</span>
  <input type="file" name="foto3" class="upload" value='</foto3/>'></div><div class="fileUpload naranja b"><span>Foto 4</span>
  <input type="file" name="foto4" class="upload" value='</foto4/>'></div><div class="fileUpload naranja b"><span>Foto 5</span>
  <input type="file" name="foto5" class="upload" value='</foto5/>'></div><div class="fileUpload naranja b"><span>Foto 6</span>
  <input type="file" name="foto6" class="upload" value='</foto6/>'></div><div class="fileUpload naranja b"><span>Foto 7</span>
  <input type="file" name="foto7" class="upload" value='</foto7/>'></div><div class="fileUpload naranja b"><span>Foto 8</span>
  <input type="file" name="foto8" class="upload" value='</foto8/>'></div></div>

<input type="hidden" value="</user/>" name='usuario'/>
<input type="hidden" value="</ahora/>" name='publicado'/>
<input type='hidden' name="foto1" value="</foto1/>">
<input type='hidden' name="foto2" value="</foto2/>">
<input type='hidden' name="foto3" value="</foto3/>">
<input type='hidden' name="foto4" value="</foto4/>">
<input type='hidden' name="foto5" value="</foto5/>">
<input type='hidden' name="foto6" value="</foto6/>">
<input type='hidden' name="foto7" value="</foto7/>">
<input type='hidden' name="foto8" value="</foto8/>">
<input type="hidden" name="id_contenido" value="</id_contenido/>">
<br>
<center><h3 class='h6'>Descripcion</h3></center>

<link type="text/css" rel="stylesheet" href="/js/jQuery-TE/jquery-te-1.4.0.css">
 <script type="text/javascript" src="/js/jQuery-TE/jquery-te-1.4.0.min.js" charset="utf-8"></script>

  <textarea name="contenido" id="contenido" class="jqte-test"></descripcion/></textarea>

<script>
    $('.jqte-test').jqte();
</script>
<center><h2 class="h6">Caracter&iacute;sticas</h2></center>

<center>
<table class='caracteristicas'>
  <tr><td>
    <input type="checkbox" name="ca1" value="&bull; Aire acondicionado"class="regular-checkbox"id="c1" </:si:('</caracteristicas1/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c1'></label> Aire acondicionado</td><td>
    <input type="checkbox" name="ca2" value="&bull; Gas com&uacute;n"class="regular-checkbox"id="c2" </:si:('</caracteristicas2/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c2'></label> Gas com&uacute;n</td></tr>
  <tr><td>
    <input type="checkbox" name="ca3" value="&bull; Area com&uacute;n"class="regular-checkbox"id="c3" </:si:('</caracteristicas3/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c3'></label> Area com&uacute;n</td><td>
    <input type="checkbox" name="ca4" value="&bull; Jacuzzi"class="regular-checkbox"id="c4" </:si:('</caracteristicas4/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c4'></label> Jacuzzi</td></tr><tr><td>
    <input type="checkbox" name="ca5" value="&bull; Ascensor"class="regular-checkbox"id="c5" </:si:('</caracteristicas5/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c5'></label> Ascensor</td><td>
    <input type="checkbox" name="ca6" value="&bull; Lobby"class="regular-checkbox"id="c6" </:si:('</caracteristicas6/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c6'></label> Lobby</td></tr><tr><td>
    <input type="checkbox" name="ca7" value="&bull; Balc&oacute;n"class="regular-checkbox"id="c7" </:si:('</caracteristicas7/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c7'></label> Balc&oacute;n</td><td>
    <input type="checkbox" name="ca8" value="&bull; Piscina"class="regular-checkbox"id="c8" </:si:('</caracteristicas8/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c8'></label> Piscina</td></tr><tr><td>
    <input type="checkbox" name="ca9" value="&bull; Ducto de Basura"class="regular-checkbox"id="c9" </:si:('</caracteristicas9/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c9'></label> Ducto de basura</td><td>
    <input type="checkbox" name="ca10" value="&bull; Planta El&eacute;ctrica"class="regular-checkbox"id="c10" </:si:('</caracteristicas10/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c10'></label> Planta el&eacute;ctrica</td></tr><tr><td>
    <input type="checkbox" name="ca11" value="&bull; Estudio"class="regular-checkbox"id="c11" </:si:('</caracteristicas11/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c11'></label> Estudio</td><td>
    <input type="checkbox" name="ca12" value="&bull; Port&oacute;n el&eacute;ctrico"class="regular-checkbox"id="c12" </:si:('</caracteristicas12/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c12'></label> Port&oacute;n el&eacute;ctrico</td></tr><tr><td>
    <input type="checkbox" name="ca13" value="&bull; Family room"class="regular-checkbox"id="c13" </:si:('</caracteristicas13/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c13'></label> Family room</td><td>
    <input type="checkbox" name="ca14" value="&bull; Walk-in closet"class="regular-checkbox"id="c14" </:si:('</caracteristicas14/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c14'></label> Walk-in closet</td></tr><tr><td>
    <input type="checkbox" name="mueble" value=" Amueblado"class="regular-checkbox"id="c15" </:si:('</caracteristicas15/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c15'></label> Amueblado</td><td>
    <input type="checkbox" name="ca16" value="&bull; Linea Blanca"class="regular-checkbox"id="c16" </:si:('</caracteristicas16/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c16'></label> Linea Blanca</td></tr><tr><td>
    <input type="checkbox" name="ca15" value="&bull; Gimnasio"class="regular-checkbox"id="c17" </:si:('</caracteristicas17/>')(!igual)('')/>checked="true"</:endsi:/>>
    <label for='c17'></label> Gimnasio</td><td></td></tr></table></center>
</endeach:/>
  <center>
  <input type="submit" value="Publicar">
  
  <input type="reset" value="Reset">
</center>
<br>
</form>
 <!-------->

 
</div>
<aside>
  <!---adminbaner---->
  <div class='envase admin'>
   <center><h3></user/></h3></center>
  </div>
  <!---adminbaner---->
  <hr>
 <!---pxu---->
  <div class='envase mod'>
   <center><p><i class="fa fa-eye" aria-hidden="true"></i> Total visitas  </tc/></p></center>
  </div>
  <!---pxu---->

  <!---pxu---->
  <div class='envase mod'>
   <center><p><i class="fa fa-money" aria-hidden="true"></i> Tasa de cambio </ts/></p></center>
  </div>
  <!---pxu---->
  <hr>
 <!---pxu---->

   <center><a href='/realty'class='boton'title='publicar'><i class="fa fa-flag-o" aria-hidden="true"></i> publicar</a></center><br>
<center><a href='/realty/publicaciones'class='boton'title='publicaciones'><i class="fa fa-flag" aria-hidden="true"></i> publicaciones</a></center>
  <!---pxu---->
<!--chatbox-->
</aside>
</div>
</div>