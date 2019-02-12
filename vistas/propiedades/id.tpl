 <div class='bf'>
</each:simple/><img src="/imagenes/full/</foto1/>" class="imagensimple"/>
<div class='sbox'>
<h6 class="t">Especificaci&oacute;nes</h6>

<div id='espacio2'>
 <p><i class="fa fa-home" aria-hidden="true"></i> </id_propiedad/></p> 
</:si:('</id_cuarto/>')(!igual)('No')/><p><i class="fa fa-bed" aria-hidden="true"></i> </id_cuarto/>  Habitaciones</p></:endsi:/>
</:si:('</id_bano/>')(!igual)('No')/><p><i class="fa fa-archive" aria-hidden="true"></i> </id_bano/> Ba&ntilde;os</p></:endsi:/>     
</:si:('</parqueo/>')(!igual)('0')/><p><i class="fa fa-car" aria-hidden="true"></i> </parqueo/> Parqueos</p></:endsi:/>

</div>
<p></metros/> Mts2 </p>
<p><i class="fa fa-search" aria-hidden="true"></i> Codigo </titulo/></p>
<p>publicado </publicado/></p>
<p><i class="fa fa-money"></i> Precio </:si:('</id_moneda/>')(igual)('2')/>US$</:endsi:/></:si:('</id_moneda/>')(igual)('1')/>RD$</:endsi:/> </precio/></p>
</div>

<div class='sbox'>
<h6 class="t">Caracter&iacute;sticas</h6>

<div id='espacio'>

</:si:('</caracteristicas1/>')(!igual)('')/><p></caracteristicas1/> </p></:endsi:/>
</:si:('</caracteristicas2/>')(!igual)('')/><p></caracteristicas2/> </p></:endsi:/>
</:si:('</caracteristicas3/>')(!igual)('')/><p></caracteristicas3/> </p></:endsi:/>
</:si:('</caracteristicas4/>')(!igual)('')/><p></caracteristicas4/> </p></:endsi:/>
</:si:('</caracteristicas5/>')(!igual)('')/><p></caracteristicas5/> </p></:endsi:/>
</:si:('</caracteristicas7/>')(!igual)('')/><p></caracteristicas7/> </p></:endsi:/>

</div>
<div id='espacio'>

</:si:('</caracteristicas8/>')(!igual)('')/><p></caracteristicas8/> </p></:endsi:/>
</:si:('</caracteristicas9/>')(!igual)('')/><p></caracteristicas9/> </p></:endsi:/>
</:si:('</caracteristicas10/>')(!igual)('')/><p></caracteristicas10/> </p></:endsi:/>
</:si:('</caracteristicas12/>')(!igual)('')/><p></caracteristicas12/> </p></:endsi:/>
</:si:('</caracteristicas14/>')(!igual)('')/><p></caracteristicas14/> </p></:endsi:/>

</div>
<div id='espacio'>
</:si:('</caracteristicas11/>')(!igual)('')/><p></caracteristicas11/> </p></:endsi:/></:si:('</caracteristicas13/>')(!igual)('')/><p></caracteristicas13/> </p></:endsi:/>
</:si:('</caracteristicas6/>')(!igual)('')/><p></caracteristicas6/> </p></:endsi:/>
</:si:('</mueble/>')(!igual)('')/><p></mueble/> </p></:endsi:/>
</:si:('</linea/>')(!igual)('')/><p></linea/> </p></:endsi:/>
</:si:('</eje/>')(!igual)('')/><p></eje/> </p></:endsi:/> 

</div> 

</div>

<div class='sbox'>
<h6 class="t">Ubicacion</h6>
<p>region </region/></p>
<p>Sector </nombre/></p>
<p>Comuna </id_sector/></p>

</div>
<iframe cframeborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.es/?ie=UTF8&amp;ll=18.455659,-69.93982&amp;spn=0.011907,0.021136&amp;t=m&amp;z=16&amp;output=embed" id="mapu"></iframe>


<div class="descripcion"><div class="destacado"><h3>detalles</h3></div>
</descripcion/></div>

<div class="destacado"><h3>galer&iacute;a de fotos</h3></div>

<div class="fotos">
  <div class='colum'>

 </:si:('</foto1/>')(!igual)('')/> <img src="/imagenes/full/</foto1/>" class='imgr' /> </:endsi:/>

</:si:('</foto2/>')(!igual)('')/> <img src="/imagenes/full/</foto2/>" class='imgr' /> </:endsi:/>

 </:si:('</foto3/>')(!igual)('')/> <img src="/imagenes/full/</foto3/>" class='imgr' /> </:endsi:/>

  </:si:('</foto4/>')(!igual)('')/> <img src="/imagenes/full/</foto4/>" class='imgr' /> </:endsi:/>

