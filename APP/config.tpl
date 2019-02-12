<?php
/*************control**********************************/
CONST ERROR = false;//if true pagina de error if false redireccionar
CONST PRROR = 'error';//pagina de error
CONST METODOHOME = 'index';//metodo por defecto
CONST DEV = true;//desarrollo php
CONST AUTOCARGA = TRUE;//AUTO CARGAR CLASES
CONST DEVJS = false;//desarrollo js
CONST JS = 'todo';//global js
CONST HOME  ='inicio';//pagina de inicio
CONST TEMA  ='blanco';//default,simple
CONST MENU =[
['nombre'=>'Inicio&nbsp;<a>|</a>&nbsp;','titulo'=>'Inicio','pagina'=>'inicio'],
['nombre'=>'Nuestras Propiedades&nbsp;<a>|</a>&nbsp;','titulo'=>'Nuestras Propiedades','pagina'=>'propiedades'],
['nombre'=>'Noticias&nbsp;<a>|</a>&nbsp;','titulo'=>'Noticias','pagina'=>'noticias'],
['nombre'=>'Quíenes Somos&nbsp;<a>|</a>&nbsp;','titulo'=>'Quíenes Somos','pagina'=>'acerca'],
['nombre'=>'Servicios&nbsp;<a>|</a>&nbsp;','titulo'=>'Servicios','pagina'=>'servicios'],
['nombre'=>'Publique su Propiedad&nbsp;<a>|</a>&nbsp;','titulo'=>'Publique su Propiedad','pagina'=>'publicar'],
['nombre'=>'Contáctenos','titulo'=>'Contáctenos','pagina'=>'contacto']

];//menuInicio|Quiénes Somos?|Servicios|Nuestras Propiedades|Publique su Propiedad|Contáctenos|Admin|Salir

