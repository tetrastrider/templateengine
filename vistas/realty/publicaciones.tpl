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
<form name="buscador" action="realty"><input type="text" name="b" placeholder="Buscar codigo:"/><button type="submit" class="buscardor"title="buscar"/></button></form>
</div>
</nav>
    </header>

<div class="cuerpo">
<div class="limite">
<!---->

<form name="orden" id="orden" method="get">
<label class="m custom-select"> 
<select onchange='this.form.submit()' title='Cambiar numero de entradas a mostrar' name="l" id="limit"> <option </si/> value=10>10</option> <option </si2/> value=20>20</option> <option </si3/> value=30>30</option> <option </si4/> value=40>40</option> <option </si5/> value=50>50</option> <option </si6/> value=60>60</option> </select></label>

 <b>Resultados </pagina/> &nbsp;-&nbsp; </total/>  &nbsp;de&nbsp;  </totalcontenido/> &nbsp;propiedades</b>
<label class="n custom-select">
  <select onchange='this.form.submit()' title='Orden de las plublicaciones' name="o" id="cambio">
    <option </ok/> value=0>Precio Descendente</option>
    <option </ok2/> value=1>Precio Ascendente</option>
    <option </ok3/> value=2>Publicaciones Anteriores</option>
    <option </ok4/> value=3>Publicaciones Nuevas</option>
</select></label>

   <input type="hidden" name="page" id="page" value='</pagina/>'> </form>

</div>
<div class="servicios">
<div class='noticias'>
<div id="noticia">

<!-------->
 </propiedades/>
 <!-------->
<ul class="pager">
</:si:(</pagina/>)(mayor)(1)/>
<li><a href='/realty/publicaciones/?p=1&l=</limite/>&o=</orden/>'>Inicio</a></li> </:endsi:/>
</:si:(</pagina/>)(igual)(1)/>
<li class='lis'><a>Inicio</a></li></:endsi:/>

</:si:(</pagina/>)(mayor)(1)/>
<li><a href='/realty/publicaciones/?p=</prev/>&l=</limite/>&o=</orden/>'>Anterior</a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(21)/>
?> <li><a href='/realty/publicaciones/?p=</sm20/>&l=</limite/>&o=</orden/>'></sm20/></a></li>
</:endsi:/>

</:si:(</pagina/>)(mayoroigual)(11)/>
<li><a href='/realty/publicaciones/?p=</sm10/>&l=</limite/>&o=</orden/>'></sm10/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(6)/>
<li><a href='/realty/publicaciones/?p=</sm5/>&l=</limite/>&o=</orden/>'></sm5/></a></li>
</:endsi:/>

</:si:(</pagina/>)(mayoroigual)(5)/>
<li><a href='/realty/publicaciones/?p=</sm4/>&l=</limite/>&o=</orden/>'></sm4/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(4)/>
<li><a href='/realty/publicaciones/?p=</sm3/>&l=</limite/>&o=</orden/>'></sm3/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(3)/>
<li><a href='/realty/publicaciones/?p=</sm2/>&l=</limite/>&o=</orden/>'></sm2/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(2)/>
<li><a href='/realty/publicaciones/?p=</sm1/>&l=</limite/>&o=</orden/>'></sm1/></a></li>
</:endsi:/>
</:si:(</pagina/>)(mayoroigual)(1)/>
<li class='lis'><a></pagina/></a></li>
</:endsi:/>
</:si:(</s1/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s1/>&l=</limite/>&o=</orden/>'></s1/></a></li>
</:endsi:/>
</:si:(</s2/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s2/>&l=</limite/>&o=</orden/>'></s2/></a></li>
</:endsi:/>
</:si:(</s3/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s3/>&l=</limite/>&o=</orden/>'></s3/></a></li>
</:endsi:/>
</:si:(</s4/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s4/>&l=</limite/>&o=</orden/>'></s4/></a></li>
</:endsi:/>
</:si:(</s5/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s5/>&l=</limite/>&o=</orden/>'></s5/></a></li> 
</:endsi:/>
</:si:(</s10/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s10/>&l=</limite/>&o=</orden/>'></s10/></a></li>
</:endsi:/>
</:si:(</s20/>)(menoroigual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</s20/>&l=</limite/>&o=</orden/>'></s20/></a></li>
</:endsi:/>
</:si:(</pagina/>)(menor)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</next/>&l=</limite/>&o=</orden/>'>Siguiente</a></li>
</:endsi:/>
</:si:(</pagina/>)(!igual)(</total/>)/>
<li><a href='/realty/publicaciones/?p=</total/>&l=</limite/>&o=</orden/>'>Fin</a></li>
</:endsi:/>
</:si:(</pagina/>)(igual)(</total/>)/>
<li class='lis'><a>Fin</a></li>
</:endsi:/>
</ul>

 
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
   <center><p><i class="fa fa-eye" aria-hidden="true"></i>&nbsp; Total visitas  </tc/></p></center>
  </div>
  <!---pxu---->

  <!---pxu---->
  <div class='envase mod'>
   <center><p><i class="fa fa-money" aria-hidden="true"></i>&nbsp; Tasa de cambio </ts/></p></center>
  </div>
  <!---pxu---->
 <hr>
 <!---pxu---->

   <center><a href='/realty'class='boton'title='publicar'><i class="fa fa-flag-o" aria-hidden="true"></i>&nbsp; publicar</a></center>

  <!---pxu---->
<!--chatbox-->
</aside>
</div>
</div>