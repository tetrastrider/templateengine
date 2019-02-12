<?php
class thumbnail

 {
 var $img;
 function thumbnail($imgfile)
  {
  $this->img["format"] = preg_replace("/.*\.(.*)$/", "\\1", $imgfile);
  $this->img["format"] = strtoupper($this->img["format"]);
  if ($this->img["format"] == "JPG" || $this->img["format"] == "JPEG")
   {
   $this->img["format"] = "JPEG";
   $this->img["src"] = ImageCreateFromJPEG($imgfile);
   }
  elseif ($this->img["format"] == "PNG")
   {
   $this->img["format"] = "PNG";
   $this->img["src"] = ImageCreateFromPNG($imgfile);
   }
  elseif ($this->img["format"] == "GIF")
   {
   $this->img["format"] = "GIF";
   $this->img["src"] = ImageCreateFromGIF($imgfile);
   }
  elseif ($this->img["format"] == "WBMP")
   {
   $this->img["format"] = "WBMP";
   $this->img["src"] = ImageCreateFromWBMP($imgfile);
   }
    else
   {
   echo "Not Supported File";
   exit();
   }
  @$this->img["lebar"] = imagesx($this->img["src"]);
  @$this->img["tinggi"] = imagesy($this->img["src"]);
  $this->img["quality"] = 75;
  }
 function size_height($size = 100)
  {
  $this->img["tinggi_thumb"] = $size;
  @$this->img["lebar_thumb"] = ($this->img["tinggi_thumb"] / $this->img["tinggi"]) * $this->img["lebar"];
  }
 function size_width($size = 100)
  {
  $this->img["lebar_thumb"] = $size;
  @$this->img["tinggi_thumb"] = ($this->img["lebar_thumb"] / $this->img["lebar"]) * $this->img["tinggi"];
  }
 function size_auto($size = 100)
  {
  if ($this->img["lebar"] >= $this->img["tinggi"])
   {
   $this->img["lebar_thumb"] = $size;
   @$this->img["tinggi_thumb"] = ($this->img["lebar_thumb"] / $this->img["lebar"]) * $this->img["tinggi"];
   }
    else
   {
   $this->img["tinggi_thumb"] = $size;
   @$this->img["lebar_thumb"] = ($this->img["tinggi_thumb"] / $this->img["tinggi"]) * $this->img["lebar"];
   }
  }
 function jpeg_quality($quality = 75)
  {
  $this->img["quality"] = $quality;
  }
 function show()
  {
  @Header("Content-Type: image/" . $this->img["format"]);
  $this->img["des"] = ImageCreateTrueColor($this->img["lebar_thumb"], $this->img["tinggi_thumb"]);
  @imagecopyresized($this->img["des"], $this->img["src"], 0, 0, 0, 0, $this->img["lebar_thumb"], $this->img["tinggi_thumb"], $this->img["lebar"], $this->img["tinggi"]);
  if ($this->img["format"] == "JPG" || $this->img["format"] == "JPEG")
   {
   imageJPEG($this->img["des"], "", $this->img["quality"]);
   }
  elseif ($this->img["format"] == "PNG")
   {
   imagePNG($this->img["des"]);
   }
  elseif ($this->img["format"] == "GIF")
   {
   imageGIF($this->img["des"]);
   }
  elseif ($this->img["format"] == "WBMP")
   {
   imageWBMP($this->img["des"]);
   }
  }
 function save($save = "")
  {
  if (empty($save)) $save = strtolower("./thumb." . $this->img["format"]);
  $this->img["des"] = ImageCreateTrueColor($this->img["lebar_thumb"], $this->img["tinggi_thumb"]);
  @imagecopyresized($this->img["des"], $this->img["src"], 0, 0, 0, 0, $this->img["lebar_thumb"], $this->img["tinggi_thumb"], $this->img["lebar"], $this->img["tinggi"]);
  if ($this->img["format"] == "JPG" || $this->img["format"] == "JPEG")
   {
   imageJPEG($this->img["des"], "$save", $this->img["quality"]);
   }
  elseif ($this->img["format"] == "PNG")
   {
   imagePNG($this->img["des"], "$save");
   }
  elseif ($this->img["format"] == "GIF")
   {
   imageGIF($this->img["des"], "$save");
   }
  elseif ($this->img["format"] == "WBMP")
   {
   imageWBMP($this->img["des"], "$save");
   }
  }
 }