CONST PRIVADO = ['administrador','publicaciones','registro','portada','editar','realty'];//control acceso
/***************BASE DE DATOS***************************************/
CONST DRIVER = 'mysql';
CONST BD_SERVIDOR = '127.0.0.1';
CONST BD_NOMBRE='realty';
CONST BD_USUARIO = 'root';
CONST BD_PASSWORD = '';
/**************CORREO*********************************/
CONST CORREOLOCAL = 'alexanderbrache@gmail.com';//correo
CONST SUBJECT = 'correo de overclocktech';//asunto
/***********DEFAULT ESTILOS**********************************/
CONST ADMINESTILO = 'admin';
CONST NORMALESTILO = 'estilos';
CONST EXT = '.tpl';//extencion
/**********************************************************/
CONST MODELO = RAIZ.'modelo'.DS;//ruta carpeta modelo
CONST VISTAS = RAIZ.'vistas'.DS;//ruta carpeta vistas
CONST CONTROL = RAIZ.'control'.DS;//ruta carpeta controles
CONST PLUGIN = RAIZ.'plugin'.DS;//plugins
CONST MAQUETAS = RAIZ.'maqueta'.DS;//ruta carpeta maqueta
CONST DOM = 'true';//cargar js desde carpeta dom segun control y metodo
CONST DOMDIR = 'dom';//directorio dom con js
CONST CZ = 'cabeza';//cabezera
CONST PE = 'pie';//pie
CONST CZA = 'acabeza';//cabezera admin
CONST PEA = 'apie';//pie admin
/**********************************************************/
CONST PORTADA = '/imagenes/portada/';//carpeta potada
CONST MINI='/imagenes/full/';//imagenes full
CONST FULL='/imagenes/mini/';//imagenes mini
/**********************************************************/
CONST HASH_KEY = '511977Alexanderjosebrachegancedo';
/*********************************************************/
CONST ENTIDADES = ['&nbsp;' => ' ', '&iexcl;' => '¡', '&cent;' => '¢', '&pound;' => '£', '&curren;' => '¤', '&yen;' => '¥', '&brvbar;' => '¦', '&sect;' => '§', '&uml;' => '¨', '&copy;' => '©', '&ordf;' => 'ª', '&laquo;' => '«', '&not;' => '¬', '&shy;' => '­', '&reg;' => '®', '&macr;' => '¯', '&deg;' => '°', '&plusmn;' => '±', '&sup2;' => '²', '&sup3;' => '³', '&acute;' => '´', '&micro;' => 'µ', '&para;' => '¶', '&middot;' => '·', '&cedil;' => '¸', '&sup1;' => '¹', '&ordm;' => 'º', '&raquo;' => '»', '&frac14;' => '¼', '&frac12;' => '½', '&frac34;' => '¾', '&iquest;' => '¿', '&Agrave;' => 'À', '&Aacute;' => 'Á', '&Acirc;' => 'Â', '&Atilde;' => 'Ã', '&Auml;' => 'Ä', '&Aring;' => 'Å', '&AElig;' => 'Æ', '&Ccedil;' => 'Ç', '&Egrave;' => 'È', '&Eacute;' => 'É', '&Ecirc;' => 'Ê', '&Euml;' => 'Ë', '&Igrave;' => 'Ì', '&Iacute;' => 'Í', '&Icirc;' => 'Î', '&Iuml;' => 'Ï', '&ETH;' => 'Ð', '&Ntilde;' => 'Ñ', '&Ograve;' => 'Ò', '&Oacute;' => 'Ó', '&Ocirc;' => 'Ô', '&Otilde;' => 'Õ', '&Ouml;' => 'Ö', '&times;' => '×', '&Oslash;' => 'Ø', '&Ugrave;' => 'Ù', '&Uacute;' => 'Ú', '&Ucirc;' => 'Û', '&Uuml;' => 'Ü', '&Yacute;' => 'Ý', '&THORN;' => 'Þ', '&szlig;' => 'ß', '&agrave;' => 'à', '&aacute;' => 'á', '&acirc;' => 'â', '&atilde;' => 'ã', '&auml;' => 'ä', '&aring;' => 'å', '&aelig;' => 'æ', '&ccedil;' => 'ç', '&egrave;' => 'è', '&eacute;' => 'é', '&ecirc;' => 'ê', '&euml;' => 'ë', '&igrave;' => 'ì', '&iacute;' => 'í', '&icirc;' => 'î', '&iuml;' => 'ï', '&eth;' => 'ð', '&ntilde;' => 'ñ', '&ograve;' => 'ò', '&oacute;' => 'ó', '&ocirc;' => 'ô', '&otilde;' => 'õ', '&ouml;' => 'ö', '&divide;' => '÷', '&oslash;' => 'ø', '&ugrave;' => 'ù', '&uacute;' => 'ú', '&ucirc;' => 'û', '&uuml;' => 'ü', '&yacute;' => 'ý', '&thorn;' => 'þ', '&yuml;' => 'ÿ', '&OElig;' => 'Œ', '&oelig;' => 'œ', '&Scaron;' => 'Š', '&scaron;' => 'š', '&Yuml;' => 'Ÿ', '&fnof;' => 'ƒ', '&circ;' => 'ˆ', '&tilde;' => '˜', '&Alpha;' => 'Α', '&Beta;' => 'Β', '&Gamma;' => 'Γ', '&Delta;' => 'Δ', '&Epsilon;' => 'Ε', '&Zeta;' => 'Ζ', '&Eta;' => 'Η', '&Theta;' => 'Θ', '&Iota;' => 'Ι', '&Kappa;' => 'Κ', '&Lambda;' => 'Λ', '&Mu;' => 'Μ', '&Nu;' => 'Ν', '&Xi;' => 'Ξ', '&Omicron;' => 'Ο', '&Pi;' => 'Π', '&Rho;' => 'Ρ', '&Sigma;' => 'Σ', '&Tau;' => 'Τ', '&Upsilon;' => 'Υ', '&Phi;' => 'Φ', '&Chi;' => 'Χ', '&Psi;' => 'Ψ', '&Omega;' => 'Ω', '&alpha;' => 'α', '&beta;' => 'β', '&gamma;' => 'γ', '&delta;' => 'δ', '&epsilon;' => 'ε', '&zeta;' => 'ζ', '&eta;' => 'η', '&theta;' => 'θ', '&iota;' => 'ι', '&kappa;' => 'κ', '&lambda;' => 'λ', '&mu;' => 'μ', '&nu;' => 'ν', '&xi;' => 'ξ', '&omicron;' => 'ο', '&pi;' => 'π', '&rho;' => 'ρ', '&sigmaf;' => 'ς', '&sigma;' => 'σ', '&tau;' => 'τ', '&upsilon;' => 'υ', '&phi;' => 'φ', '&chi;' => 'χ', '&psi;' => 'ψ', '&omega;' => 'ω', '&thetasym;' => 'ϑ', '&upsih;' => 'ϒ', '&piv;' => 'ϖ', '&ensp;' => ' ', '&emsp;' => ' ', '&thinsp;' => ' ', '&zwnj;' => '‌', '&zwj;' => '‍', '&lrm;' => '‎', '&rlm;' => '‏', '&ndash;' => '–', '&mdash;' => '—', '&lsquo;' => '‘', '&rsquo;' => '’', '&sbquo;' => '‚', '&ldquo;' => '“', '&rdquo;' => '”', '&bdquo;' => '„', '&dagger;' => '†', '&Dagger;' => '‡', '&bull;' => '•', '&hellip;' => '…', '&permil;' => '‰', '&prime;' => '′', '&Prime;' => '″', '&lsaquo;' => '‹', '&rsaquo;' => '›', '&oline;' => '‾', '&frasl;' => '⁄', '&euro;' => '€', '&image;' => 'ℑ', '&weierp;' => '℘', '&real;' => 'ℜ', '&trade;' => '™', '&alefsym;' => 'ℵ', '&larr;' => '←', '&uarr;' => '↑', '&rarr;' => '→', '&darr;' => '↓', '&harr;' => '↔', '&crarr;' => '↵', '&lArr;' => '⇐', '&uArr;' => '⇑', '&rArr;' => '⇒', '&dArr;' => '⇓', '&hArr;' => '⇔', '&forall;' => '∀', '&part;' => '∂', '&exist;' => '∃', '&empty;' => '∅', '&nabla;' => '∇', '&isin;' => '∈', '&notin;' => '∉', '&ni;' => '∋', '&prod;' => '∏', '&sum;' => '∑', '&minus;' => '−', '&lowast;' => '∗', '&radic;' => '√', '&prop;' => '∝', '&infin;' => '∞', '&ang;' => '∠', '&and;' => '∧', '&or;' => '∨', '&cap;' => '∩', '&cup;' => '∪', '&int;' => '∫', '&there4;' => '∴', '&sim;' => '∼', '&cong;' => '≅', '&asymp;' => '≈', '&ne;' => '≠', '&equiv;' => '≡', '&le;' => '≤', '&ge;' => '≥', '&sub;' => '⊂', '&sup;' => '⊃', '&nsub;' => '⊄', '&sube;' => '⊆', '&supe;' => '⊇', '&oplus;' => '⊕', '&otimes;' => '⊗', '&perp;' => '⊥', '&sdot;' => '⋅', '&lceil;' => '⌈', '&rceil;' => '⌉', '&lfloor;' => '⌊', '&rfloor;' => '⌋', '&lang;' => '〈', '&rang;' => '〉', '&loz;' => '◊', '&spades;' => '♠', '&clubs;' => '♣', '&hearts;' => '♥', '&diams;' => '♦','&Hat;'=>'^','&lbrace;'=>'{','&lcub;'=>'{','&rbrace;'=>'}','&rcub;'=>'}','&QUOT;'=>'"','&quot;'=>'"','&semi;'=>';','&lpar;'=>'(','&rpar;'=>')','&rsqb;'=>']','&rbrack;'=>']','&lsqb;'=>'[','&lbrack;'=>'[','&midast;'=>'*','&midast;'=>'*','&dollar;'=>'$','&amp;'=>'&','&AMP;'=>'&'];
CONST CABEZERAS = [100 => "Continue", 101 => "Switching Protocols", 102 => "Processing", 200 => "OK", 201 => "Created", 202 => "Accepted", 203 => "Non-Authoritative Information", 204 => "No Content", 205 => "Reset Content", 206 => "Partial Content", 207 => "Multi-Status", 300 => "Multiple Choices", 301 => "Moved Permanently", 302 => "Found", 303 => "See Other", 304 => "Not Modified", 305 => "Use Proxy", 306 => "(Unused)", 307 => "Temporary Redirect", 308 => "Permanent Redirect", 400 => "Bad Request", 401 => "Unauthorized", 402 => "Payment Required", 403 => "Forbidden", 404 => "Not Found", 405 => "Method Not Allowed", 406 => "Not Acceptable", 407 => "Proxy Authentication Required", 408 => "Request Timeout", 409 => "Conflict", 410 => "Gone", 411 => "Length Required", 412 => "Precondition Failed", 413 => "Request Entity Too Large", 414 => "Request-URI Too Long", 415 => "Unsupported Media Type", 416 => "Requested Range Not Satisfiable", 417 => "Expectation Failed", 418 => "I'm a teapot", 419 => "Authentication Timeout", 420 => "Enhance Your Calm", 422 => "Unprocessable Entity", 423 => "Locked", 424 => "Failed Dependency", 424 => "Method Failure", 425 => "Unordered Collection", 426 => "Upgrade Required", 428 => "Precondition Required", 429 => "Too Many Requests", 431 => "Request Header Fields Too Large", 444 => "No Response", 449 => "Retry With", 450 => "Blocked by Windows Parental Controls", 451 => "Unavailable For Legal Reasons", 494 => "Request Header Too Large", 495 => "Cert Error", 496 => "No Cert", 497 => "HTTP to HTTPS", 499 => "Client Closed Request", 500 => "Internal Server Error", 501 => "Not Implemented", 502 => "Bad Gateway", 503 => "Service Unavailable", 504 => "Gateway Timeout", 505 => "HTTP Version Not Supported", 506 => "Variant Also Negotiates", 507 => "Insufficient Storage", 508 => "Loop Detected", 509 => "Bandwidth Limit Exceeded", 510 => "Not Extended", 511 => "Network Authentication Required", 598 => "Network read timeout error", 599 => "Network connect timeout error"];
CONST SERVER=['PHP_SELF', 'argv', 'argc', 'GATEWAY_INTERFACE', 'SERVER_ADDR', 'SERVER_NAME', 'SERVER_SOFTWARE', 'SERVER_PROTOCOL', 'REQUEST_METHOD', 'REQUEST_TIME', 'REQUEST_TIME_FLOAT', 'QUERY_STRING', 'DOCUMENT_ROOT', 'HTTP_ACCEPT', 'HTTP_ACCEPT_CHARSET', 'HTTP_ACCEPT_ENCODING', 'HTTP_ACCEPT_LANGUAGE', 'HTTP_CONNECTION', 'HTTP_HOST', 'HTTP_REFERER', 'HTTP_USER_AGENT', 'HTTPS', 'REMOTE_ADDR', 'REMOTE_HOST', 'REMOTE_PORT', 'REMOTE_USER', 'REDIRECT_REMOTE_USER', 'SCRIPT_FILENAME', 'SERVER_ADMIN', 'SERVER_PORT', 'SERVER_SIGNATURE', 'PATH_TRANSLATED', 'SCRIPT_NAME', 'REQUEST_URI', 'PHP_AUTH_DIGEST', 'PHP_AUTH_USER', 'PHP_AUTH_PW', 'AUTH_TYPE', 'PATH_INFO', 'ORIG_PATH_INFO'];

?>