</:si:('</foto5/>')(!igual)('')/> <img src="/imagenes/full/</foto5/>" class='imgr' /> </:endsi:/>

</:si:('</foto6/>')(!igual)('')/> <img src="/imagenes/full/</foto6/>" class='imgr' /> </:endsi:/>

 </:si:('</foto7/>')(!igual)('')/> <img src="/imagenes/full/</foto7/>" class='imgr' /> </:endsi:/>

</:si:('</foto8/>')(!igual)('')/> <img src="/imagenes/full/</foto8/>" class='imgr' /> </:endsi:/>

  </div>
</div>

</endeach:/>

<div class="destacado"><h3>contact&oacute;</h3></div>

<div class="contacto">
  
  <div class="etiq">
    <p>informaci&oacute;n</p>
    <div class="imagenesc"><a href="#contacto"><img src='/imagenes/info.png'/></a></div>
  </div>

<div class="etiq">
    <p>imprimir</p>
    <div class="imagenesc"><a onClick="javascript:window.print()"><img src='/imagenes/printer.png'/></a></div>
  </div>

<div class="etiq">
    <p>enviar a un amigo</p>
    <div class="imagenesc"><a href='#ai'><img src='/imagenes/carta.png'/></a></div>
  </div>

  <a class="btn" onclick="window.history.back()">atras</a>
</div>


<br>
<!---->
<div class="modal" id='ai'>
<div class='mail'>
  
  <div class="destacado"><h3 class="blank">enviar a un amigo<a href="#" class='close'title='cerrar'><i class="fa fa-times-circle-o"></i></a></h3></div>
<form method="POST" action="mailr" class="cam">
  <i class="fa fa-user"></i><input type="text" name="nombre" placeholder='Su nombre:' required/>
  <i class="fa fa-envelope"></i><input type="email" name="remitente" placeholder='Su email:' required/>
  <i class="fa fa-paper-plane"></i><input type="email" name="destinatario" placeholder='Enviar a:' required/>
  <p>d&iacute;gite m&uacute;ltiples direcciones separadas por comas y/o en diferentes l&iacute;neas</p>
  <input type="hidden" name="asunto" class="form-input" rows="2" required value='Alguien le ha enviado un mensaje desde alexander realty' disabled/>
  </each:amigo/>
  <input type="hidden" name='id' value='</id_contenido/>'>
  <input type="hidden" name='id2' value='</id_moneda/>'>
  
  
  <a href="#" name='dp'>propiedad_# </titulo/></a>
</endeach:/>
  <br>
  
  <textarea name="mensaje" placeholder='Mensaje:' class="form-input" onKeyDown="contador(this.form.mensaje,this.form.remLen,700)"></textarea>
  <input type="text" name="remLen" size="3" maxlength="3" value="700" readonly>
  escribe hasta 700 caracteres
  <hr>
  <a class="btn"href="#"/>
  cancelar
  </a>
  <input class="btn" type="reset" value="reset" id="reset" />
  <input class="btn" type="submit" value="enviar" />
</form>
</div>
</div>
  <!---->
<br>
<div class="modal" id='contacto'>
<!---->
  <div class="contactar">
  </each:msg/>
    <div class="destacado"><h3 class="blank">Apartamento en </id_sector/><a href="#" class='close'title='cerrar'><i class="fa fa-times-circle-o"></i></a></h3></div>
  <form action="mensajes" method="post" class="contact-form">
    
    
    <div class="formc">
      <p>favor completar el siguiente formulario y Le estaremos contestando a la brevedad posible.</p><br>
      
      <div class="column">
        
        <i class="fa fa-user"></i>
        <input type="text" name="nombre" placeholder="Nombre" class="form-input" required="true">
        
        <i class="fa fa-phone"></i>
        <input type="tel" name="telefono" placeholder="Telefono" class="form-input" required="true">
        
        <i class="fa fa-envelope"></i>
        <input type="email" name="remitente" placeholder="Correo" class="form-input" required="true">
        
        <input type="hidden" name="asunto" value="</titulo/>">
  <input type="hidden" name="id" value="</id_contenido/>">
  
  <a href="#">propiedad_# </titulo/></a>
    </endeach:/>
  <textarea name="mensaje" class="form-input" onkeydown="contador(this.form.mensaje,this.form.remLen,700)" onkeyup="contador(this.form.mensaje,this.form.remLen,700)" placeholder="Mensaje"></textarea>
  
  <input type="text" name="remLen" size="3" maxlength="3" value="700" readonly="">
   <p>escribe hasta 700 caracteres</p>
  </div>
  <a href="#" class="btn" id="cierra">Cerrar</a>
  <input class="btn" type="reset" value="reset" id="reset">
  <button class="btn b" type="submit" value="enviar">enviar</button>


  
  </div>
  
  </form>
</div>
<!---->
</div></div>