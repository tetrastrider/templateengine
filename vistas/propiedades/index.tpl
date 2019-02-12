
<div class='bf'>

<form name="orden" id="orden" method="get">
<label class="m custom-select"> 
<select onchange='this.form.submit()' title='Cambiar numero de entradas a mostrar' name="l" id="limit"> <option </si/> value=12>12</option> <option </si2/> value=21>21</option> <option </si3/> value=33>33</option> <option </si4/> value=42>42</option> <option </si5/> value=51>51</option> <option </si6/> value=63>63</option> </select></label>

 <div class="result">Resultados </pagina/> - </total/>  de </totalcontenido/> propiedades</div>
<label class="n custom-select">
  <select onchange='this.form.submit()' title='Orden de las plublicaciones' name="o" id="cambio">
    <option </ok/> value=0>Precio Descendente</option>
    <option </ok2/> value=1>Precio Ascendente</option>
    <option </ok3/> value=2>Publicaciones Anteriores</option>
    <option </ok4/> value=3>Publicaciones Nuevas</option>
</select></label>

   <input type="hidden" name="page" id="page" value='</pagina/>'> </form>

<div class='colum'>
</each:propiedad/>
 <div class="sombra"><div class="acticulo"> <div class="imagenarticulo"><img src="imagenes/full/</foto1/>" class="imgb"/></div> <div class="contenidoarticulo"><h6></id_sector/></h6>
<p></id_propiedad/> <i class="fa fa-home" aria-hidden="true"></i> - </id_venta/> </:si:('</mueble/>')(!igual)('')/> - </mueble/></:endsi:/></p>
 

<p  class='rd'><i class="fa fa-money"></i> </:si:('</id_moneda/>')(igual)('2')/>US$</:endsi:/></:si:('</id_moneda/>')(igual)('1')/>RD$</:endsi:/> </precio/> - </metros/> MT2</p>
<p></id_cuarto/> Habitaciones <i class="fa fa-bed" aria-hidden="true" title="habitaciones"></i> - </id_bano/> Baños <i class="fa fa-archive" aria-hidden="true"></i> - </parqueo/> Parqueos <i class="fa fa-car" title=" Parqueo"></i></p>
</div>
<div class='hld'><a href="javascript:void(0);" onclick="window.location.assign('/propiedades/id/</id_contenido/>')" title="Ver Detalles" class="b">Ver Detalles</a></div> 
 </div></div>
</endeach:/>
</div>
<div id='paginacion'>
 <ul class="pager">
</:si:(</pagina/>)(mayor)(1)/>
<li><a href='propiedades?p=1&l=</limite/>&o=</orden/>'>Inicio</a></li> </:endsi:/>
</:si:(</pagina/>)(igual)(1)/>
<li class='lis'><a>Inicio</a></li></:endsi:/>

</:si:(</pagina/>)(mayor)(1)/>
<li><a href='propiedades?p=</prev/>&l=</limite/>&o=</orden/>'>Anterior</a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(21)/>
?> <li><a href='propiedades?p=</sm20/>&l=</limite/>&o=</orden/>'></sm20/></a></li>
</:endsi:/>

</:si:(</pagina/>)(mayoroigual)(11)/>
<li><a href='propiedades?p=</sm10/>&l=</limite/>&o=</orden/>'></sm10/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(6)/>
<li><a href='propiedades?p=</sm5/>&l=</limite/>&o=</orden/>'></sm5/></a></li>
</:endsi:/>

</:si:(</pagina/>)(mayoroigual)(5)/>
<li><a href='propiedades?p=</sm4/>&l=</limite/>&o=</orden/>'></sm4/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(4)/>
<li><a href='propiedades?p=</sm3/>&l=</limite/>&o=</orden/>'></sm3/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(3)/>
<li><a href='propiedades?p=</sm2/>&l=</limite/>&o=</orden/>'></sm2/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(2)/>
<li><a href='propiedades?p=</sm1/>&l=</limite/>&o=</orden/>'></sm1/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(1)/>
<li class='lis'><a></pagina/></a></li>
</:endsi:/>
</:si:(</s1/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s1/>&l=</limite/>&o=</orden/>'></s1/></a></li>
</:endsi:/>
</:si:(</s2/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s2/>&l=</limite/>&o=</orden/>'></s2/></a></li>
</:endsi:/>
</:si:(</s3/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s3/>&l=</limite/>&o=</orden/>'></s3/></a></li>
</:endsi:/>
</:si:(</s4/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s4/>&l=</limite/>&o=</orden/>'></s4/></a></li>
</:endsi:/>
</:si:(</s5/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s5/>&l=</limite/>&o=</orden/>'></s5/></a></li> 
</:endsi:/>
</:si:(</s10/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s10/>&l=</limite/>&o=</orden/>'></s10/></a></li>
</:endsi:/>
</:si:(</s20/>)(menoroigual)(</total/>)/>
<li><a href='propiedades?p=</s20/>&l=</limite/>&o=</orden/>'></s20/></a></li>
</:endsi:/>
</:si:(</pagina/>)(menor)(</total/>)/>
<li><a href='propiedades?p=</next/>&l=</limite/>&o=</orden/>'>Siguiente</a></li>
</:endsi:/>
</:si:(</pagina/>)(!igual)(</total/>)/>
<li><a href='propiedades?p=</total/>&l=</limite/>&o=</orden/>'>Fin</a></li>
</:endsi:/>
</:si:(</pagina/>)(igual)(</total/>)/>
<li class='lis'><a>Fin</a></li>
</:endsi:/>
</ul></div> </div>
