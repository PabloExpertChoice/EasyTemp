<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <!-- Sweetalert2-->
    <link rel="stylesheet" type="text/css" href="dist/css/sweetalert.css">
    <!-- Tema loading-->
    <link rel="stylesheet" type="text/css" href="css/loading.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
</head>
<div class="modal fade" id="modalQuiebras" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="box">
                            <div class="box-body">
                                <span class="msgTbl"></span>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <!--                                            <th>Domicilio</th>
                                                                                        <th>Región</th>-->
                                            <th>Fecha declaratoria</th>
                                            <th>Fecha publicación diario oficial</th>
                                            <th>Tribunal</th>
                                            <th>Rol Causa</th>
                                            <th>Síndico</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <!--                                            <td id="tdDomicilio"</td>
                                                                                        <td id="tdRegion"></td>-->
                                            <td id="tdFechaDeclaratoria"></td>
                                            <td id="tdFechaPublicacion"></td>
                                            <td id="tdTribunal"></td>
                                            <td id="tdRolCausa"></td>
                                            <td id="tdSindico"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalActividadComercial" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <table class="table" id="tblActComercial1">
                            <tr>
                                <th>Fecha de consulta</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Inicio de actividades</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Impuestos en moneda extranjera</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Empresa de menor tamaño PRO-PYME</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Documentos tibrados</th>
                                <td></td>
                            </tr>
                            <tr>
                                <th>Observaciones</th>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>

                <table id="tblActComercial" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Actividad</th>
                            <th>Codigo</th>
                            <th>Categoria</th>
                            <th>Afecta IVA</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalPJUD" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="tblPjudCont">
                    <table id="tblPJUD" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th></th>
                                <th></th>
                                <th>ROL</th>
                                <th>FECHA</th>
                                <th>CARATULADO</th>
                                <th>TRIBUNAL</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalOfac" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <table id="tblResultadosOfac" class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Direccion</th>
                            <th>Tipo</th>
                            <th>Programa</th>
                            <th>Lista</th>
                            <th>Score</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalAfp" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" onclick="return enviarDatosAfp(this)">Validar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>

