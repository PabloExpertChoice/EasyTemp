<%@page import="soporte.D"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link rel="shortcut icon" href="images/logo1.ico">

        <title><%= D.TITULO%></title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=all" rel="stylesheet" type="text/css" />
        <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <link href="assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css" />
        <link href="assets/global/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="assets/layouts/layout4/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/layouts/layout4/css/themes/default.min.css" rel="stylesheet" type="text/css" id="style_color" />
        <link href="assets/layouts/layout4/css/custom.min.css" rel="stylesheet" type="text/css" />
        <!--        
                
                <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" href="plugins/font-awesome-4.7.0/css/font-awesome.min.css">
                <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
                <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
                <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
                <link rel="stylesheet" href="plugins/morris/morris.css">
                <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
                <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
                <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
                <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
                <link rel='stylesheet' type="text/css" href="css/awesome-bootstrap-checkbox.css"/>-->
        <style>
            html {
                position: relative;
                min-height: 100%;
            }
            body {
                /* Margin bottom by footer height */
                margin-bottom: 60px;
            }
            .footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                height: 30px;
                background-color: #f5f5f5;
            }

            /* centered columns styles */
            .row-centered {
                text-align:center;
            }
            .col-centered {
                display:inline-block;
                float:none;
                /* reset the text-align */
                text-align:left;
                /* inline-block space fix */
                margin-right:-4px;
            }

        </style>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-yellow sidebar-mini">

        <div class="page-logo" style="text-align: center; background-color: #3B3F51">
            <a href="index.jsp">
                <img src="assets/layouts/layout4/img/logo4.png" alt="logo" class="logo-default" style="margin:0px;margin-top: 10px;height: 60px"/> </a>
            <div class="menu-toggler sidebar-toggler">
                <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
            </div>
        </div>
        <div class="row row-centered" style="padding: 10px;">
            <div class="col-md-3 col-xs-12 col-centered" style="margin: 0 auto;">
                <form role="form" action="javascript:;">
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-10 col-xs-10">
                                <label for="ejemplo_email_1">Rut</label>
                                <input type="text" class="form-control" id="txtRutEmpresa" autocomplete="off" maxlength="10" onkeyup="formatoNumero(this);">
                            </div>
                            <div class="col-md-2 col-xs-2">
                                <label for="ejemplo_email_1">Dv</label>
                                <input type="text" class="form-control" id="txtDvEmpresa" autocomplete="off" style="text-align: center;padding: 0px;" maxlength="1">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="txtNomUsuario">Nombre usuario administrador</label>
                        <input type="text" class="form-control" id="txtNomUsuario" >
                    </div>
                    <div class="form-group">
                        <label for="txtApeUsuario">Apellido usuario administrador</label>
                        <input type="text" class="form-control" id="txtApeUsuario" >
                    </div>
                    <div class="form-group">
                        <label for="txtEmailCorporativo">Correo corporativo</label>
                        <input type="email" class="form-control" id="txtEmailCorporativo" >
                    </div>
                    <div class="form-group">
                        <label for="txtEmailCorporativo2">Repetir correo corporativo</label>
                        <input type="email" class="form-control" id="txtEmailCorporativo2" >
                    </div>
                    <div class="form-group" style="cursor: pointer;" onclick="verTerminos()">
                        <a><i class="fa fa-file-text-o"></i> Ver condiciones de uso</a>
                    </div>
                    <div class="checkbox checkbox-primary">
                        <input id="chboxTerminos" type="checkbox" onchange="return validarContrato(this)">
                        <label for="chboxTerminos">
                            Aceptar las condiciones de uso
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary" id="btnEnviar">Registrar</button>
                </form>
            </div>
        </div>

        


        <div class="modal" id="modalTerminos">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-body" id="modalTerminos-body">
                        <div class="row">
                            <div class="col-xs-12" style="overflow-y: scroll; height: 350px;" id="contrato">
                                <center><h3>CONTRATO POR ADHESIÓN DEL SITIO WEB Y PLATAFORMA ONE</h3></center>
                                <p align="justify">El presente contrato contiene los términos y condiciones para el acceso y uso del sitio web de www.chdoccc.cl y de los servicios ofrecidos en su plataforma (ONE). Se insta a quien quiera hacer uso del sitio y plataforma a leer detenidamente los términos y condiciones establecidos en las cláusulas siguientes y que los entiende a cabalidad. En caso contrario, le rogamos abstenerse de ingresar sus datos y utilizar los servicios disponibles en la Plataforma One.</p>
                                <p align="justify">El contrato tendrá efecto caso a caso, entre CHDOCCC, Rol Único Tributario número 76.136.746-3, en adelante también ?E Capital?, por una parte, y por la otra, el Usuario que suscribe el mismo, de acuerdo al párrafo precedente y con las cláusulas que a continuación se indican:</p>
                                <p align="justify"><b>PRIMERO:</b> Antecedentes. CHDOCCC, es una empresa que se dedica a ofrecer apoyo financiero a PYME a través de distintos productos de crédito, a la medida de sus las necesidades, otorgando soluciones en tiempo y forma, para facilitar su crecimiento y desarrollo. Es en razón de esto y siempre con el afán de innovar y mejorar sus servicios, es que CHODCCC ha decidido desarrollar una plataforma web que logra hacer más expedito el intercambio de información con sus clientes y ser un canal acorde a los nuevos tiempos. Con esta plataforma, el usuario podrá cargar sus antecedentes legales, tributarios y comerciales, tanto para persona natural como jurídica, los cuales serán analizados por One y en virtud de ese análisis ofrecerá al Usuario una simulación de la operación, con todas las especificaciones comerciales y legales respectivas. En el caso que el Usuario decida aceptar la simulación, deberá manifestar su voluntad haciendo click en el botón ?ACEPTAR SIMULACIÓN?. Con esto, se da inicio al proceso de operación debiendo el Usuario Representante firmar electrónicamente el ?Contrato Marco? a través de la Plataforma y en virtud a lo establecido en la ley número 19.799 , sobre Documentos Electrónicos, Firma Electrónica y Servicios, en especial en el artículo número 2 letras d), f) e i), y artículo número 3 de la misma. Posteriormente el Usuario Representante deberá ceder la o las facturas electrónicas a través del Servicio de Impuestos Internos en favor de CHDOCCC. debiendo enviar los respectivos AEC, exclusivamente en formato ?.XML?, junto con el RPETC en formato ?.TXT?. El procedimiento recién descrito será regulado en detalle en la cláusula Décimo Tercera del presente contrato.</p>

                                <p align="justify"><b>SEGUNDO:</b> Conceptos. Para todos los efectos del presente Contrato de Uso, Términos y Condiciones del Sitio Web y Plataforma E Capital, y de los demás Acuerdos Específicos o Puntuales, se entenderá que las palabras que a continuación se definen, tendrán el significado, sentido interpretación que para cada una se señala. CONCEPTOS:</p>
                                <ul>
                                    <li><u>One:</u> es la sociedad anónima cerrada CHDOCCC, Rol Único Tributario número 76.136.746-3.</li>
                                    <li><u>Plataforma:</u> significa la plataforma web que es de propiedad y que opera bajo el control de E Capital, que se encuentra disponible en la dirección electrónica www.chdoccc.cl, además los servicios prestados por E Capital a través de la misma, sus los contenidos disponibles, actuales y los que se agreguen y modifiquen en el transcurso del tiempo.</li>
                                    <li><u>Contrato:</u> es el presente contrato denominado ?Contrato de Uso, Términos y Condiciones del Sitio Web y Plataforma E Capital? aceptado por el Usuario al registrarse en la Plataforma y que tiene efectos entre E Capital y el Usuario suscriptor del mismo, que establece y regula los términos y condiciones de uso del sitio web o Plataforma.</li>
                                    <li><u>Plataforma:</u> se entiende por esta, la sección o módulo que se encuentra en el sitio web de CHDOCCC (www.chdoccc.cl), y que tiene como finalidad ofrecer los servicios de CHDOCCC a los Usuarios que se registren en ella, comprendiendo desde el enrolamiento y onboarding, perfiles de usuarios, carga de antecedentes legales y tributarios, documentación de los servicios, indicadores económicos, simulaciones de operación, hasta la posibilidad de realizar operaciones de financiamiento. </li>
                                    <li><u>Documentación:</u> se trata de todos los documentos que One proporcione a través de su Plataforma y que contienen una descripción de los servicios, Contrato Marco, Acuerdos Específicos o Puntuales, condiciones comerciales, las instrucciones para el Usuario y cualquier otro documento o información que se encuentre en la Plataforma.</li>
                                    <li><u>Documentos Electrónicos:</u> se entenderá por tal, lo establecido en la Ley 19.799 de la República, en el artículo 2 letra d), es decir, ?toda representación de un hecho, imagen o idea que sea creada, enviada, comunicada o recibida por medios electrónicos y almacenada de un modo idóneo para permitir su uso posterior?.</li>
                                    <li><u>Factura Electrónica:</u> el Servicio de Impuestos Interno define a las Facturas Electrónicas como ?un documento digital legalmente válido como medio de respaldo de las operaciones comerciales entre contribuyentes y, por lo tanto, reemplaza a las facturas tradicionales de papel?. En este sentido, de forma complementaria se entiende por ta, un documento que sirve para describir el costo de los servicios y desglosar los impuestos correspondientes a pagar. Sustituye, según las disposiciones legales correspondientes, a las facturas tradicionales en papel y garantiza, entre otras cosas, la autenticidad de su origen y la integridad de su contenido. La Factura Electrónica es, por tanto, la versión digital de las facturas tradicionales en soporte papel y debe ser funcional y legalmente equivalente a estas últimas. Por su propia naturaleza, las facturas electrónicas pueden almacenarse, gestionarse e intercambiarse por medios electrónicos o digitales.</li>
                                    <li><u>Contenidos:</u> es todo el material de la Plataforma, incluyendo a modo de ejemplo y no de forma taxativa los textos, datos, diseños, logotipos, artículos, formularios, documentos, fotos, imágenes, contenidos en general y cualquier otra información contenida en el sitio web.
                                        <u>Enrolamiento:</u> es el proceso por el cual un Usuario No Registrado procede a completar satisfactoriamente el procedimiento de inscripción en la Plataforma, obteniendo un Nombre de Usuario y una Contraseña, los que a su vez lo habilitarán para acceder a ciertos y determinados contenidos y para utilizar ciertos y determinados servicios disponibles en la Plataforma. Para esto el Usuario de ingresar los siguientes datos:
                                        Persona Natural: su rol único tributario (Rut de usuario o cédula de identidad), dirección de correo electrónico, número de teléfono fijo o teléfono móvil y la contraseña que estime conveniente bajo ciertos estándares que estime E Capital.
                                        Persona Jurídica: rol único tributario de la sociedad y del Usuario Representante, dirección de correo electrónico, número de teléfono fijo o teléfono móvil y la contraseña que estime conveniente bajo ciertos estándares que estime E Capital.
                                    </li>
                                    <li>
                                        <u>OnBoarding:</u> es el proceso mediante el cual el Usuario Registrado carga los Documentos Electrónicos necesarios para operar. Debiendo distinguir entre
                                        <ul>
                                            <li>Persona Natural: copia por ambos lados de la cédula nacional de identidad (también la de extranjeros en caso de serlo) y envió de carpeta tributaria a través del Servicio de Impuestos Internos y copia de las facturas electrónicas que Usuario Representante quiera ceder en favor de E Capital (sin cesión previa);</li>
                                            <li>Persona Jurídica: copia por ambos lados de rol único tributario de la sociedad, copia de la(s) cedula(s) nacional de identidad del(os) representante(s) de la sociedad, envió de carpeta tributaria a través del Servicio de Impuestos Internos, copia de las facturas electrónicas que el Usuario Representante quiera ceder en favor de E Capital (sin cesión previa). Adicionalmente E Capital puede solicitar otros antecedentes como, siendo una enumeración no taxativa, la escritura de Constitución de sociedad, extracto de la escritura de Constitución debidamente publicado en el Diario Oficial e inscrito en el Conservador de Bienes Raíces respectivo con su certificado de anotaciones marginales y vigencia no superior a 60 días, certificado de vigencia de los poderes, que no hayan sido revocados, en el caso que consten de forma independiente.</li>
                                        </ul>
                                    <li>Usuario: se entiende por Usuario, toda persona natural o jurídica que ingresa a la Plataforma, que navega utilizando los servicios y la información contenida en ella. El Usuario es aquel que cuenta con ?Nombre de Usuario? y ?Contraseña?. A su vez, cabe distinguir que el Usuario puede ser un Usuario No Registrado o bien un Usuario Registrado (Usuario Representante y Usuario Designado).</li>
                                    <li>Perfil de Usuario: es un módulo que se encuentra en la Plataforma, donde se encuentra la información asociada al Usuario Registrado junto a la información de los Usuarios Designados, en el caso que los haya.</li>
                                    <li>Nombre de Usuario: es el nombre que identifica al Usuario Registrado, ya sea el nombre de la persona natural o la razón social de la persona jurídica que desea financiamiento a través de los servicios ofrecidos en la Plataforma. . </li>
                                    <li>Contraseña: es la combinación alfanumérica, designada por el Usuario al registrarse, la cual es requerida para autentificarse o iniciar sesión en esta.</li>
                                    <li>Usuario Registrado: es, indistintamente, cualquier Usuario que ha completado y confirmado exitosamente el proceso de Registro del Usuario en el sitio web www.E Capital.cl, y que, por tanto, cuenta con un Nombre de Usuario y Contraseña para autentificarse en la Plataforma.</li>
                                    <li>Usuario No Registrado: es aquel Usuario que no ha completado con éxito el proceso de Registro del Usuario, y que por tanto, no posee un Nombre de Usuario y Contraseña. El Usuario No Registrado puede navegar por contenidos del sitio web, no obstante, la navegación por ciertos contenidos y secciones se encuentran reservadas únicamente para Usuarios Registrados en la Plataforma. Del mismo modo los Usuarios que no confirmen el correo de enrolamiento en el plazo de 8 horas quedarán como Usuarios No Registrados para todos los efectos del presente instrumento. </li>
                                    <li>Usuario Representante: Persona natural que, tras un estudio de los antecedentes tributarios y legales de sociedad acredite que cuenta con las facultades de suscribir con E Capital la utilización de los servicios, otorgar acceso a estos a otros Usuarios y administrar la información de Documentos Electrónicos y la facturación electrónica de la misma. El o los Usuario(s) Representante(s) es (son) quien(es) deberá(n) concurrir a la firma del Contrato Marco.</li>
                                    <li>Usuario Designado: Persona natural, autorizada por el Usuario Representante, para administrar toda la funcionalidad que otorga el servicio. Crear nuevos usuarios, asignarles permisos sobre funcionalidades y realizar cualquier otra actividad de administración sobre el servicio en el contexto de la o las empresas en que este designado.</li>
                                    <li>Acuerdos Específicos o Puntuales: son el conjunto de términos y condiciones específicas presentadas a los Usuarios Registrados, adicionales a las contenidas en el presente Contrato y que se entienden pertenecerle; asimismo, se entenderán formar parte del Contrato Marco firmado por las partes. Para estos efectos la simulación de la operación se entenderá como Acuerdo Específico o Puntual.</li>
                                    <li>Cuenta: es aquella a la que el Usuario accede al autentificarse, instancia que corresponde a la página personal del Usuario Registrado en la Plataforma. Su Cuenta le permite acceder a distintos servicios, entre los que se encuentran el Perfil de Usuario, registro de eventos, documentos legales, Documentos Electrónicos, entre otros.</li>
                                    <li>Contrato Marco: es el contrato de factoring que regula de forma genérica la relación entre el Usuario Registrado y E Capital, junto con incluir un mandato en favor de E Capital para llenar el pagaré respectivo. </li>
                                </ul>

                                <p align="justify"><b>TERCERO:</b> Aspectos Generales. El Usuario acepta usar el Contenido y la Plataforma sólo con propósitos que se enmarquen dentro del marco legal, en conformidad al orden público y según los términos y condiciones del presente Contrato, así como también sujeto a los términos y condiciones específicas a cada servicio contenidos en los Acuerdos Específicos o Puntuales. Se deja constancia que E Capital no asegura que los contenidos y los servicios prestados a través de la Plataforma son apropiados fuera del país, por tanto, si el Usuario accede a la Plataforma desde fuera de Chile, el Usuario comprende y acepta que el acceso y su uso es bajo su responsabilidad y éste debe asegurarse de cumplir con las leyes y normas específicas de su jurisdicción.</p>
                                <p align="justify"><b>CUARTO:</b> Requisitos Para Ser Usuario. La finalidad de la Plataforma es otorgar financiamiento de forma rápida a los Usuarios Registrados en esta, por tanto para poder acceder a ser Usuario Registrado de la Plataforma, se deben presentar un mínimo de antecedentes:
                                <p align="justify">Persona Natural: cédula nacional de identidad, ser mayor de 18 años de edad y su respectiva carpeta tributaria enviada a través del Servicio de Impuestos Internos.</p>
                                <p align="justify">Persona Jurídica: rol único tributario de la sociedad, cédula nacional de identidad del(os) representante(s) y carpeta tributaria del Servicio de Impuestos Internos; adicionalmente E Capital podrá solicitar más antecedentes, tales como: escritura de Constitución, con su extracto publicado en el Diario Oficial e inscrito en el Conservador de Bienes Raíces respectivo, y certificado del extracto de Constitución con anotaciones marginales vigente (de fecha no superior a 60 días a la presentación), y todos los otros que estime conveniente. En el momento que el cliente decida operar, aceptando la simulación, deberá ingresar los datos del pagador de la factura (razón social o nombre completo, correo electrónico institucional, número de teléfono fijo de la empresa o persona natural), y de la cuenta bancaria a la que se le depositarán los fondos de la operación. Esta cuenta debe ser a nombre de la persona natural o de empresa o persona jurídica. En el caso que los datos de la cuenta bancaria no correspondan con los de la empresa o persona natural, el cliente se será el único y exclusivo responsable de los perjuicios ocasionados a la empresa y/ terceros, quedando E Capital absolutamente exenta de responsabilidad alguna por este concepto. A su vez, cualquier error de ingreso que el Usuario cometa respecto a los datos de la factura, del cesionario y/o de la cuenta bancaria a la que se transferirá los fondos de la operación, serán de exclusiva responsabilidad del Usuario, quedando E Capital exenta de cualquier responsabilidad que pudiese acarrear dicho error.</p>

                                <p align="justify"><b>QUINTO:</b> Aceptación. El Usuario manifestará su absoluta conformidad reconociendo y declarando haber leído, comprendido y aceptado íntegramente el texto del Contrato de Uso, Términos y Condiciones del Sitio Web y Plataforma E CAPITAL en  todas sus partes, aceptando ser regido por todos sus términos y condiciones, y estando sujeto a las leyes y regulaciones aplicables. Una vez pulsado el botón ?Acepto? este Contrato será vinculante y obligará a las partes. Si el Usuario no acepta el presente Contrato, deberá abstenerse de acceder, navegar y usar la Plataforma inmediatamente. Asimismo, no podrá hacer uso de sus servicios ni de la información disponible en el sitio web.</p>

                                <p align="justify"><b>SEXTO:</b> Acuerdos Específicos o Puntuales. Para que el Usuario Registrado pueda acceder y/o hacer uso de ciertos módulos específicos del sitio web y de la Plataforma, E Capital podrá, según estime, requerir al Usuario la aceptación de ciertos términos y condiciones específicas adicionales a las contenidas en el presente Contrato, lo cual se informará oportunamente al Usuario según proceda. Si el Usuario acepta dichas condiciones específicas, las mismas resultarán vinculantes para el Usuario y se entenderán ser parte integrante del presente Contrato y del Contrato Marco, y pudiendo, según los casos, sustituir, completar y/o modificar el presente instrumento. 
                                    En el caso que E Capital requiera que la aceptación de los términos y condiciones propuestos en los Acuerdos Específicos o Puntuales, descritas en el inciso anterior, al Usuario y este se negara o no consintiera, E Capital se encontrará plenamente facultado para denegar a dicho Usuario el acceso a secciones específicas o módulos relevantes de la Plataforma y de las páginas web que lo conforman. 
                                    En la eventualidad que el cliente en una operación puntual quisiera transferir los fondos de la operación a una cuenta distinta a la de la empresa en cuestión, deberá indicar dicha instrucción de depósito a través de un Acuerdo Específico o Puntual, donde instruirá a E Capital a transferir los fondos a una cuenta bancaria determinada. La responsabilidad por dicha instrucción y/o algún error al indicar la cuenta bancaria, será en el mismo tenor que lo establecido en la cláusula Cuarta.</p>

                                <p align="justify">
                                    <b>SÉPTIMO:</b> Modificaciones. Por el presente instrumento se deja constancia que E Capital podrá en cualquier momento y las veces que lo estime conveniente, agregar, corregir, modificar, eliminar y/o actualizar los términos y condiciones de este Contrato, debiendo notificar oportunamente al Usuario Registrado de las modificaciones que se desee efectuar al Contrato a través de la publicación de una notificación dirigida al Usuario cuando este intente acceder al sitio web. Los cambios que se hagan a este Contrato se harán efectivos a partir del momento en que el Usuario acepte las referidas modificaciones. A este respecto, se deja expresa constancia de que E Capital podrá cambiar y/o restringir el acceso a todo o a una parte de la Plataforma sin previa notificación al Usuario y sin responsabilidad alguna para E Capital en caso que el Usuario estime que se le haya generado un daño a partir de ese cambio o restricción. A su vez, E Capital tendrá la facultad de condicionar el acceso a ciertas secciones específicas o módulos de la Plataforma a la aceptación de los Acuerdos Específicos o Puntuales relevantes, de conformidad con lo expresado en la cláusula precedente.
                                    En el evento que ocurra un conflicto entre las disposiciones del presente Contrato, y una o más de las contenidos en uno o más de los Acuerdos Específicos o Puntuales, se entenderá que las condiciones y términos contenidas en estos últimos, primarán por sobre las condiciones y términos generales de este Contrato, para dichos módulos o secciones específicas.
                                </p>

                                <p align="justify"><b>OCTAVO:</b> Autonomía de Las Cláusulas. En el caso que alguna cláusula de este Contrato fuese declarada como inválida, inexistente, inoponible y/o de cualquier modo ineficaz por un tribunal competente de la República, las demás las cláusulas de este Contrato y los derechos y obligaciones que de ellas emanan, mantendrán su plena vigencia y validez.</p>

                                <p align="justify">
                                    <b>NOVENO:</b> Término Del Contrato. Este Contrato se encontrará vigente y tendrá duración indefinida mientras E Capital mantenga la Plataforma operativa en su sitio web. A su vez, E Capital se reserva el derecho de terminar de ofrecer la Plataforma, sus contenidos y los servicios que se proveen a través de esta, en cualquier momento, sin perjuicio del deber de realizar la debida notificación a los Usuarios Registrados. No obstante lo anterior, E Capital está facultado para poner término inmediato al Contrato en caso de decidir, a su sola discreción, desactivar la cuenta de un Usuario Registrado, en cualquiera de los siguientes casos:
                                </p>
                                <ol>
                                    <li>En el evento de incurrir el Usuario en un uso no autorizado del Contenido de la Plataforma de conformidad con lo dispuesto la cláusula Décimo Primera denominada Prohibiciones del presente Contrato.</li>
                                    <li>En caso de comprobar que alguna de las informaciones suministradas por el Usuario fuese falsa, incompleta, inexacta, errónea, y/o de cualquier forma poco fidedigna. </li>
                                    <li>En el evento de incurrir el Usuario en alguna infracción grave de sus obligaciones bajo el Contrato y/o los Acuerdos Específicos.</li>
                                </ol>
                                <p align="justify">Cabe precisar que en el caso que el Usuario incurra en alguna de las acciones recién mencionadas, se entenderá que el Contrato y el Registro de Usuario han expirado desde el momento en que E Capital así lo notifique al Usuario mediante correo electrónico dirigido a la dirección registrada por éste en la Plataforma. Sin embargo, subsistirán y se mantendrán vigentes aun después del término del Contrato las cláusulas que tratan sobre, Responsabilidades y Exclusiones, (iv) Ley Aplicable y Tribunal competente, (v) y, en general cualquier otra materia que por su naturaleza perdure a pesar del término de este Contrato. Además el Usuario Registrado no podrá modificar parte alguna de los contenidos o de la totalidad de estos, que se encuentren publicados en la Plataforma.</p>
                                <p align="justify">En conformidad con lo dispuesto en la letra b) del artículo 3 bis de la Ley de Protección al Consumidor, se deja expresa constancia en presente instrumento que el Usuario no podrá retractarse del presente Contrato, sus anexos y/o Acuerdos Específicos o Puntuales. En el caso que el Usuario desee poner término al presente Contrato, deberá poner en conocimiento a E Capital a través de un correo electrónico enviado por el Usuario Representante de la persona jurídica o del correo ingresado por el Usuario que es persona natural. </p>

                                <p align="justify"><b>DÉCIMO:</b> Responsabilidad del Usuario. Por el presente instrumento el Usuario se obliga expresamente a que toda la información que proporcione a E Capital, ya sea a través de los formularios de Registro de Usuario y/o de otros medios que E Capital haya definido con el Usuario debe ser absolutamente fidedigna, veraz y comprobable. Del mismo modo, el Usuario Registrado es responsable exclusivo de mantener su información personal siempre actualizada, tanto como persona natural o jurídica. El Usuario, a través de la aceptación de este contrato, garantiza a E Capital la autenticidad de todos aquellos datos proporcionados a la Plataforma, siendo el Usuario el único responsable por los daños y perjuicios generados por cualquier inexactitud en la información que pudieran recaer sobre E Capital, sobre sí mismo y/o sobre terceros. A su vez, se deja establecido en el presente instrumento que E Capital no se hace responsable por las faltas en que incurra el Usuario Registrado respecto de ésta cláusula. </p>

                                <p align="justify"><b>DÉCIMO PRIMERO:</b> Prohibiciones. El Usuario se compromete en este acto a no crear cuentas o utilizar la Plataforma para proporcionar datos falsos. En este sentido el Usuario se compromete a que el Contenido no podrá ser modificado, reproducido, copiado, republicado, reutilizado, redistribuido, expuesto o posteado por el Usuario en ninguna forma y bajo ningún medio, incluyendo a modo de ejemplo y sin que la enumeración sea taxativa, grabaciones, medios electrónicos, fotocopias, mecánicos, u otros, sin la previa autorización por escrito por parte de E Capital. En efecto, se deja expresamente establecido que ningún tipo de información que se encuentre en la Plataforma podrá ser utilizado por terceros sin la previa autorización escrita de E Capital y para cada vez que se requieran.
                                    El Usuario Registrado exclusivamente para fines de uso personal y sólo en relación y en función a un correcto uso para el Usuario de los servicios que le provee la Plataforma podrá acceder, descargar, imprimir cualquier contenido. 
                                    El Usuario Registrado no podrá reproducir un sitio ?espejo? del sitio web de E Capital o de parte de éste, mantenerlo en otros servidores ni publicarlos en Internet.
                                    Independiente de las prohibiciones establecidas en la presente cláusula, el Usuario se obliga a abstenerse de recopilar desde la Plataforma datos con finalidad publicitaria. Así como transmitir desde la Plataforma, cadenas de mensajes o cualquier otro tipo de mensaje interno y/o correo electrónico masivo no solicitado, postear, subir, enviar por email o poner disponible cualquier material promocional o publicitario y/o cualquier tipo de comunicación con fines de venta u otros fines comerciales, que no fue solicitado y que no cuenta con la previa autorización de los terceros afectados.
                                    También se prohíbe expresamente que el Usuario Registrado, No Registrado, Usuario Representante Usuario Designado directa o indirectamente intenten hackear los sistemas del y Plataforma para acceder a sus bases de datos y obtener listas de distribución de emails, para luego realizar alguna de las acciones establecidas en esta cláusula y/o para poner estas listas de distribución a disposición de terceros a través de la cesión o venta de las mismas. Además se prohíbe cualquier uso no autorizado de los contenidos de la Plataforma, lo que constituirá una violación de las leyes y regulaciones en las materias de derechos de autor y de propiedad intelectual. Pudiendo E Capital eliminar el perfil de Usuario y pudiendo poner término al presente contrato. Sin perjuicio del derecho de ejercer todas las acciones pertinentes, tanto civiles como penales, destinadas al resguardar los legítimos derechos de propiedad intelectual de E Capital. 

                                <p align="justify"><b>DÉCIMO SEGUNDO:</b> Fuerza Mayor. Las Partes no se hacen responsables de ninguna pérdida o daño sufrido por la otra parte, causado por un retraso o un error en el cumplimiento de las disposiciones incluidas en el presente Contrato, siempre y cuando dicho retraso o error sea causado por un impedimento que esté más allá del control de la parte en cuestión y que, por motivos razonables, no se pudiese tener en cuenta en el momento de firmar el Contrato, o cuyas consecuencias no se hayan podido evitar o superar.<p>

                                <p align="justify"><b>DÉCIMO TERCERO:</b> Procedimiento de Operación. Una vez que el Usuario haya realizado satisfactoriamente el proceso de enrolamiento y on boarding, el cual será analizado y validado por E Capital, podrá proceder realizar una operación. Para esto E Capital le ofertará una simulación de operación, la cual contendrá de forma clara y completa todos cobros, tasas, montos, fechas de vencimiento, deudor o pagador de la factura electrónica, cuentas bancarias para transferencias y todos los demás datos y pormenores acordes a la operación. Esta simulación tendrá una vigencia hasta las 23:59 horas del día en que se envíe. Debiendo el usuario Registrado volver a solicitar una simulación en el caso que esta haya expirado. En el caso que el Usuario decida aceptar la simulación, deberá manifestar su voluntad haciendo** click en el botón ?ACEPTAR SIMULACIÓN?. Con esto, se da inicio al proceso de operación debiendo el Usuario Representante firmar electrónicamente el ?Contrato Marco? a través de la Plataforma y en virtud a lo establecido en la Ley número 19.799, relativa a ?Documentos Electrónicos, Firma Electrónica y Servicios de Certificación de dicha Firma?, en especial en el artículo número 2 letras d), f) e i), el artículo número 3 y el artículo número 5 numeral 2 inciso final de la misma Ley. Posteriormente el Usuario Representante deberá:</p>
                                <ol>
                                    <li>Previa lectura completa e integra del Contrato Marco por parte del Usuario Representante, este procederá a Firmar Electrónicamente el Contrato Marco a través de la Plataforma, donde consiente expresamente la aceptación, conformidad y suscripción del mismo. Una vez que el Usuario Representante haya firmado y manifestado su más absoluto consentimiento y suscripción del Contrato Marco, E Capital enviará una copia de este Documento Electrónico para que el usuario pueda acceder a él en cualquier momento y cuando lo estime conveniente.</li>
                                    <li>El Usuario Representante junto con proceder a la firma establecida en el número precedente de esta cláusula, deberá firmar y aceptar el Acuerdo Específico o Particular referente a la oferta de simulación de operación. </li>
                                    <li>Ceder la o las facturas electrónicas a través del Servicio de Impuestos Internos en favor de CHDOCCC. </li>
                                    <li>Enviar los respectivos AEC (Archivo Electrónico de Cesión), exclusivamente en formato ?.XML?, junto con el RPETC (Registro Público Electrónico de Transferencia de Crédito) en formato ?.TXT?, y las cesión de las facturas en formato ?.PDF? con timbre de aprobación u otro tipo de anotación, según establecido por el pagador en sus proceso de pago, esto será necesario exclusivamente en los caso que la factura electrónica no cuente con  acuse de recibo electrónico en formato ?.XML? o en los caso que la factura electrónica tenga más de 8 días corridos de ?maduración?, entendiendo por tal, que hay 8 días corridos desde la recepción de la factura para reclamar en contra de su contenido. O bien, en el plazo que acuerden las partes, que no podrá exceder de los 30 días.</li>
                                    <li>E Capital en el caso de que todos los pasos anteriores se haya realizado satisfactoriamente comenzará a cursar la operación, debiendo realizar el desembolso o transferencia bancaria por los montos estipulados en la simulación, poniendo en conocimiento al Usuario que está cursada la operación. </li>
                                    <li>Una vez que el Usuario haya realizado exitosamente la primera operación, y en el caso que decida realizar operaciones futuras, no deberá volver a firmar el Contrato Marco, solo debiendo realizar lo establecido en los numerales 2, 3 y 4 de esta cláusula por cada operación.</li>
                                </ol>

                                <p align="justify"><b>DÉCIMO CUARTO:</b> Exclusión de Responsabilidad. Por el presente instrumento el Usuario reconoce y declara que su acceso, enrolamiento y onboarding, carga de antecedentes y todas la otras acciones que realice en la Plataforma, lo efectúa por su propia cuenta y riesgo, y que en consecuencia, y sin que la siguiente enumeración sea taxativa, sino que meramente ejemplar, E Capital no se responsabiliza de forma alguna por cualquier erros, omisión e inexactitudes en contenidos publicados por sus Usuarios Registrados. A su vez, cualquier virus, entendiendo por tal, a un objeto o dispositivo incluido en cualquier programa informático, código o archivo que puede perjudicar o, en forma alguna, afectar negativamente al funcionamiento de un programa informático, servicio de telecomunicaciones, material o red, equipo , o cualquier otro servicio o dispositivo; asimismo afectar negativamente al acceso o al funcionamiento de un programa o conjunto de datos, o afectar a la fiabilidad de cualquier programa o información (mediante la reestructuración, alteración o eliminación del programa o de la información en su totalidad o en parte o en forma alguna); o afectar negativamente a la utilización que hace el usuario, a través de gusanos, troyanos, virus y otros objetos o dispositivos similares, que pudiera infectar el equipo del Usuario producto del acceso y/o utilización de la Plataforma por parte del Usuario Registrado, por tanto, el Usuario comprende que el uso de este Sitio está sujeto a su propio riesgo. En virtud de lo anterior, si el uso dela Plataforma deriva en que el Usuario deba incurrir en reparaciones y/o correcciones, contratando algún servicio de mantención de sus equipos computacionales, estos costos deberán ser asumidos por el Usuario, sin que E Capital tenga responsabilidad alguna en esta materia. En este sentido expresamente se deja constancia de que E Capital se excluye de cualquier responsabilidad por los daños y perjuicios de cualquier naturaleza que puedan derivarse a la presencia de virus u otros elementos informáticos que pudieran producir alteraciones en los sistemas, documentos electrónicos y/o perfiles de los Usuarios.</p>

                                <p align="justify">E Capital declara que el sistema puede eventualmente no encontrarse disponible debido a dificultades técnicas, fallas de internet o razones ajenas a este, por lo que el Usuario comprende que E Capital no garantiza el acceso continuo e ininterrumpido delos servicios ofrecidos en la Plataforma y/o de módulos del mismo. En caso de interrupción del servicio, E Capital se compromete a que hará todo lo que esté a su alcance para restablecer la operatividad de la Plataforma y sus servicios a la brevedad, sin que de ello pudiera derivarse ningún tipo de obligación ni responsabilidad alguna para E Capital. En síntesis, E Capital se excluye de cualquier responsabilidad por los daños y/o perjuicios de cualquier naturaleza que puedan derivarse a la falta de disponibilidad y continuidad del funcionamiento del sitio y de los servicios ofrecidos en la Plataforma.</p>
                                <p align="justify">El Usuario comprende y acepta expresamente que E Capital tiene el derecho de monitorear la Plataforma de manera electrónica, las veces que estime conveniente, y hacer seguimiento a cualquier información y/o conductas sospechosas de Usuarios, según su propio criterio para asegurar la correcta operatividad de la Plataforma y para protegerse a sí mismo y a otros Usuarios de esta, respecto de conductas que podrían ser fraudulentas y/o atentatorias contra los derechos de los Usuarios. </p>
                                <p align="justify">Queda absolutamente prohibido que algún Usuario incurra o trate de suplantar la identidad de otra persona natural o Usuario, ergo, que lo Usuarios utilicen datos personales de terceros para crear cuentas en la Plataforma. En este sentido, E Capital se reserva el derecho de verificar los perfiles de manera aleatoria, verificando la veracidad de la información. En caso de detectar fraude o intento de este, E Capital podrá cancelar la cuenta y tomar las acciones que estime conveniente según la legislación vigente.</p>
                                <p align="justify">Queda absolutamente establecido que bajo ninguna circunstancia los colaboradores, directores y los representantes de E Capital serán responsables por cualquier daño generado a los Usuarios a partir del uso de la Plataforma. Los colaboradores, directores y representantes de E Capital no serán responsables bajo ninguna circunstancia de los daños generados por errores, omisiones, interrupciones, retrasos en la información, transmisión, virus computacionales, fallas de sistemas y otros problemas que se produzcan en la Plataforma.</p>
                                <p align="justify">Por tanto, de todos los casos enumerados previamente, se entiende que el Usuario no podrá imputarle a E Capital responsabilidad legal alguna ni exigir indemnizaciones ni pagos por daño emergente y/o lucro cesante, en virtud de perjuicios derivados de los casos enumerados en esta cláusula.</p>

                                <p align="justify"><b>DÉCIMO QUINTO:</b> Políticas de Privacidad. El Usuario Registrado se obliga a custodiar su Nombre de Usuario y Contraseña, los cuales son única y exclusivamente de su responsabilidad y uso exclusivo, no debiendo entregar esta información a terceros y debiendo realizar un correcto uso de las mismas. Por lo cual, E Capital no se hace responsable de los daños ocasionados al Usuario por mal uso de terceros del Nombre de Usuario y Contraseña. En caso de detectar mal uso de su Nombre de Usuario o Contraseña, el Usuario Registrado se obliga por el presente instrumento a dar aviso inmediato a E Capital, ya sea a través de la Plataforma o correo electrónico de atención.</p>
                                <p align="justify">Se establece en este contrato que el Usuario poseerá titularidad e interés sobre los datos que ingrese y se hará totalmente responsable de la legalidad, fiabilidad, integridad, exactitud y calidad de los mismos. En este sentido, E Capital se encargará del almacenamiento de estos datos hasta que el Perfil del usuario Registrado sea eliminado por alguna de las causales establecidas en la cláusula Novena y Décimo Primera. En caso de del Perfil de Usuario Registrado, todos los datos del cliente serán eliminados de los registros de la Plataforma.</p>
                                <p align="justify">Por tanto, el Usuario Registrado acepta que E Capital acceda y haga todos los análisis comerciales, legales y tributarios pertinentes de la información que este entrega y/o carga en la Plataforma, aceptando también que puede ser almacenada en servidos fuera del país.</p>
                                <p align="justify">El Usuario es quien debe asegurarse de que está autorizado a transferirnos la información legal, comercial y tributaria pertinente, de modo que E Capital pueda procesarla con la finalidad de poder entregar sus servicios de forma óptima en tiempo y forma.</p>
                                <p align="justify">Se deja expresamente establecido en el presente instrumento que todo el material o contenido de la Plataforma, incluyendo a modo de ejemplo y no taxativo los logotipos, diseños, textos, formularios, gráficos, datos, artículos, documentos, fotos, imágenes, su organización, softwares, códigos fuente, entre otros, y en general cualquier otra información contenida en la Plataforma es de exclusiva propiedad de E Capital y se encuentra protegido por las normas de propiedad intelectual y por los tratados internacionales vigentes en Chile en esta materia. El Usuario declara aceptar y comprender que todo el contenido que se encuentre en el sitio web www.chdoccc.cl y su Plataforma e- Lending es de propiedad de E Capital.</p>
                                <p align="justify">Es posible que la Plataforma recopile información sobre el uso que los Usuarios hagan de Internet, utilizando archivos cookie que se guardan en el navegador o en el disco duro del ordenador de los Usuarios. Esto ayuda a que E Capital pueda mejorar su sitio web y Plataforma y a ofrecer un mejor servicio y más personalizado a los Usuarios. Cuando el Usuario realice el enrolamiento en la Plataforma, acepta expresamente a que E Capital utilice cookies. </p>
                                <p align="justify">E Capital se compromete en el presente Contrato, a no alterar y/o modificar la información que el Usuario entregue o cargue en la Plataforma, así como a mantener en reserva esta información respecto de terceros, salvo expresa autorización del usuario Representante.</p>

                                <p align="justify"><b>DÉCIMO SEXTO:</b> Domicilio. Para todos los efectos derivados de este Contrato, las partes fijan su domicilio en la ciudad y comuna de Santiago de Chile, y se someten a la Jurisdicción de sus Tribunales de Justicia. </p>

                                <p align="justify"><b>DÉCIMO SÉPTIMO:</b> Avisos. El Usuario, en este instrumento, acepta que deberá notificar a E Capital por escrito ante cualquier reclamo concerniente al uso de la Plataforma y a los contenidos y servicios provistos en la misma. Teniendo E Capital un plazo de 5 días hábiles para para responder al Usuario, antes de comenzar cualquier acción legal contra E Capital. Este plazo puede ser ampliado a 15 días corridos en caso que E Capital necesite recabar mucha información para dar respuesta al Usuario. Esto lo pondrá en conocimiento del Usuario a través de la Plataforma o mediante correo electrónico.</p>
                                <p align="justify">Todas las comunicaciones que el Usuario deba o quiera hacer llegar a E Capital, se efectuarán por correo electrónico dirigido a atencion@chdoccc.cl o bien a través del módulo Atención al cliente que se encuentra en el sitio web de E Capital (www.chdoccc.cl). Asimismo, todas las comunicaciones que E Capital deba o quiera dirigir al Usuario, se efectuarán por correo electrónico dirigido a la(s) dirección(es) electrónica(s) designada(s) por el Usuario en el enrolamiento y onboarding.</p>

                                <p align="justify"><b>DÉCIMO OCTAVO:</b> Consentimiento E Capital. E Capital presta anticipadamente su consentimiento al presente Contrato, solo debiendo ser aceptado por el Usuario para que este quede perfecto y produzca todos los efectos pertinentes a las partes. </p>

                                <p align="justify"><b>DECIMO NOVENO:</b> Copias del Contrato. El presente Contrato se pondrá a disposición de los Usuarios mediante correo electrónico, quedando así en poder esta.</p>

                                <p align="justify"><b>VIGÉSIMO:</b> Declaración jurada. Las partes declaran bajo juramento y su propia responsabilidad, que detentan poderes y representación suficiente para obligar tanto a sus respectivas sociedades como a ellos mismos en el caso de personas naturales, en los términos que da cuenta el presente instrumento.</p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        Debe leer el contrato completo para poder avanzar con el registro de su empresa
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="btnContrato" disabled="">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="modal" id="modalError">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <p id="msgError" style="font-size: 15px;"></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="page-footer">
            <jsp:include page="seccion/footer.jsp"></jsp:include>
        </div>

        <script src="js/jquery-2.1.3.min.js"></script>
        <script src="js/number_format.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="dist/js/app.min.js"></script>
        <script src="js/funciones.js"></script>
        <script src="js/registro_ws.js"></script>
    </body>
</html>