<!--Modales para contratos bureaus-->
<div class="modal fade" id="modalchkSinacofi" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 80%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Contrato Sinacofi</h4>
            </div>
            <div class="modal-body" id="modalTerminos-body">
                <div class="row">
                    <div class="col-xs-12" style="overflow-y: scroll; height: 350px;" id="contrato1">
                        <center><img src="assets/layouts/layout4/img/avatar9.jpg" style="width: 10%;" /></center>
                        <center><h3>CONTRATO DE USO, TÉRMINOS Y CONDICIONES <br />DEL SITIO WEB Y PLATAFORMA</h3></center>
                        <center><h4 style="color: #0563C1;">Web Service Sinacofi</h4></center>
                        <p align="justify">El presente contrato contiene los términos y condiciones para el acceso y uso del sitio web de web service Sinacofi  y de los servicios ofrecidos en su plataforma (<b>Plataforma de Evaluación de Riesgo</b>).</p>
                        <p align="justify">El contrato tendrá efecto caso a caso, entre web service Sinacofi., por una parte, y por la otra, el Usuario que suscribe el mismo, de acuerdo al párrafo precedente y con las cláusulas que a continuación se indican:</p>
                        <p align="justify"><b>PRIMERO:</b> Antecedentes. web service Sinacofi, es una plataforma que se dedica a ofrecer datos relevantes para la evaluación de créditos, el Usuario podrá realizar una evaluación crediticia de Personas Naturales y Jurídicas, para distintos productos financieros.</p>
                        <p align="justify"><b>SEGUNDO:</b> Conceptos. Para todos los efectos del presente Contrato de Uso, Términos y Condiciones del web service Sinacofi, y de los demás Acuerdos Específicos o Puntuales, se entenderá que las palabras que a continuación se definen, tendrán el significado, sentido interpretación que para cada una se señala. CONCEPTOS:</p>
                        <p align="justify">
                        <ul>
                            <li><u>Plataforma:</u> significa la plataforma web que es de propiedad y que opera bajo el control de web service Sinacofi, que se encuentra disponible en la dirección electrónica web service Sinacofi, además los servicios prestados por web service Sinacofi a través de la misma, sus los contenidos disponibles, actuales y los que se agreguen y modifiquen en el transcurso del tiempo.</li>
                            <li><u>Contrato:</u> es el presente contrato denominado “Contrato de Uso, Términos y Condiciones del service Sinacofi” aceptado por el Usuario al registrarse en la Plataforma y que tiene efectos entre web service Sinacofi y el Usuario suscriptor del mismo, que establece y regula los términos y condiciones de uso del sitio web o Plataforma.</li>
                            <li><u>Plataforma:</u> se entiende por esta, la sección o módulo que se encuentra en el web service Sinacofi, y que tiene como finalidad ofrecer los servicios de web service Sinacofi a los Usuarios que se registren en ella, comprendiendo desde el PERDILAMIENTO PARA EVALUACIONES CREDITICIAS y EVALUACIONES DE RUT DE CLIENTES.</li>
                            <li><u>Documentos Electrónicos:</u> se entenderá por tal, lo establecido en la Ley 19.799 de la República, en el artículo 2 letra d), es decir, “toda representación de un hecho, imagen o idea que sea creada, enviada, comunicada o recibida por medios electrónicos y almacenada de un modo idóneo para permitir su uso posterior”.</li>
                            <li><u>Contenidos:</u> es todo el material de la Plataforma, incluyendo a modo de ejemplo y no de forma taxativa los textos, datos, diseños, logotipos, artículos, formularios, documentos, fotos, imágenes, contenidos en general y cualquier otra información contenida en el sitio web.</li>
                            <li><u>Usuario:</u> se entiende por Usuario, toda persona natural o jurídica que ingresa a la Plataforma, que navega utilizando los servicios y la información contenida en ella. El Usuario es aquel que cuenta con “Nombre de Usuario” y “Contraseña”. A su vez, cabe distinguir que el Usuario puede ser un Usuario No Registrado o bien un Usuario Registrado (Usuario Representante y Usuario Designado).</li>
                            <li><u>Nombre de Usuario:</u> es el nombre que identifica al Usuario Registrado, ya sea el nombre de la persona natural o la razón social de la persona jurídica que desea financiamiento a través de los servicios ofrecidos en la Plataforma. </li>
                            <li><u>Contraseña:</u> es la combinación alfanumérica, designada por el Usuario al registrarse, la cual es requerida para autentificarse o iniciar sesión en esta.</li>
                            <li><u>Usuario Registrado:</u> es, indistintamente, cualquier Usuario que ha completado y confirmado exitosamente el proceso de Registro del Usuario en el web service Sinacofi, y que, por tanto, cuenta con un Nombre de Usuario y Contraseña para autentificarse en la Plataforma.</li>
                            <li><u>Usuario No Registrado:</u> es aquel Usuario que no ha completado con éxito el proceso de Registro del Usuario, y que por tanto, no posee un Nombre de Usuario y Contraseña. El Usuario No Registrado puede navegar por contenidos del sitio web, no obstante, la navegación por ciertos contenidos y secciones se encuentran reservadas únicamente para Usuarios Registrados en la Plataforma. Del mismo modo los Usuarios que no confirmen el correo de enrolamiento en el plazo de 8 horas quedarán como Usuarios No Registrados para todos los efectos del presente instrumento.</li>
                            <li><u>Usuario Representante:</u> Persona natural que acredite que cuenta con las facultades de suscribir con web service Sinacofi la utilización de los servicios, otorgar acceso a estos a otros Usuarios y administrar la información de evaluaciones de credito. El o los Usuario(s) Representante(s) es (son) quien(es) deberá(n) concurrir a la firma del Contrato Marco.</li>
                            <li><u>Cuenta:</u> es aquella a la que el Usuario accede al autentificarse, instancia que corresponde a la página personal del Usuario Registrado en la Plataforma. Su Cuenta le permite acceder a distintos servicios, entre los que se encuentran el Perfil de Usuario, registro de eventos, evaluación crediticia, entre otros.</li>
                        </ul>
                        </p>
                        <p align="justify"><b>TERCERO:</b> Aspectos Generales. El Usuario acepta usar el Contenido y la Plataforma sólo con propósitos que se enmarquen dentro del marco legal, en conformidad al orden público y según los términos y condiciones del presente Contrato, así como también sujeto a los términos y condiciones específicas a cada servicio contenidos en los Acuerdos Específicos o Puntuales. Se deja constancia que web service Sinacofi no asegura que los contenidos y los servicios prestados a través de la Plataforma son apropiados fuera del país, por tanto, si el Usuario accede a la Plataforma desde fuera de Chile, el Usuario comprende y acepta que el acceso y su uso es bajo su responsabilidad y éste debe asegurarse de cumplir con las leyes y normas específicas de su jurisdicción.</p>
                        <p align="justify"><b>CUARTO:</b> Requisitos Para Ser Usuario. La finalidad de la Plataforma es otorgar evaluaciones crediticias de forma rápida a los Usuarios Registrados en esta, por tanto para poder acceder a ser Usuario Registrado de la Plataforma, se deben contar con un mínimo de antecedentes:</p>
                        <p align="justify"><b>QUINTO:</b> Aceptación. El Usuario manifestará su absoluta conformidad reconociendo y declarando haber leído, comprendido y aceptado íntegramente el texto del Contrato de Uso, Términos y Condiciones del web service Sinacofi en  todas sus partes, aceptando ser regido por todos sus términos y condiciones, y estando sujeto a las leyes y regulaciones aplicables. Una vez pulsado el botón “Acepto” este Contrato será vinculante y obligará a las partes. Si el Usuario no acepta el presente Contrato, deberá abstenerse de acceder, navegar y usar la Plataforma inmediatamente. Asimismo, no podrá hacer uso de sus servicios ni de la información disponible en el sitio web.</p>
                        <p align="justify">En el caso que web service Sinacofi requiera que la aceptación de los términos y condiciones propuestos en los Acuerdos Específicos o Puntuales, descritas en el inciso anterior, al Usuario y este se negara o no consintiera, web service Sinacofi se encontrará plenamente facultado para denegar a dicho Usuario el acceso a secciones específicas o módulos relevantes de la Plataforma y de las páginas web que lo conforman.</p>   
                        <p align="justify"><b>SÉPTIMO:</b> Modificaciones. Por el presente instrumento se deja constancia que web service Sinacofi podrá en cualquier momento y las veces que lo estime conveniente, agregar, corregir, modificar, eliminar y/o actualizar los términos y condiciones de este Contrato, debiendo notificar oportunamente al Usuario Registrado de las modificaciones que se desee efectuar al Contrato a través de la publicación de una notificación dirigida al Usuario cuando este intente acceder al sitio web. Los cambios que se hagan a este Contrato se harán efectivos a partir del momento en que el Usuario acepte las referidas modificaciones. A este respecto, se deja expresa constancia de que web service Sinacofi podrá cambiar y/o restringir el acceso a todo o a una parte de la Plataforma sin previa notificación al Usuario y sin responsabilidad alguna para web service Sinacofi en caso que el Usuario estime que se le haya generado un daño a partir de ese cambio o restricción. A su vez, web service Sinacofi tendrá la facultad de condicionar el acceso a ciertas secciones específicas o módulos de la Plataforma a la aceptación de los Acuerdos Específicos o Puntuales relevantes, de conformidad con lo expresado en la cláusula precedente.</p>   
                        <p align="justify">En el evento que ocurra un conflicto entre las disposiciones del presente Contrato, y una o más de las contenidos en uno o más de los Acuerdos Específicos o Puntuales, se entenderá que las condiciones y términos contenidas en estos últimos, primarán por sobre las condiciones y términos generales de este Contrato, para dichos módulos o secciones específicas.</p>   
                        <p align="justify"><b>OCTAVO:</b> Autonomía de Las Cláusulas. En el caso que alguna cláusula de este Contrato fuese declarada como inválida, inexistente, inoponible y/o de cualquier modo ineficaz por un tribunal competente de la República, las demás las cláusulas de este Contrato y los derechos y obligaciones que de ellas emanan, mantendrán su plena vigencia y validez.</p>   
                        <p align="justify"><b>NOVENO:</b> Término Del Contrato. Este Contrato se encontrará vigente y tendrá duración indefinida mientras web service Sinacofi mantenga la Plataforma operativa en su sitio web. A su vez, web service Sinacofi se reserva el derecho de terminar de ofrecer la Plataforma, sus contenidos y los servicios que se proveen a través de esta, en cualquier momento, sin perjuicio del deber de realizar la debida notificación a los Usuarios Registrados. No obstante lo anterior, web service Sinacofi está facultado para poner término inmediato al Contrato en caso de decidir, a su sola discreción, desactivar la cuenta de un Usuario Registrado, en cualquiera de los siguientes casos:</p>   
                        <p align="justify">
                        <ol>
                            <li>En el evento de incurrir el Usuario en un uso no autorizado del Contenido de la Plataforma de conformidad con lo dispuesto la cláusula Décimo Primera denominada Prohibiciones del presente Contrato.</li>
                            <li>En caso de comprobar que alguna de las informaciones suministradas por el Usuario fuese falsa, incompleta, inexacta, errónea, y/o de cualquier forma poco fidedigna.</li>
                            <li>En el evento de incurrir el Usuario en alguna infracción grave de sus obligaciones bajo el Contrato y/o los Acuerdos Específicos.</li>
                        </ol>
                        </p>   
                        <p align="justify">Cabe precisar que en el caso que el Usuario incurra en alguna de las acciones recién mencionadas, se entenderá que el Contrato y el Registro de Usuario han expirado desde el momento en que web service Sinacofi así lo notifique al Usuario mediante correo electrónico dirigido a la dirección registrada por éste en la Plataforma. Sin embargo, subsistirán y se mantendrán vigentes aun después del término del Contrato las cláusulas que tratan sobre, Responsabilidades y Exclusiones, (iv) Ley Aplicable y Tribunal competente, (v) y, en general cualquier otra materia que por su naturaleza perdure a pesar del término de este Contrato. Además el Usuario Registrado no podrá modificar parte alguna de los contenidos o de la totalidad de estos, que se encuentren publicados en la Plataforma.</p>
                        <p align="justify">En conformidad con lo dispuesto en la letra b) del artículo 3 bis de la Ley de Protección al Consumidor, se deja expresa constancia en presente instrumento que el Usuario no podrá retractarse del presente Contrato, sus anexos y/o Acuerdos Específicos o Puntuales. En el caso que el Usuario desee poner término al presente Contrato, deberá poner en conocimiento a web service Sinacofi a través de un correo electrónico enviado por el Usuario Representante de la persona jurídica o del correo ingresado por el Usuario que es persona natural.</p>
                        <p align="justify"><b>DÉCIMO:</b> Responsabilidad del Usuario. Por el presente instrumento el Usuario se obliga expresamente a que toda la información que proporcione a web service Sinacofi, ya sea a través de los formularios de Registro de Usuario y/o de otros medios que web service Sinacofi haya definido con el Usuario debe ser absolutamente fidedigna, veraz y comprobable. Del mismo modo, el Usuario Registrado es responsable exclusivo de mantener su información personal siempre actualizada, tanto como persona natural o jurídica. El Usuario, a través de la aceptación de este contrato, garantiza a web service Sinacofi la autenticidad de todos aquellos datos proporcionados a la Plataforma, siendo el Usuario el único responsable por los daños y perjuicios generados por cualquier inexactitud en la información que pudieran recaer sobre web service Sinacofi, sobre sí mismo y/o sobre terceros. A su vez, se deja establecido en el presente instrumento que web service Sinacofi no se hace responsable por las faltas en que incurra el Usuario Registrado respecto de ésta cláusula.</p>
                        <p align="justify"><b>DÉCIMO PRIMERO:</b> Prohibiciones. El Usuario se compromete en este acto a no crear cuentas o utilizar la Plataforma para proporcionar datos falsos. En este sentido el Usuario se compromete a que el Contenido no podrá ser modificado, reproducido, copiado, republicado, reutilizado, redistribuido, expuesto o posteado por el Usuario en ninguna forma y bajo ningún medio, incluyendo a modo de ejemplo y sin que la enumeración sea taxativa, grabaciones, medios electrónicos, fotocopias, mecánicos, u otros, sin la previa autorización por escrito por parte de web service Sinacofi. En efecto, se deja expresamente establecido que ningún tipo de información que se encuentre en la Plataforma podrá ser utilizado por terceros sin la previa autorización escrita de web service Sinacofi y para cada vez que se requieran.</p>
                        <p align="justify">El Usuario Registrado exclusivamente para fines de uso personal y sólo en relación y en función a un correcto uso para el Usuario de los servicios que le provee la Plataforma podrá acceder, descargar, imprimir cualquier contenido.</p>
                        <p align="justify">El Usuario Registrado no podrá reproducir un sitio “espejo” del sitio web de web service Sinacofi o de parte de éste, mantenerlo en otros servidores ni publicarlos en Internet.</p>
                        <p align="justify">Independiente de las prohibiciones establecidas en la presente cláusula, el Usuario se obliga a abstenerse de recopilar desde la Plataforma datos con finalidad publicitaria. Así como transmitir desde la Plataforma, cadenas de mensajes o cualquier otro tipo de mensaje interno y/o correo electrónico masivo no solicitado, postear, subir, enviar por email o poner disponible cualquier material promocional o publicitario y/o cualquier tipo de comunicación con fines de venta u otros fines comerciales, que no fue solicitado y que no cuenta con la previa autorización de los terceros afectados.</p>
                        <p align="justify">También se prohíbe expresamente que el Usuario Registrado, No Registrado, Usuario Representante Usuario Designado directa o indirectamente intenten hackear los sistemas del y Plataforma para acceder a sus bases de datos y obtener listas de distribución de emails, para luego realizar alguna de las acciones establecidas en esta cláusula y/o para poner estas listas de distribución a disposición de terceros a través de la cesión o venta de las mismas. Además se prohíbe cualquier uso no autorizado de los contenidos de la Plataforma, lo que constituirá una violación de las leyes y regulaciones en las materias de derechos de autor y de propiedad intelectual. Pudiendo web service Sinacofi eliminar el perfil de Usuario y pudiendo poner término al presente contrato. Sin perjuicio del derecho de ejercer todas las acciones pertinentes, tanto civiles como penales, destinadas al resguardar los legítimos derechos de propiedad intelectual de web service Sinacofi.</p>
                        <p align="justify"><b>DÉCIMO SEGUNDO:</b> Fuerza Mayor. Las Partes no se hacen responsables de ninguna pérdida o daño sufrido por la otra parte, causado por un retraso o un error en el cumplimiento de las disposiciones incluidas en el presente Contrato, siempre y cuando dicho retraso o error sea causado por un impedimento que esté más allá del control de la parte en cuestión y que, por motivos razonables, no se pudiese tener en cuenta en el momento de firmar el Contrato, o cuyas consecuencias no se hayan podido evitar o superar.</p>
                        <p align="justify"><b>DÉCIMO CUARTO:</b> Exclusión de Responsabilidad. Por el presente instrumento el Usuario reconoce y declara que su acceso,  carga de antecedentes y todas la otras acciones que realice en la Plataforma, lo efectúa por su propia cuenta y riesgo, y que en consecuencia, y sin que la siguiente enumeración sea taxativa, sino que meramente ejemplar, web service Sinacofi no se responsabiliza de forma alguna por cualquier erros, omisión e inexactitudes en contenidos publicados por sus Usuarios Registrados. A su vez, cualquier virus, entendiendo por tal, a un objeto o dispositivo incluido en cualquier programa informático, código o archivo que puede perjudicar o, en forma alguna, afectar negativamente al funcionamiento de un programa informático, servicio de telecomunicaciones, material o red, equipo , o cualquier otro servicio o dispositivo; asimismo afectar negativamente al acceso o al funcionamiento de un programa o conjunto de datos, o afectar a la fiabilidad de cualquier programa o información (mediante la reestructuración, alteración o eliminación del programa o de la información en su totalidad o en parte o en forma alguna); o afectar negativamente a la utilización que hace el usuario, a través de gusanos, troyanos, virus y otros objetos o dispositivos similares, que pudiera infectar el equipo del Usuario producto del acceso y/o utilización de la Plataforma por parte del Usuario Registrado, por tanto, el Usuario comprende que el uso de este Sitio está sujeto a su propio riesgo. En virtud de lo anterior, si el uso dela Plataforma deriva en que el Usuario deba incurrir en reparaciones y/o correcciones, contratando algún servicio de mantención de sus equipos computacionales, estos costos deberán ser asumidos por el Usuario, sin que web service Sinacofi tenga responsabilidad alguna en esta materia. En este sentido expresamente se deja constancia de que web service Sinacofi se excluye de cualquier responsabilidad por los daños y perjuicios de cualquier naturaleza que puedan derivarse a la presencia de virus u otros elementos informáticos que pudieran producir alteraciones en los sistemas, documentos electrónicos y/o perfiles de los Usuarios.</p>
                        <p align="justify">web service Sinacofi declara que el sistema puede eventualmente no encontrarse disponible debido a dificultades técnicas, fallas de internet o razones ajenas a este, por lo que el Usuario comprende que web service Sinacofi no garantiza el acceso continuo e ininterrumpido delos servicios ofrecidos en la Plataforma y/o de módulos del mismo. En caso de interrupción del servicio, web service Sinacofi se compromete a que hará todo lo que esté a su alcance para restablecer la operatividad de la Plataforma y sus servicios a la brevedad, sin que de ello pudiera derivarse ningún tipo de obligación ni responsabilidad alguna para web service Sinacofi. En síntesis, web service Sinacofi se excluye de cualquier responsabilidad por los daños y/o perjuicios de cualquier naturaleza que puedan derivarse a la falta de disponibilidad y continuidad del funcionamiento del sitio y de los servicios ofrecidos en la Plataforma.</p>
                        <p align="justify">El Usuario comprende y acepta expresamente que web service Sinacofi tiene el derecho de monitorear la Plataforma de manera electrónica, las veces que estime conveniente, y hacer seguimiento a cualquier información y/o conductas sospechosas de Usuarios, según su propio criterio para asegurar la correcta operatividad de la Plataforma y para protegerse a sí mismo y a otros Usuarios de esta, respecto de conductas que podrían ser fraudulentas y/o atentatorias contra los derechos de los Usuarios.</p>
                        <p align="justify">Queda absolutamente prohibido que algún Usuario incurra o trate de suplantar la identidad de otra persona natural o Usuario, ergo, que lo Usuarios utilicen datos personales de terceros para crear cuentas en la Plataforma. En este sentido, web service Sinacofi se reserva el derecho de verificar los perfiles de manera aleatoria, verificando la veracidad de la información. En caso de detectar fraude o intento de este, web service Sinacofi podrá cancelar la cuenta y tomar las acciones que estime conveniente según la legislación vigente.</p>
                        <p align="justify">Queda absolutamente establecido que bajo ninguna circunstancia los colaboradores, directores y los representantes de web service Sinacofi serán responsables por cualquier daño generado a los Usuarios a partir del uso de la Plataforma. Los colaboradores, directores y representantes de web service Sinacofi no serán responsables bajo ninguna circunstancia de los daños generados por errores, omisiones, interrupciones, retrasos en la información, transmisión, virus computacionales, fallas de sistemas y otros problemas que se produzcan en la Plataforma.</p>
                        <p align="justify">Por tanto, de todos los casos enumerados previamente, se entiende que el Usuario no podrá imputarle a web service Sinacofi responsabilidad legal alguna ni exigir indemnizaciones ni pagos por daño emergente y/o lucro cesante, en virtud de perjuicios derivados de los casos enumerados en esta cláusula.</p>
                        <p align="justify"><b>DÉCIMO QUINTO:</b> Políticas de Privacidad. El Usuario Registrado se obliga a custodiar su Nombre de Usuario y Contraseña, los cuales son única y exclusivamente de su responsabilidad y uso exclusivo, no debiendo entregar esta información a terceros y debiendo realizar un correcto uso de las mismas. Por lo cual, web service Sinacofi no se hace responsable de los daños ocasionados al Usuario por mal uso de terceros del Nombre de Usuario y Contraseña. En caso de detectar mal uso de su Nombre de Usuario o Contraseña, el Usuario Registrado se obliga por el presente instrumento a dar aviso inmediato a web service Sinacofi, ya sea a través de la Plataforma o correo electrónico de atención.</p>
                        <p align="justify">Se establece en este contrato que el Usuario poseerá titularidad e interés sobre los datos que ingrese y se hará totalmente responsable de la legalidad, fiabilidad, integridad, exactitud y calidad de los mismos. En este sentido, web service Sinacofi se encargará del almacenamiento de estos datos hasta que el Perfil del usuario Registrado sea eliminado por alguna de las causales establecidas en la cláusula Novena y Décimo Primera. En caso de del Perfil de Usuario Registrado, todos los datos del cliente serán eliminados de los registros de la Plataforma.</p>
                        <p align="justify">Por tanto, el Usuario Registrado acepta que web service Sinacofi acceda y haga todos los análisis comerciales, legales y tributarios pertinentes de la información que este entrega y/o carga en la Plataforma, aceptando también que puede ser almacenada en servidos fuera del país.</p>
                        <p align="justify">El Usuario es quien debe asegurarse de que está autorizado a transferirnos la información legal, comercial y tributaria pertinente, de modo que web service Sinacofi pueda procesarla con la finalidad de poder entregar sus servicios de forma óptima en tiempo y forma.</p>
                        <p align="justify">Se deja expresamente establecido en el presente instrumento que todo el material o contenido de la Plataforma, incluyendo a modo de ejemplo y no taxativo los logotipos, diseños, textos, formularios, gráficos, datos, artículos, documentos, fotos, imágenes, su organización, softwares, códigos fuente, entre otros, y en general cualquier otra información contenida en la Plataforma es de exclusiva propiedad de web service Sinacofi y se encuentra protegido por las normas de propiedad intelectual y por los tratados internacionales vigentes en Chile en esta materia. El Usuario declara aceptar y comprender que todo el contenido que se encuentre en el web service Sinacofi/ y su Plataforma es de propiedad de web service Sinacofi.</p>
                        <p align="justify">Es posible que la Plataforma recopile información sobre el uso que los Usuarios hagan de Internet, utilizando archivos cookie que se guardan en el navegador o en el disco duro del ordenador de los Usuarios. Esto ayuda a que web service Sinacofi pueda mejorar su sitio web y Plataforma y a ofrecer un mejor servicio y más personalizado a los Usuarios. Cuando el Usuario realice el enrolamiento en la Plataforma, acepta expresamente a que web service Sinacofi utilice cookies.</p>
                        <p align="justify">web service Sinacofi se compromete en el presente Contrato, a no alterar y/o modificar la información que el Usuario entregue o cargue en la Plataforma, así como a mantener en reserva esta información respecto de terceros, salvo expresa autorización del usuario Representante.</p>
                        <p align="justify"><b>DÉCIMO SEXTO:</b> Domicilio. Para todos los efectos derivados de este Contrato, las partes fijan su domicilio en la ciudad y comuna de Santiago de Chile, y se someten a la Jurisdicción de sus Tribunales de Justicia.</p>
                        <p align="justify"><b>DÉCIMO SÉPTIMO:</b> Avisos. El Usuario, en este instrumento, acepta que deberá notificar a web service Sinacofi por escrito ante cualquier reclamo concerniente al uso de la Plataforma y a los contenidos y servicios provistos en la misma. Teniendo web service Sinacofi un plazo de 5 días hábiles para para responder al Usuario, antes de comenzar cualquier acción legal contra web service Sinacofi. Este plazo puede ser ampliado a 15 días corridos en caso que web service Sinacofi necesite recabar mucha información para dar respuesta al Usuario. Esto lo pondrá en conocimiento del Usuario a través de la Plataforma o mediante correo electrónico.</p>
                        <p align="justify">Todas las comunicaciones que el Usuario deba o quiera hacer llegar a web service Sinacofi, se efectuarán por correo electrónico. Asimismo, todas las comunicaciones que web service Sinacofi deba o quiera dirigir al Usuario, se efectuarán por correo electrónico dirigido a la(s) dirección(es) electrónica(s) designada(s) por el Usuario en el enrolamiento y onboarding.</p>
                        <p align="justify"><b>DÉCIMO OCTAVO:</b> Consentimiento web service Sinacofi. web service Sinacofi presta anticipadamente su consentimiento al presente Contrato, solo debiendo ser aceptado por el Usuario para que este quede perfecto y produzca todos los efectos pertinentes a las partes.</p>
                        <p align="justify"><b>DECIMO NOVENO:</b> Copias del Contrato. El presente Contrato se pondrá a disposición de los Usuarios mediante correo electrónico, quedando así en poder esta.</p>
                        <p align="justify"><b>VIGÉSIMO:</b> Declaración jurada. Las partes declaran bajo juramento y su propia responsabilidad, que detentan poderes y representación suficiente para obligar tanto a sus respectivas sociedades como a ellos mismos en el caso de personas naturales, en los términos que da cuenta el presente instrumento.</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="btnContrato1" name="btnContrato1" type="button" class="btn btn-primary" onclick="confirmarContrato('chkSinacofi');" data-dismiss="modal" disabled="">Aceptar</button>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalchkEquifax" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 80%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Contrato Equifax</h4>
            </div>
            <div class="modal-body" id="modalTerminos-body">
                <div class="row">
                    <div class="col-xs-12" style="overflow-y: scroll; height: 350px;" id="contrato2">
                        <center><img src="assets/layouts/layout4/img/avatar9.jpg" style="width: 10%;" /></center>
                        <center><h3>CONTRATO DE USO, TÉRMINOS Y CONDICIONES <br />DEL SITIO WEB Y PLATAFORMA</h3></center>
                        <center><h4 style="color: #0563C1;">Web Service Equifax</h4></center>
                        <p align="justify">El presente contrato contiene los términos y condiciones para el acceso y uso del sitio web de web service Equifax  y de los servicios ofrecidos en su plataforma (<b>Plataforma de Evaluación de Riesgo</b>).</p>
                        <p align="justify">El contrato tendrá efecto caso a caso, entre web service Equifax., por una parte, y por la otra, el Usuario que suscribe el mismo, de acuerdo al párrafo precedente y con las cláusulas que a continuación se indican:</p>
                        <p align="justify"><b>PRIMERO:</b> Antecedentes. web service Equifax, es una plataforma que se dedica a ofrecer datos relevantes para la evaluación de créditos, el Usuario podrá realizar una evaluación crediticia de Personas Naturales y Jurídicas, para distintos productos financieros.</p>
                        <p align="justify"><b>SEGUNDO:</b> Conceptos. Para todos los efectos del presente Contrato de Uso, Términos y Condiciones del web service Equifax, y de los demás Acuerdos Específicos o Puntuales, se entenderá que las palabras que a continuación se definen, tendrán el significado, sentido interpretación que para cada una se señala. CONCEPTOS:</p>
                        <p align="justify">
                        <ul>
                            <li><u>Plataforma:</u> significa la plataforma web que es de propiedad y que opera bajo el control de web service Equifax, que se encuentra disponible en la dirección electrónica web service Equifax, además los servicios prestados por web service Equifax a través de la misma, sus los contenidos disponibles, actuales y los que se agreguen y modifiquen en el transcurso del tiempo.</li>
                            <li><u>Contrato:</u> es el presente contrato denominado “Contrato de Uso, Términos y Condiciones del web service Equifax” aceptado por el Usuario al registrarse en la Plataforma y que tiene efectos entre web service Equifax y el Usuario suscriptor del mismo, que establece y regula los términos y condiciones de uso del sitio web o Plataforma.</li>
                            <li><u>Plataforma:</u> se entiende por esta, la sección o módulo que se encuentra en el sitio web de web service Equifax, y que tiene como finalidad ofrecer los servicios de web service Equifax a los Usuarios que se registren en ella, comprendiendo desde el PERDILAMIENTO PARA EVALUACIONES CREDITICIAS y EVALUACIONES DE RUT DE CLIENTES.</li>
                            <li><u>Documentos Electrónicos:</u> se entenderá por tal, lo establecido en la Ley 19.799 de la República, en el artículo 2 letra d), es decir, “toda representación de un hecho, imagen o idea que sea creada, enviada, comunicada o recibida por medios electrónicos y almacenada de un modo idóneo para permitir su uso posterior”.</li>
                            <li><u>Contenidos:</u> es todo el material de la Plataforma, incluyendo a modo de ejemplo y no de forma taxativa los textos, datos, diseños, logotipos, artículos, formularios, documentos, fotos, imágenes, contenidos en general y cualquier otra información contenida en el sitio web.</li>
                            <li><u>Usuario:</u> se entiende por Usuario, toda persona natural o jurídica que ingresa a la Plataforma, que navega utilizando los servicios y la información contenida en ella. El Usuario es aquel que cuenta con “Nombre de Usuario” y “Contraseña”. A su vez, cabe distinguir que el Usuario puede ser un Usuario No Registrado o bien un Usuario Registrado (Usuario Representante y Usuario Designado).</li>
                            <li><u>Nombre de Usuario:</u> es el nombre que identifica al Usuario Registrado, ya sea el nombre de la persona natural o la razón social de la persona jurídica que desea financiamiento a través de los servicios ofrecidos en la Plataforma. </li>
                            <li><u>Contraseña:</u> es la combinación alfanumérica, designada por el Usuario al registrarse, la cual es requerida para autentificarse o iniciar sesión en esta.</li>
                            <li><u>Usuario Registrado:</u> es, indistintamente, cualquier Usuario que ha completado y confirmado exitosamente el proceso de Registro del Usuario en el web service Equifax, y que, por tanto, cuenta con un Nombre de Usuario y Contraseña para autentificarse en la Plataforma.</li>
                            <li><u>Usuario No Registrado:</u> es aquel Usuario que no ha completado con éxito el proceso de Registro del Usuario, y que por tanto, no posee un Nombre de Usuario y Contraseña. El Usuario No Registrado puede navegar por contenidos del sitio web, no obstante, la navegación por ciertos contenidos y secciones se encuentran reservadas únicamente para Usuarios Registrados en la Plataforma. Del mismo modo los Usuarios que no confirmen el correo de enrolamiento en el plazo de 8 horas quedarán como Usuarios No Registrados para todos los efectos del presente instrumento.</li>
                            <li><u>Usuario Representante:</u> Persona natural que acredite que cuenta con las facultades de suscribir con web service Equifax la utilización de los servicios, otorgar acceso a estos a otros Usuarios y administrar la información de evaluaciones de credito. El o los Usuario(s) Representante(s) es (son) quien(es) deberá(n) concurrir a la firma del Contrato Marco.</li>
                            <li><u>Cuenta:</u> es aquella a la que el Usuario accede al autentificarse, instancia que corresponde a la página personal del Usuario Registrado en la Plataforma. Su Cuenta le permite acceder a distintos servicios, entre los que se encuentran el Perfil de Usuario, registro de eventos, evaluación crediticia, entre otros.</li>
                        </ul>
                        </p>
                        <p align="justify"><b>TERCERO:</b> Aspectos Generales. El Usuario acepta usar el Contenido y la Plataforma sólo con propósitos que se enmarquen dentro del marco legal, en conformidad al orden público y según los términos y condiciones del presente Contrato, así como también sujeto a los términos y condiciones específicas a cada servicio contenidos en los Acuerdos Específicos o Puntuales. Se deja constancia que web service Equifax no asegura que los contenidos y los servicios prestados a través de la Plataforma son apropiados fuera del país, por tanto, si el Usuario accede a la Plataforma desde fuera de Chile, el Usuario comprende y acepta que el acceso y su uso es bajo su responsabilidad y éste debe asegurarse de cumplir con las leyes y normas específicas de su jurisdicción.</p>
                        <p align="justify"><b>CUARTO:</b> Requisitos Para Ser Usuario. La finalidad de la Plataforma es otorgar evaluaciones crediticias de forma rápida a los Usuarios Registrados en esta, por tanto para poder acceder a ser Usuario Registrado de la Plataforma, se deben contar con un mínimo de antecedentes:</p>
                        <p align="justify"><b>QUINTO:</b> Aceptación. El Usuario manifestará su absoluta conformidad reconociendo y declarando haber leído, comprendido y aceptado íntegramente el texto del Contrato de Uso, Términos y Condiciones del web service Equifax en  todas sus partes, aceptando ser regido por todos sus términos y condiciones, y estando sujeto a las leyes y regulaciones aplicables. Una vez pulsado el botón “Acepto” este Contrato será vinculante y obligará a las partes. Si el Usuario no acepta el presente Contrato, deberá abstenerse de acceder, navegar y usar la Plataforma inmediatamente. Asimismo, no podrá hacer uso de sus servicios ni de la información disponible en el sitio web.</p>
                        <p align="justify">En el caso que web service Equifax requiera que la aceptación de los términos y condiciones propuestos en los Acuerdos Específicos o Puntuales, descritas en el inciso anterior, al Usuario y este se negara o no consintiera, web service Equifax se encontrará plenamente facultado para denegar a dicho Usuario el acceso a secciones específicas o módulos relevantes de la Plataforma y de las páginas web que lo conforman.</p>   
                        <p align="justify"><b>SÉPTIMO:</b> Modificaciones. Por el presente instrumento se deja constancia que web service Equifax podrá en cualquier momento y las veces que lo estime conveniente, agregar, corregir, modificar, eliminar y/o actualizar los términos y condiciones de este Contrato, debiendo notificar oportunamente al Usuario Registrado de las modificaciones que se desee efectuar al Contrato a través de la publicación de una notificación dirigida al Usuario cuando este intente acceder al sitio web. Los cambios que se hagan a este Contrato se harán efectivos a partir del momento en que el Usuario acepte las referidas modificaciones. A este respecto, se deja expresa constancia de que web service Equifax podrá cambiar y/o restringir el acceso a todo o a una parte de la Plataforma sin previa notificación al Usuario y sin responsabilidad alguna para web service Equifax en caso que el Usuario estime que se le haya generado un daño a partir de ese cambio o restricción. A su vez, web service Equifax tendrá la facultad de condicionar el acceso a ciertas secciones específicas o módulos de la Plataforma a la aceptación de los Acuerdos Específicos o Puntuales relevantes, de conformidad con lo expresado en la cláusula precedente.</p>   
                        <p align="justify">En el evento que ocurra un conflicto entre las disposiciones del presente Contrato, y una o más de las contenidos en uno o más de los Acuerdos Específicos o Puntuales, se entenderá que las condiciones y términos contenidas en estos últimos, primarán por sobre las condiciones y términos generales de este Contrato, para dichos módulos o secciones específicas.</p>   
                        <p align="justify"><b>OCTAVO:</b> Autonomía de Las Cláusulas. En el caso que alguna cláusula de este Contrato fuese declarada como inválida, inexistente, inoponible y/o de cualquier modo ineficaz por un tribunal competente de la República, las demás las cláusulas de este Contrato y los derechos y obligaciones que de ellas emanan, mantendrán su plena vigencia y validez.</p>   
                        <p align="justify"><b>NOVENO:</b> Término Del Contrato. Este Contrato se encontrará vigente y tendrá duración indefinida mientras web service Equifax mantenga la Plataforma operativa en su sitio web. A su vez, web service Equifax se reserva el derecho de terminar de ofrecer la Plataforma, sus contenidos y los servicios que se proveen a través de esta, en cualquier momento, sin perjuicio del deber de realizar la debida notificación a los Usuarios Registrados. No obstante lo anterior, web service Equifax está facultado para poner término inmediato al Contrato en caso de decidir, a su sola discreción, desactivar la cuenta de un Usuario Registrado, en cualquiera de los siguientes casos:</p>   
                        <p align="justify">
                        <ol>
                            <li>En el evento de incurrir el Usuario en un uso no autorizado del Contenido de la Plataforma de conformidad con lo dispuesto la cláusula Décimo Primera denominada Prohibiciones del presente Contrato.</li>
                            <li>En caso de comprobar que alguna de las informaciones suministradas por el Usuario fuese falsa, incompleta, inexacta, errónea, y/o de cualquier forma poco fidedigna.</li>
                            <li>En el evento de incurrir el Usuario en alguna infracción grave de sus obligaciones bajo el Contrato y/o los Acuerdos Específicos.</li>
                        </ol>
                        </p>   
                        <p align="justify">Cabe precisar que en el caso que el Usuario incurra en alguna de las acciones recién mencionadas, se entenderá que el Contrato y el Registro de Usuario han expirado desde el momento en que web service Equifax así lo notifique al Usuario mediante correo electrónico dirigido a la dirección registrada por éste en la Plataforma. Sin embargo, subsistirán y se mantendrán vigentes aun después del término del Contrato las cláusulas que tratan sobre, Responsabilidades y Exclusiones, (iv) Ley Aplicable y Tribunal competente, (v) y, en general cualquier otra materia que por su naturaleza perdure a pesar del término de este Contrato. Además el Usuario Registrado no podrá modificar parte alguna de los contenidos o de la totalidad de estos, que se encuentren publicados en la Plataforma.</p>
                        <p align="justify">En conformidad con lo dispuesto en la letra b) del artículo 3 bis de la Ley de Protección al Consumidor, se deja expresa constancia en presente instrumento que el Usuario no podrá retractarse del presente Contrato, sus anexos y/o Acuerdos Específicos o Puntuales. En el caso que el Usuario desee poner término al presente Contrato, deberá poner en conocimiento a web service Equifax a través de un correo electrónico enviado por el Usuario Representante de la persona jurídica o del correo ingresado por el Usuario que es persona natural.</p>
                        <p align="justify"><b>DÉCIMO:</b> Responsabilidad del Usuario. Por el presente instrumento el Usuario se obliga expresamente a que toda la información que proporcione a web service Equifax, ya sea a través de los formularios de Registro de Usuario y/o de otros medios que web service Equifax haya definido con el Usuario debe ser absolutamente fidedigna, veraz y comprobable. Del mismo modo, el Usuario Registrado es responsable exclusivo de mantener su información personal siempre actualizada, tanto como persona natural o jurídica. El Usuario, a través de la aceptación de este contrato, garantiza a web service Equifax la autenticidad de todos aquellos datos proporcionados a la Plataforma, siendo el Usuario el único responsable por los daños y perjuicios generados por cualquier inexactitud en la información que pudieran recaer sobre web service Equifax, sobre sí mismo y/o sobre terceros. A su vez, se deja establecido en el presente instrumento que web service Equifax no se hace responsable por las faltas en que incurra el Usuario Registrado respecto de ésta cláusula.</p>
                        <p align="justify"><b>DÉCIMO PRIMERO:</b> Prohibiciones. El Usuario se compromete en este acto a no crear cuentas o utilizar la Plataforma para proporcionar datos falsos. En este sentido el Usuario se compromete a que el Contenido no podrá ser modificado, reproducido, copiado, republicado, reutilizado, redistribuido, expuesto o posteado por el Usuario en ninguna forma y bajo ningún medio, incluyendo a modo de ejemplo y sin que la enumeración sea taxativa, grabaciones, medios electrónicos, fotocopias, mecánicos, u otros, sin la previa autorización por escrito por parte de web service Equifax. En efecto, se deja expresamente establecido que ningún tipo de información que se encuentre en la Plataforma podrá ser utilizado por terceros sin la previa autorización escrita de web service Equifax y para cada vez que se requieran.</p>
                        <p align="justify">El Usuario Registrado exclusivamente para fines de uso personal y sólo en relación y en función a un correcto uso para el Usuario de los servicios que le provee la Plataforma podrá acceder, descargar, imprimir cualquier contenido.</p>
                        <p align="justify">El Usuario Registrado no podrá reproducir un sitio “espejo” del sitio web de web service Equifax o de parte de éste, mantenerlo en otros servidores ni publicarlos en Internet.</p>
                        <p align="justify">Independiente de las prohibiciones establecidas en la presente cláusula, el Usuario se obliga a abstenerse de recopilar desde la Plataforma datos con finalidad publicitaria. Así como transmitir desde la Plataforma, cadenas de mensajes o cualquier otro tipo de mensaje interno y/o correo electrónico masivo no solicitado, postear, subir, enviar por email o poner disponible cualquier material promocional o publicitario y/o cualquier tipo de comunicación con fines de venta u otros fines comerciales, que no fue solicitado y que no cuenta con la previa autorización de los terceros afectados.</p>
                        <p align="justify">También se prohíbe expresamente que el Usuario Registrado, No Registrado, Usuario Representante Usuario Designado directa o indirectamente intenten hackear los sistemas del y Plataforma para acceder a sus bases de datos y obtener listas de distribución de emails, para luego realizar alguna de las acciones establecidas en esta cláusula y/o para poner estas listas de distribución a disposición de terceros a través de la cesión o venta de las mismas. Además se prohíbe cualquier uso no autorizado de los contenidos de la Plataforma, lo que constituirá una violación de las leyes y regulaciones en las materias de derechos de autor y de propiedad intelectual. Pudiendo web service Equifax eliminar el perfil de Usuario y pudiendo poner término al presente contrato. Sin perjuicio del derecho de ejercer todas las acciones pertinentes, tanto civiles como penales, destinadas al resguardar los legítimos derechos de propiedad intelectual de web service Equifax.</p>
                        <p align="justify"><b>DÉCIMO SEGUNDO:</b> Fuerza Mayor. Las Partes no se hacen responsables de ninguna pérdida o daño sufrido por la otra parte, causado por un retraso o un error en el cumplimiento de las disposiciones incluidas en el presente Contrato, siempre y cuando dicho retraso o error sea causado por un impedimento que esté más allá del control de la parte en cuestión y que, por motivos razonables, no se pudiese tener en cuenta en el momento de firmar el Contrato, o cuyas consecuencias no se hayan podido evitar o superar.</p>
                        <p align="justify"><b>DÉCIMO CUARTO:</b> Exclusión de Responsabilidad. Por el presente instrumento el Usuario reconoce y declara que su acceso,  carga de antecedentes y todas la otras acciones que realice en la Plataforma, lo efectúa por su propia cuenta y riesgo, y que en consecuencia, y sin que la siguiente enumeración sea taxativa, sino que meramente ejemplar, web service Equifax no se responsabiliza de forma alguna por cualquier erros, omisión e inexactitudes en contenidos publicados por sus Usuarios Registrados. A su vez, cualquier virus, entendiendo por tal, a un objeto o dispositivo incluido en cualquier programa informático, código o archivo que puede perjudicar o, en forma alguna, afectar negativamente al funcionamiento de un programa informático, servicio de telecomunicaciones, material o red, equipo , o cualquier otro servicio o dispositivo; asimismo afectar negativamente al acceso o al funcionamiento de un programa o conjunto de datos, o afectar a la fiabilidad de cualquier programa o información (mediante la reestructuración, alteración o eliminación del programa o de la información en su totalidad o en parte o en forma alguna); o afectar negativamente a la utilización que hace el usuario, a través de gusanos, troyanos, virus y otros objetos o dispositivos similares, que pudiera infectar el equipo del Usuario producto del acceso y/o utilización de la Plataforma por parte del Usuario Registrado, por tanto, el Usuario comprende que el uso de este Sitio está sujeto a su propio riesgo. En virtud de lo anterior, si el uso dela Plataforma deriva en que el Usuario deba incurrir en reparaciones y/o correcciones, contratando algún servicio de mantención de sus equipos computacionales, estos costos deberán ser asumidos por el Usuario, sin que web service Equifax tenga responsabilidad alguna en esta materia. En este sentido expresamente se deja constancia de que web service Equifax se excluye de cualquier responsabilidad por los daños y perjuicios de cualquier naturaleza que puedan derivarse a la presencia de virus u otros elementos informáticos que pudieran producir alteraciones en los sistemas, documentos electrónicos y/o perfiles de los Usuarios.</p>
                        <p align="justify">web service Equifax declara que el sistema puede eventualmente no encontrarse disponible debido a dificultades técnicas, fallas de internet o razones ajenas a este, por lo que el Usuario comprende que web service Equifax no garantiza el acceso continuo e ininterrumpido delos servicios ofrecidos en la Plataforma y/o de módulos del mismo. En caso de interrupción del servicio, web service Equifax se compromete a que hará todo lo que esté a su alcance para restablecer la operatividad de la Plataforma y sus servicios a la brevedad, sin que de ello pudiera derivarse ningún tipo de obligación ni responsabilidad alguna para web service Equifax. En síntesis, web service Equifax se excluye de cualquier responsabilidad por los daños y/o perjuicios de cualquier naturaleza que puedan derivarse a la falta de disponibilidad y continuidad del funcionamiento del sitio y de los servicios ofrecidos en la Plataforma.</p>
                        <p align="justify">El Usuario comprende y acepta expresamente que web service Equifax tiene el derecho de monitorear la Plataforma de manera electrónica, las veces que estime conveniente, y hacer seguimiento a cualquier información y/o conductas sospechosas de Usuarios, según su propio criterio para asegurar la correcta operatividad de la Plataforma y para protegerse a sí mismo y a otros Usuarios de esta, respecto de conductas que podrían ser fraudulentas y/o atentatorias contra los derechos de los Usuarios.</p>
                        <p align="justify">Queda absolutamente prohibido que algún Usuario incurra o trate de suplantar la identidad de otra persona natural o Usuario, ergo, que lo Usuarios utilicen datos personales de terceros para crear cuentas en la Plataforma. En este sentido, web service Equifax se reserva el derecho de verificar los perfiles de manera aleatoria, verificando la veracidad de la información. En caso de detectar fraude o intento de este, web service Equifax podrá cancelar la cuenta y tomar las acciones que estime conveniente según la legislación vigente.</p>
                        <p align="justify">Queda absolutamente establecido que bajo ninguna circunstancia los colaboradores, directores y los representantes de web service Equifax serán responsables por cualquier daño generado a los Usuarios a partir del uso de la Plataforma. Los colaboradores, directores y representantes de web service Equifax no serán responsables bajo ninguna circunstancia de los daños generados por errores, omisiones, interrupciones, retrasos en la información, transmisión, virus computacionales, fallas de sistemas y otros problemas que se produzcan en la Plataforma.</p>
                        <p align="justify">Por tanto, de todos los casos enumerados previamente, se entiende que el Usuario no podrá imputarle a web service Equifax responsabilidad legal alguna ni exigir indemnizaciones ni pagos por daño emergente y/o lucro cesante, en virtud de perjuicios derivados de los casos enumerados en esta cláusula.</p>
                        <p align="justify"><b>DÉCIMO QUINTO:</b> Políticas de Privacidad. El Usuario Registrado se obliga a custodiar su Nombre de Usuario y Contraseña, los cuales son única y exclusivamente de su responsabilidad y uso exclusivo, no debiendo entregar esta información a terceros y debiendo realizar un correcto uso de las mismas. Por lo cual, web service Equifax no se hace responsable de los daños ocasionados al Usuario por mal uso de terceros del Nombre de Usuario y Contraseña. En caso de detectar mal uso de su Nombre de Usuario o Contraseña, el Usuario Registrado se obliga por el presente instrumento a dar aviso inmediato a web service Equifax, ya sea a través de la Plataforma o correo electrónico de atención.</p>
                        <p align="justify">Se establece en este contrato que el Usuario poseerá titularidad e interés sobre los datos que ingrese y se hará totalmente responsable de la legalidad, fiabilidad, integridad, exactitud y calidad de los mismos. En este sentido, web service Equifax se encargará del almacenamiento de estos datos hasta que el Perfil del usuario Registrado sea eliminado por alguna de las causales establecidas en la cláusula Novena y Décimo Primera. En caso de del Perfil de Usuario Registrado, todos los datos del cliente serán eliminados de los registros de la Plataforma.</p>
                        <p align="justify">Por tanto, el Usuario Registrado acepta que web service Equifax acceda y haga todos los análisis comerciales, legales y tributarios pertinentes de la información que este entrega y/o carga en la Plataforma, aceptando también que puede ser almacenada en servidos fuera del país.</p>
                        <p align="justify">El Usuario es quien debe asegurarse de que está autorizado a transferirnos la información legal, comercial y tributaria pertinente, de modo que web service Equifax pueda procesarla con la finalidad de poder entregar sus servicios de forma óptima en tiempo y forma.</p>
                        <p align="justify">Se deja expresamente establecido en el presente instrumento que todo el material o contenido de la Plataforma, incluyendo a modo de ejemplo y no taxativo los logotipos, diseños, textos, formularios, gráficos, datos, artículos, documentos, fotos, imágenes, su organización, softwares, códigos fuente, entre otros, y en general cualquier otra información contenida en la Plataforma es de exclusiva propiedad de web service Equifax y se encuentra protegido por las normas de propiedad intelectual y por los tratados internacionales vigentes en Chile en esta materia. El Usuario declara aceptar y comprender que todo el contenido que se encuentre en el web service Equifax/ y su Plataforma es de propiedad de web service Equifax.</p>
                        <p align="justify">Es posible que la Plataforma recopile información sobre el uso que los Usuarios hagan de Internet, utilizando archivos cookie que se guardan en el navegador o en el disco duro del ordenador de los Usuarios. Esto ayuda a que web service Equifax pueda mejorar su sitio web y Plataforma y a ofrecer un mejor servicio y más personalizado a los Usuarios. Cuando el Usuario realice el enrolamiento en la Plataforma, acepta expresamente a que web service Equifax utilice cookies.</p>
                        <p align="justify">web service Equifax se compromete en el presente Contrato, a no alterar y/o modificar la información que el Usuario entregue o cargue en la Plataforma, así como a mantener en reserva esta información respecto de terceros, salvo expresa autorización del usuario Representante.</p>
                        <p align="justify"><b>DÉCIMO SEXTO:</b> Domicilio. Para todos los efectos derivados de este Contrato, las partes fijan su domicilio en la ciudad y comuna de Santiago de Chile, y se someten a la Jurisdicción de sus Tribunales de Justicia.</p>
                        <p align="justify"><b>DÉCIMO SÉPTIMO:</b> Avisos. El Usuario, en este instrumento, acepta que deberá notificar a web service Equifax por escrito ante cualquier reclamo concerniente al uso de la Plataforma y a los contenidos y servicios provistos en la misma. Teniendo web service Equifax un plazo de 5 días hábiles para para responder al Usuario, antes de comenzar cualquier acción legal contra web service Equifax. Este plazo puede ser ampliado a 15 días corridos en caso que web service Equifax necesite recabar mucha información para dar respuesta al Usuario. Esto lo pondrá en conocimiento del Usuario a través de la Plataforma o mediante correo electrónico.</p>
                        <p align="justify">Todas las comunicaciones que el Usuario deba o quiera hacer llegar a web service Equifax, se efectuarán por correo electrónico. Asimismo, todas las comunicaciones que web service Equifax deba o quiera dirigir al Usuario, se efectuarán por correo electrónico dirigido a la(s) dirección(es) electrónica(s) designada(s) por el Usuario en el enrolamiento y onboarding.</p>
                        <p align="justify"><b>DÉCIMO OCTAVO:</b> Consentimiento web service Equifax. web service Equifax presta anticipadamente su consentimiento al presente Contrato, solo debiendo ser aceptado por el Usuario para que este quede perfecto y produzca todos los efectos pertinentes a las partes.</p>
                        <p align="justify"><b>DECIMO NOVENO:</b> Copias del Contrato. El presente Contrato se pondrá a disposición de los Usuarios mediante correo electrónico, quedando así en poder esta.</p>
                        <p align="justify"><b>VIGÉSIMO:</b> Declaración jurada. Las partes declaran bajo juramento y su propia responsabilidad, que detentan poderes y representación suficiente para obligar tanto a sus respectivas sociedades como a ellos mismos en el caso de personas naturales, en los términos que da cuenta el presente instrumento.</p>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    <button id="btnContrato2" disabled="true" name="btnContrato2" type="button" class="btn btn-primary" onclick="confirmarContrato('chkEquifax');" data-dismiss="modal" >Aceptar</button>
                </div>

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalchkTransunion" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg" style="width: 80%">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Contrato Transunion</h4>
            </div>
            <div class="modal-body" id="modalTerminos-body">
                <div class="row">
                    <div class="col-xs-12" style="overflow-y: scroll; height: 350px;" id="contrato3">
                        <center><img src="assets/layouts/layout4/img/avatar9.jpg" style="width: 10%;" /></center>
                        <center><h3>CONTRATO DE USO, TÉRMINOS Y CONDICIONES <br />DEL SITIO WEB Y PLATAFORMA</h3></center>
                        <center><h4 style="color: #0563C1;">Web Service Transunion</h4></center>
                        <p align="justify">El presente contrato contiene los términos y condiciones para el acceso y uso del web service Transunion y de los servicios ofrecidos en su plataforma (<b>Plataforma de Evaluación de Riesgo</b>).</p>
                        <p align="justify">El contrato tendrá efecto caso a caso, entre web service Transunion, por una parte, y por la otra, el Usuario que suscribe el mismo, de acuerdo al párrafo precedente y con las cláusulas que a continuación se indican:</p>
                        <p align="justify"><b>PRIMERO:</b> Antecedentes. Transunion, es una plataforma que se dedica a ofrecer datos relevantes para la evaluación de créditos, el Usuario podrá realizar una evaluación crediticia de Personas Naturales y Jurídicas, para distintos productos financieros.</p>
                        <p align="justify"><b>SEGUNDO:</b> Conceptos. Para todos los efectos del presente Contrato de Uso, Términos y Condiciones del web service Transunion, y de los demás Acuerdos Específicos o Puntuales, se entenderá que las palabras que a continuación se definen, tendrán el significado, sentido interpretación que para cada una se señala. CONCEPTOS:</p>
                        <p align="justify">
                        <ul>
                            <li><u>Plataforma:</u> significa la plataforma web que es de propiedad y que opera bajo el web service Transunion, que se encuentra disponible en la dirección electrónica web service Transunion (https://techservices.transunion.com), además los servicios prestados por web service Transunion a través de la misma, sus los contenidos disponibles, actuales y los que se agreguen y modifiquen en el transcurso del tiempo.</li>
                            <li><u>Contrato:</u> es el presente contrato denominado “Contrato de Uso, Términos y Condiciones del web service Transunion” aceptado por el Usuario al registrarse en la Plataforma y que tiene efectos entre web service Transunion y el Usuario suscriptor del mismo, que establece y regula los términos y condiciones de uso del sitio web o Plataforma.</li>
                            <li><u>Plataforma:</u> se entiende por esta, la sección o módulo que se encuentra en el web service Transunion, y que tiene como finalidad ofrecer los servicios de web service Transunion a los Usuarios que se registren en ella, comprendiendo desde el PERDILAMIENTO PARA EVALUACIONES CREDITICIAS y EVALUACIONES DE RUT DE CLIENTES.</li>
                            <li><u>Documentos Electrónicos:</u> se entenderá por tal, lo establecido en la Ley 19.799 de la República, en el artículo 2 letra d), es decir, “toda representación de un hecho, imagen o idea que sea creada, enviada, comunicada o recibida por medios electrónicos y almacenada de un modo idóneo para permitir su uso posterior”.</li>
                            <li><u>Contenidos:</u> es todo el material de la Plataforma, incluyendo a modo de ejemplo y no de forma taxativa los textos, datos, diseños, logotipos, artículos, formularios, documentos, fotos, imágenes, contenidos en general y cualquier otra información contenida en el sitio web.</li>
                            <li><u>Usuario:</u> se entiende por Usuario, toda persona natural o jurídica que ingresa a la Plataforma, que navega utilizando los servicios y la información contenida en ella. El Usuario es aquel que cuenta con “Nombre de Usuario” y “Contraseña”. A su vez, cabe distinguir que el Usuario puede ser un Usuario No Registrado o bien un Usuario Registrado (Usuario Representante y Usuario Designado).</li>
                            <li><u>Nombre de Usuario:</u> es el nombre que identifica al Usuario Registrado, ya sea el nombre de la persona natural o la razón social de la persona jurídica que desea financiamiento a través de los servicios ofrecidos en la Plataforma. </li>
                            <li><u>Contraseña:</u> es la combinación alfanumérica, designada por el Usuario al registrarse, la cual es requerida para autentificarse o iniciar sesión en esta.</li>
                            <li><u>Usuario Registrado:</u> es, indistintamente, cualquier Usuario que ha completado y confirmado exitosamente el proceso de Registro del Usuario en el web service Transunion, y que, por tanto, cuenta con un Nombre de Usuario y Contraseña para autentificarse en la Plataforma.</li>
                            <li><u>Usuario No Registrado:</u> es aquel Usuario que no ha completado con éxito el proceso de Registro del Usuario, y que por tanto, no posee un Nombre de Usuario y Contraseña. El Usuario No Registrado puede navegar por contenidos del sitio web, no obstante, la navegación por ciertos contenidos y secciones se encuentran reservadas únicamente para Usuarios Registrados en la Plataforma. Del mismo modo los Usuarios que no confirmen el correo de enrolamiento en el plazo de 8 horas quedarán como Usuarios No Registrados para todos los efectos del presente instrumento.</li>
                            <li><u>Usuario Representante:</u> Persona natural que acredite que cuenta con las facultades de suscribir con web service Transunion la utilización de los servicios, otorgar acceso a estos a otros Usuarios y administrar la información de evaluaciones de credito. El o los Usuario(s) Representante(s) es (son) quien(es) deberá(n) concurrir a la firma del Contrato Marco.</li>
                            <li><u>Cuenta:</u> es aquella a la que el Usuario accede al autentificarse, instancia que corresponde a la página personal del Usuario Registrado en la Plataforma. Su Cuenta le permite acceder a distintos servicios, entre los que se encuentran el Perfil de Usuario, registro de eventos, evaluación crediticia, entre otros.</li>
                        </ul>
                        </p>
                        <p align="justify"><b>TERCERO:</b> Aspectos Generales. El Usuario acepta usar el Contenido y la Plataforma sólo con propósitos que se enmarquen dentro del marco legal, en conformidad al orden público y según los términos y condiciones del presente Contrato, así como también sujeto a los términos y condiciones específicas a cada servicio contenidos en los Acuerdos Específicos o Puntuales. Se deja constancia que web service Transunion no asegura que los contenidos y los servicios prestados a través de la Plataforma son apropiados fuera del país, por tanto, si el Usuario accede a la Plataforma desde fuera de Chile, el Usuario comprende y acepta que el acceso y su uso es bajo su responsabilidad y éste debe asegurarse de cumplir con las leyes y normas específicas de su jurisdicción.</p>
                        <p align="justify"><b>CUARTO:</b> Requisitos Para Ser Usuario. La finalidad de la Plataforma es otorgar evaluaciones crediticias de forma rápida a los Usuarios Registrados en esta, por tanto para poder acceder a ser Usuario Registrado de la Plataforma, se deben contar con un mínimo de antecedentes:</p>
                        <p align="justify"><b>QUINTO:</b> Aceptación. El Usuario manifestará su absoluta conformidad reconociendo y declarando haber leído, comprendido y aceptado íntegramente el texto del Contrato de Uso, Términos y Condiciones del web service Transunion en  todas sus partes, aceptando ser regido por todos sus términos y condiciones, y estando sujeto a las leyes y regulaciones aplicables. Una vez pulsado el botón “Acepto” este Contrato será vinculante y obligará a las partes. Si el Usuario no acepta el presente Contrato, deberá abstenerse de acceder, navegar y usar la Plataforma inmediatamente. Asimismo, no podrá hacer uso de sus servicios ni de la información disponible en el sitio web.</p>
                        <p align="justify">En el caso que web service Transunion requiera que la aceptación de los términos y condiciones propuestos en los Acuerdos Específicos o Puntuales, descritas en el inciso anterior, al Usuario y este se negara o no consintiera, web service Transunion se encontrará plenamente facultado para denegar a dicho Usuario el acceso a secciones específicas o módulos relevantes de la Plataforma y de las páginas web que lo conforman.</p>   
                        <p align="justify"><b>SÉPTIMO:</b> Modificaciones. Por el presente instrumento se deja constancia que web service Transunion podrá en cualquier momento y las veces que lo estime conveniente, agregar, corregir, modificar, eliminar y/o actualizar los términos y condiciones de este Contrato, debiendo notificar oportunamente al Usuario Registrado de las modificaciones que se desee efectuar al Contrato a través de la publicación de una notificación dirigida al Usuario cuando este intente acceder al sitio web. Los cambios que se hagan a este Contrato se harán efectivos a partir del momento en que el Usuario acepte las referidas modificaciones. A este respecto, se deja expresa constancia de que web service Transunion podrá cambiar y/o restringir el acceso a todo o a una parte de la Plataforma sin previa notificación al Usuario y sin responsabilidad alguna para web service Transunion en caso que el Usuario estime que se le haya generado un daño a partir de ese cambio o restricción. A su vez, web service Transunion tendrá la facultad de condicionar el acceso a ciertas secciones específicas o módulos de la Plataforma a la aceptación de los Acuerdos Específicos o Puntuales relevantes, de conformidad con lo expresado en la cláusula precedente.</p>   
                        <p align="justify">En el evento que ocurra un conflicto entre las disposiciones del presente Contrato, y una o más de las contenidos en uno o más de los Acuerdos Específicos o Puntuales, se entenderá que las condiciones y términos contenidas en estos últimos, primarán por sobre las condiciones y términos generales de este Contrato, para dichos módulos o secciones específicas.</p>   
                        <p align="justify"><b>OCTAVO:</b> Autonomía de Las Cláusulas. En el caso que alguna cláusula de este Contrato fuese declarada como inválida, inexistente, inoponible y/o de cualquier modo ineficaz por un tribunal competente de la República, las demás las cláusulas de este Contrato y los derechos y obligaciones que de ellas emanan, mantendrán su plena vigencia y validez.</p>   
                        <p align="justify"><b>NOVENO:</b> Término Del Contrato. Este Contrato se encontrará vigente y tendrá duración indefinida mientras web service Transunion mantenga la Plataforma operativa en su sitio web. A su vez, web service Transunion se reserva el derecho de terminar de ofrecer la Plataforma, sus contenidos y los servicios que se proveen a través de esta, en cualquier momento, sin perjuicio del deber de realizar la debida notificación a los Usuarios Registrados. No obstante lo anterior, web service Transunion está facultado para poner término inmediato al Contrato en caso de decidir, a su sola discreción, desactivar la cuenta de un Usuario Registrado, en cualquiera de los siguientes casos:</p>   
                        <p align="justify">
                        <ol>
                            <li>En el evento de incurrir el Usuario en un uso no autorizado del Contenido de la Plataforma de conformidad con lo dispuesto la cláusula Décimo Primera denominada Prohibiciones del presente Contrato.</li>
                            <li>En caso de comprobar que alguna de las informaciones suministradas por el Usuario fuese falsa, incompleta, inexacta, errónea, y/o de cualquier forma poco fidedigna.</li>
                            <li>En el evento de incurrir el Usuario en alguna infracción grave de sus obligaciones bajo el Contrato y/o los Acuerdos Específicos.</li>
                        </ol>
                        </p>   
                        <p align="justify">Cabe precisar que en el caso que el Usuario incurra en alguna de las acciones recién mencionadas, se entenderá que el Contrato y el Registro de Usuario han expirado desde el momento en que web service Transunion así lo notifique al Usuario mediante correo electrónico dirigido a la dirección registrada por éste en la Plataforma. Sin embargo, subsistirán y se mantendrán vigentes aun después del término del Contrato las cláusulas que tratan sobre, Responsabilidades y Exclusiones, (iv) Ley Aplicable y Tribunal competente, (v) y, en general cualquier otra materia que por su naturaleza perdure a pesar del término de este Contrato. Además el Usuario Registrado no podrá modificar parte alguna de los contenidos o de la totalidad de estos, que se encuentren publicados en la Plataforma.</p>
                        <p align="justify">En conformidad con lo dispuesto en la letra b) del artículo 3 bis de la Ley de Protección al Consumidor, se deja expresa constancia en presente instrumento que el Usuario no podrá retractarse del presente Contrato, sus anexos y/o Acuerdos Específicos o Puntuales. En el caso que el Usuario desee poner término al presente Contrato, deberá poner en conocimiento a web service Transunion a través de un correo electrónico enviado por el Usuario Representante de la persona jurídica o del correo ingresado por el Usuario que es persona natural.</p>
                        <p align="justify"><b>DÉCIMO:</b> Responsabilidad del Usuario. Por el presente instrumento el Usuario se obliga expresamente a que toda la información que proporcione a web service Transunion, ya sea a través de los formularios de Registro de Usuario y/o de otros medios que web service Transunion haya definido con el Usuario debe ser absolutamente fidedigna, veraz y comprobable. Del mismo modo, el Usuario Registrado es responsable exclusivo de mantener su información personal siempre actualizada, tanto como persona natural o jurídica. El Usuario, a través de la aceptación de este contrato, garantiza a web service Transunion la autenticidad de todos aquellos datos proporcionados a la Plataforma, siendo el Usuario el único responsable por los daños y perjuicios generados por cualquier inexactitud en la información que pudieran recaer sobre web service Transunion, sobre sí mismo y/o sobre terceros. A su vez, se deja establecido en el presente instrumento que web service Transunion no se hace responsable por las faltas en que incurra el Usuario Registrado respecto de ésta cláusula.</p>
                        <p align="justify"><b>DÉCIMO PRIMERO:</b> Prohibiciones. El Usuario se compromete en este acto a no crear cuentas o utilizar la Plataforma para proporcionar datos falsos. En este sentido el Usuario se compromete a que el Contenido no podrá ser modificado, reproducido, copiado, republicado, reutilizado, redistribuido, expuesto o posteado por el Usuario en ninguna forma y bajo ningún medio, incluyendo a modo de ejemplo y sin que la enumeración sea taxativa, grabaciones, medios electrónicos, fotocopias, mecánicos, u otros, sin la previa autorización por escrito por parte de web service Transunion. En efecto, se deja expresamente establecido que ningún tipo de información que se encuentre en la Plataforma podrá ser utilizado por terceros sin la previa autorización escrita de web service Transunion y para cada vez que se requieran.</p>
                        <p align="justify">El Usuario Registrado exclusivamente para fines de uso personal y sólo en relación y en función a un correcto uso para el Usuario de los servicios que le provee la Plataforma podrá acceder, descargar, imprimir cualquier contenido.</p>
                        <p align="justify">El Usuario Registrado no podrá reproducir un sitio “espejo” del sitio web de web service Transunion o de parte de éste, mantenerlo en otros servidores ni publicarlos en Internet.</p>
                        <p align="justify">Independiente de las prohibiciones establecidas en la presente cláusula, el Usuario se obliga a abstenerse de recopilar desde la Plataforma datos con finalidad publicitaria. Así como transmitir desde la Plataforma, cadenas de mensajes o cualquier otro tipo de mensaje interno y/o correo electrónico masivo no solicitado, postear, subir, enviar por email o poner disponible cualquier material promocional o publicitario y/o cualquier tipo de comunicación con fines de venta u otros fines comerciales, que no fue solicitado y que no cuenta con la previa autorización de los terceros afectados.</p>
                        <p align="justify">También se prohíbe expresamente que el Usuario Registrado, No Registrado, Usuario Representante Usuario Designado directa o indirectamente intenten hackear los sistemas del y Plataforma para acceder a sus bases de datos y obtener listas de distribución de emails, para luego realizar alguna de las acciones establecidas en esta cláusula y/o para poner estas listas de distribución a disposición de terceros a través de la cesión o venta de las mismas. Además se prohíbe cualquier uso no autorizado de los contenidos de la Plataforma, lo que constituirá una violación de las leyes y regulaciones en las materias de derechos de autor y de propiedad intelectual. Pudiendo web service Transunion eliminar el perfil de Usuario y pudiendo poner término al presente contrato. Sin perjuicio del derecho de ejercer todas las acciones pertinentes, tanto civiles como penales, destinadas al resguardar los legítimos derechos de propiedad intelectual de web service Transunion.</p>
                        <p align="justify"><b>DÉCIMO SEGUNDO:</b> Fuerza Mayor. Las Partes no se hacen responsables de ninguna pérdida o daño sufrido por la otra parte, causado por un retraso o un error en el cumplimiento de las disposiciones incluidas en el presente Contrato, siempre y cuando dicho retraso o error sea causado por un impedimento que esté más allá del control de la parte en cuestión y que, por motivos razonables, no se pudiese tener en cuenta en el momento de firmar el Contrato, o cuyas consecuencias no se hayan podido evitar o superar.</p>
                        <p align="justify"><b>DÉCIMO CUARTO:</b> Exclusión de Responsabilidad. Por el presente instrumento el Usuario reconoce y declara que su acceso,  carga de antecedentes y todas la otras acciones que realice en la Plataforma, lo efectúa por su propia cuenta y riesgo, y que en consecuencia, y sin que la siguiente enumeración sea taxativa, sino que meramente ejemplar, web service Transunion no se responsabiliza de forma alguna por cualquier erros, omisión e inexactitudes en contenidos publicados por sus Usuarios Registrados. A su vez, cualquier virus, entendiendo por tal, a un objeto o dispositivo incluido en cualquier programa informático, código o archivo que puede perjudicar o, en forma alguna, afectar negativamente al funcionamiento de un programa informático, servicio de telecomunicaciones, material o red, equipo , o cualquier otro servicio o dispositivo; asimismo afectar negativamente al acceso o al funcionamiento de un programa o conjunto de datos, o afectar a la fiabilidad de cualquier programa o información (mediante la reestructuración, alteración o eliminación del programa o de la información en su totalidad o en parte o en forma alguna); o afectar negativamente a la utilización que hace el usuario, a través de gusanos, troyanos, virus y otros objetos o dispositivos similares, que pudiera infectar el equipo del Usuario producto del acceso y/o utilización de la Plataforma por parte del Usuario Registrado, por tanto, el Usuario comprende que el uso de este Sitio está sujeto a su propio riesgo. En virtud de lo anterior, si el uso dela Plataforma deriva en que el Usuario deba incurrir en reparaciones y/o correcciones, contratando algún servicio de mantención de sus equipos computacionales, estos costos deberán ser asumidos por el Usuario, sin que web service Transunion tenga responsabilidad alguna en esta materia. En este sentido expresamente se deja constancia de que web service Transunion se excluye de cualquier responsabilidad por los daños y perjuicios de cualquier naturaleza que puedan derivarse a la presencia de virus u otros elementos informáticos que pudieran producir alteraciones en los sistemas, documentos electrónicos y/o perfiles de los Usuarios.</p>
                        <p align="justify">web service Transunion declara que el sistema puede eventualmente no encontrarse disponible debido a dificultades técnicas, fallas de internet o razones ajenas a este, por lo que el Usuario comprende que web service Transunion no garantiza el acceso continuo e ininterrumpido delos servicios ofrecidos en la Plataforma y/o de módulos del mismo. En caso de interrupción del servicio, web service Transunion se compromete a que hará todo lo que esté a su alcance para restablecer la operatividad de la Plataforma y sus servicios a la brevedad, sin que de ello pudiera derivarse ningún tipo de obligación ni responsabilidad alguna para web service Transunion. En síntesis, web service Transunion se excluye de cualquier responsabilidad por los daños y/o perjuicios de cualquier naturaleza que puedan derivarse a la falta de disponibilidad y continuidad del funcionamiento del sitio y de los servicios ofrecidos en la Plataforma.</p>
                        <p align="justify">El Usuario comprende y acepta expresamente que web service Transunion tiene el derecho de monitorear la Plataforma de manera electrónica, las veces que estime conveniente, y hacer seguimiento a cualquier información y/o conductas sospechosas de Usuarios, según su propio criterio para asegurar la correcta operatividad de la Plataforma y para protegerse a sí mismo y a otros Usuarios de esta, respecto de conductas que podrían ser fraudulentas y/o atentatorias contra los derechos de los Usuarios.</p>
                        <p align="justify">Queda absolutamente prohibido que algún Usuario incurra o trate de suplantar la identidad de otra persona natural o Usuario, ergo, que lo Usuarios utilicen datos personales de terceros para crear cuentas en la Plataforma. En este sentido, web service Transunion se reserva el derecho de verificar los perfiles de manera aleatoria, verificando la veracidad de la información. En caso de detectar fraude o intento de este, web service Transunion podrá cancelar la cuenta y tomar las acciones que estime conveniente según la legislación vigente.</p>
                        <p align="justify">Queda absolutamente establecido que bajo ninguna circunstancia los colaboradores, directores y los representantes de web service Transunion serán responsables por cualquier daño generado a los Usuarios a partir del uso de la Plataforma. Los colaboradores, directores y representantes de web service Transunion no serán responsables bajo ninguna circunstancia de los daños generados por errores, omisiones, interrupciones, retrasos en la información, transmisión, virus computacionales, fallas de sistemas y otros problemas que se produzcan en la Plataforma.</p>
                        <p align="justify">Por tanto, de todos los casos enumerados previamente, se entiende que el Usuario no podrá imputarle a web service Transunion responsabilidad legal alguna ni exigir indemnizaciones ni pagos por daño emergente y/o lucro cesante, en virtud de perjuicios derivados de los casos enumerados en esta cláusula.</p>
                        <p align="justify"><b>DÉCIMO QUINTO:</b> Políticas de Privacidad. El Usuario Registrado se obliga a custodiar su Nombre de Usuario y Contraseña, los cuales son única y exclusivamente de su responsabilidad y uso exclusivo, no debiendo entregar esta información a terceros y debiendo realizar un correcto uso de las mismas. Por lo cual, web service Transunion no se hace responsable de los daños ocasionados al Usuario por mal uso de terceros del Nombre de Usuario y Contraseña. En caso de detectar mal uso de su Nombre de Usuario o Contraseña, el Usuario Registrado se obliga por el presente instrumento a dar aviso inmediato a web service Transunion, ya sea a través de la Plataforma o correo electrónico de atención.</p>
                        <p align="justify">Se establece en este contrato que el Usuario poseerá titularidad e interés sobre los datos que ingrese y se hará totalmente responsable de la legalidad, fiabilidad, integridad, exactitud y calidad de los mismos. En este sentido, web service Transunion se encargará del almacenamiento de estos datos hasta que el Perfil del usuario Registrado sea eliminado por alguna de las causales establecidas en la cláusula Novena y Décimo Primera. En caso de del Perfil de Usuario Registrado, todos los datos del cliente serán eliminados de los registros de la Plataforma.</p>
                        <p align="justify">Por tanto, el Usuario Registrado acepta que web service Transunion acceda y haga todos los análisis comerciales, legales y tributarios pertinentes de la información que este entrega y/o carga en la Plataforma, aceptando también que puede ser almacenada en servidos fuera del país.</p>
                        <p align="justify">El Usuario es quien debe asegurarse de que está autorizado a transferirnos la información legal, comercial y tributaria pertinente, de modo que web service Transunion pueda procesarla con la finalidad de poder entregar sus servicios de forma óptima en tiempo y forma.</p>
                        <p align="justify">Se deja expresamente establecido en el presente instrumento que todo el material o contenido de la Plataforma, incluyendo a modo de ejemplo y no taxativo los logotipos, diseños, textos, formularios, gráficos, datos, artículos, documentos, fotos, imágenes, su organización, softwares, códigos fuente, entre otros, y en general cualquier otra información contenida en la Plataforma es de exclusiva propiedad de web service Transunion y se encuentra protegido por las normas de propiedad intelectual y por los tratados internacionales vigentes en Chile en esta materia. El Usuario declara aceptar y comprender que todo el contenido que se encuentre en el web service Transunion/ y su Plataforma es de propiedad de web service Transunion.</p>
                        <p align="justify">Es posible que la Plataforma recopile información sobre el uso que los Usuarios hagan de Internet, utilizando archivos cookie que se guardan en el navegador o en el disco duro del ordenador de los Usuarios. Esto ayuda a que web service Transunion pueda mejorar su sitio web y Plataforma y a ofrecer un mejor servicio y más personalizado a los Usuarios. Cuando el Usuario realice el enrolamiento en la Plataforma, acepta expresamente a que web service Transunion utilice cookies.</p>
                        <p align="justify">web service Transunion se compromete en el presente Contrato, a no alterar y/o modificar la información que el Usuario entregue o cargue en la Plataforma, así como a mantener en reserva esta información respecto de terceros, salvo expresa autorización del usuario Representante.</p>
                        <p align="justify"><b>DÉCIMO SEXTO:</b> Domicilio. Para todos los efectos derivados de este Contrato, las partes fijan su domicilio en la ciudad y comuna de Santiago de Chile, y se someten a la Jurisdicción de sus Tribunales de Justicia.</p>
                        <p align="justify"><b>DÉCIMO SÉPTIMO:</b> Avisos. El Usuario, en este instrumento, acepta que deberá notificar a web service Transunion por escrito ante cualquier reclamo concerniente al uso de la Plataforma y a los contenidos y servicios provistos en la misma. Teniendo web service Transunion un plazo de 5 días hábiles para para responder al Usuario, antes de comenzar cualquier acción legal contra web service Transunion. Este plazo puede ser ampliado a 15 días corridos en caso que web service Transunion necesite recabar mucha información para dar respuesta al Usuario. Esto lo pondrá en conocimiento del Usuario a través de la Plataforma o mediante correo electrónico.</p>
                        <p align="justify">Todas las comunicaciones que el Usuario deba o quiera hacer llegar a web service Transunion, se efectuarán por correo electrónico. Asimismo, todas las comunicaciones que web servive Transunion deba o quiera dirigir al Usuario, se efectuarán por correo electrónico dirigido a la(s) dirección(es) electrónica(s) designada(s) por el Usuario en el enrolamiento y onboarding.</p>
                        <p align="justify"><b>DÉCIMO OCTAVO:</b> Consentimiento web servive Transunion. web service Transunion presta anticipadamente su consentimiento al presente Contrato, solo debiendo ser aceptado por el Usuario para que este quede perfecto y produzca todos los efectos pertinentes a las partes.</p>
                        <p align="justify"><b>DECIMO NOVENO:</b> Copias del Contrato. El presente Contrato se pondrá a disposición de los Usuarios mediante correo electrónico, quedando así en poder esta.</p>
                        <p align="justify"><b>VIGÉSIMO:</b> Declaración jurada. Las partes declaran bajo juramento y su propia responsabilidad, que detentan poderes y representación suficiente para obligar tanto a sus respectivas sociedades como a ellos mismos en el caso de personas naturales, en los términos que da cuenta el presente instrumento.</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button id="btnContrato3" disabled="true" name="btnContrato3" type="button" class="btn btn-primary" onclick="confirmarContrato('chkTransunion');" data-dismiss="modal" >Aceptar</button>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="modalBlackList" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="tblBLCont">
                    <table id="tblBL" style="text-align: center;" class="table table-bordered table-striped">
                        <thead style="text-align: center;">
                            <tr>
                                <th style="text-align: center;">ESTADO</th>
                                <th style="text-align: center;">COMENTARIO</th>
                                <th style="text-align: center;">FECHA</th>
                            </tr>
                        </thead>
                        <tbody>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--
<div class="modal fade" id="ALERTVIEW" role="dialog">
    <div class="modal-dialog">

         Modal content
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"></h4>
            </div>
            <div class="modal-body">
                <div id="ALERTVIEW-div">
                    <iframe name="modalVisualizacionDocFrame" style="width: 100%; min-height: 700px;">
                        
                    </iframe>

                </div>
            </div>
            <div class="modal-footer">
                <center>
                    <div class="col-sm-4">
                    </div>
                    <div class="col-sm-4">

                    </div>
                    <div class="col-sm-4">  
                        <button id="boton-fun" class="btn btn-block md rojo" data-dismiss="modal"><span class="fa fa-times"></span> Cerrar</button>
                    </div>
                </center>
            </div>
        </div>

    </div>
</div>-->

<script src="dist/js/sweetalert.min.js"></script>
<script src="/js/contrato.js" type="text/javascript"></script>