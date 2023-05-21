<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ProyectoFinal.Pruebamaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <!-- Carousel Start -->
            <div id="carousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel" data-slide-to="1"></li>
                    <li data-target="#carousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="/Fotos Inicio/Carrusel1.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 style="color:#FF0000" class="animated fadeInLeft">Tu socio sanitario de mayor confianza</h1>
                            <p  class="animated fadeInRight">Estamos para ayudarte con las discapacidades o condiciones que se te dificulten para que puedas llevar una vida sana.</p>
                           
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="Fotos Inicio/Carrusel2.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1 style="color:#076328" class="animated fadeInLeft">Cita en línea</h1>
                            <p class="animated fadeInRight">Obtén apoyo en todo momento para las emergencias. Hemos introducido el principio de la medicina familiar.</p>
                            
                        </div>
                    </div>

                    <div class="carousel-item">
                        <img src="Fotos Inicio/Carrusel3.jpg" alt="Carousel Image">
                        <div class="carousel-caption">
                            <h1   style="color:#D0E13B" class="animated fadeInLeft">Casos de emergencia</h1>
                            <p class="animated fadeInRight">Consiga apoyo en todo momento para las emergencias, estamos disponibles para tratar su caso.</p>
                            <a class="btn animated fadeInUp" href="#">Consiga una cita</a>
                        </div>
                    </div>
                </div>

                <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Anterior</span>
                </a>
                <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Siguiente</span>
                </a>
            </div>
            <!-- Carousel End -->
            
            
            <!-- Top Feature Start-->
            <div class="feature-top">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-clock"></i>
                                <h3>Eficiencia</h3>
                                <p>En la asignación de citas</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-check-circle"></i>
                                <h3>Eficacia</h3>
                                <p>En cada una de las citas</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-thumbs-up"></i>
                                <h3>Exitosas</h3>
                                <p>100% citas online y presenciales</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="feature-item">
                                <i class="far fa-handshake"></i>
                                <h3>Soporte</h3>
                                <p>Para todos los pacientes</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Top Feature End-->
            
            
            <!-- About Start -->
            <div class="about">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5 col-md-6">
                            <div class="about-img">
                                <img src="Fotos Inicio/AcercaDe.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6">
                            <div class="section-header">
                                <h2>Aprende acerca de nosotros</h2>
                            </div>
                            <div class="about-text">
                                <p>
                                    Somos una empresa que gestiona el riesgo de salud de sus afiliados y sus familias con enfoque preventivo, de forma amable, confiable y eficiente.
                                </p>
                                <p>
                                   Contamos con una gran variedad de tecnología de primera clase para el apoyo de cada diagnóstico sin dejar de lado la calidad de nuestro personal médico es excelente, contando con los mejores profesionales dispuestos a ayudarte.
                                </p>
                                <a class="btn" href="leerMas.aspx">Learn More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- About End -->


            <!-- Service Start -->
            <div class="service">
                <div class="container">
                    <div class="section-header">
                        <h2>Nuestras áreas especiales</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fas fa-heartbeat"></i>
                                </div>
                                <h3>Cardiología</h3>
                                <p>
                                   La cardiología es la rama de la medicina que se encarga del estudio, diagnóstico y tratamiento de las enfermedades del corazón y del sistema circulatorio.
                                </p>
                                <a class="btn" href="leerMas.aspx">Leer más</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fas fa-tooth"></i>
                                </div>
                                <h3>Odontología</h3>
                                <p>
                                   Diagnóstico, tratamiento y prevención de enfermedades en el aparato estomatognático, los dientes, las encías, el tejido periodontal, y el maxilar e inferior.
                                </p>
                                <a class="btn" href="">Leer más</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fas fa-child"></i>
                                </div>
                                <h3>Cuidado de niños</h3>
                                <p>
                                   Nos vemos comprometidos a entregar una buena experiencia a nuestros pacientes mas pequeños para que tengan un muy buen recuerdo.
                                </p>
                                <a class="btn" href="">Leer más</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                               <i class="fas fa-lungs"></i>
                                </div>
                                <h3>Neumología</h3>
                                <p>
                                   Estudio de las enfermedades del aparato respiratorio teniendo en cuenta el diagnóstico, tratamiento y prevención de las enfermedades del pulmón, la pleura y el mediastino.
                                </p>
                                <a class="btn" href="">Leer más</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="far fa-eye"></i>
                                </div>
                                <h3>Oftalmología</h3>
                                <p>
                                    Es la especialidad médica que estudia las enfermedades de ojo y su tratamiento, incluyendo el globo ocular, su musculatura, el sistema lagrimal y los párpados.
                                </p>
                                <a class="btn" href="">Leer más</a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="service-item">
                                <div class="service-icon">
                                    <i class="fas fa-female"></i>
                                </div>
                                <h3>Ginecología</h3>
                                <p>
                                   Significa literalmente ciencia de la mujer y en medicina hace referencia a la especialidad médica y quirúrgica que estudia el sistema reproductor femenino.
                                </p>
                                <a class="btn" href="">Leer más</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Service End -->
            
            
            <!-- Feature Start -->
            <div class="feature">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="section-header">
                                <h2>¿Por qué elegirnos?</h2>
                            </div>
                            <div class="row align-items-center feature-item">
                                <div class="col-5">
                                    <div class="feature-icon">
                                       <i class="fas fa-baby"></i>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <h3>Salud para los niños</h3>
                                    <p>
                                        Los niños son una de nuestras principales prioridades cuando hablamos de salud y vida sana.
                                    </p>
                                </div>
                            </div>
                            <div class="row align-items-center feature-item">
                                <div class="col-5">
                                    <div class="feature-icon">
                                       <i class="fas fa-user-md"></i>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <h3>Atención al paciente galardonada</h3>
                                    <p>
                                       En cada una de las áreas de las cuales necesites atención, tenemos el mejor personal, con múltiples reconocimientos tanto a nivel nacional como internacional.
                                    </p>
                                </div>
                            </div>
                            <div class="row align-items-center feature-item">
                                <div class="col-5">
                                    <div class="feature-icon">
                                        <i class="fas fa-people-arrows"></i>
                                    </div>
                                </div>
                                <div class="col-7">
                                    <h3>Asesoramiento médico</h3>
                                    <p>
                                       Podemos brindarte un seguimiento especial dependiendo de tus dificultades y/o problemas de salud.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="feature-img">
                                <img src="img/feature.jpg" alt="Feature">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Feature End -->
            
            
            <!-- Team Start -->
            <div class="team">
                <div class="container">
                    <div class="section-header">
                        <h2>Conozca a nuestros especialistas</h2>
                    </div>
                    <div class="row">
                        <div class="col-lg-3 col-md-6">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/team-1.jpg" alt="Team Image">
                                </div>
                                <div class="team-text">
                                    <h2>John Marshal</h2>
                                    <p>Internista, médico de urgencias</p>
                                    <div class="team-social">
                                        <a class="social-tw" href="https://twitter.com/doctormacias?s=08"><i class="fab fa-twitter"></i></a>
                                        <a class="social-fb" href="https://www.facebook.com/realdoctormike/"><i class="fab fa-facebook-f"></i></a>
                                        <a class="social-li" href="https://www.linkedin.com/in/dandoctoroff"><i class="fab fa-linkedin-in"></i></a>
                                        <a class="social-in" href="https://www.instagram.com/dr.rodrigocaicedo_dermatologia/?utm_medium=copy_link"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/team-2.jpg" alt="Team Image">
                                </div>
                                <div class="team-text">
                                    <h2>Dylan Adams</h2>
                                    <p>Cirujano, Сardiólogo</p>
                                    <div class="team-social">
                                        <a class="social-tw" href="https://twitter.com/DrVicOficial?s=08"><i class="fab fa-twitter"></i></a>
                                        <a class="social-fb" href="https://www.facebook.com/stiven.589100"><i class="fab fa-facebook-f"></i></a>
                                        <a class="social-li" href="https://www.linkedin.com/in/rafaelsus"><i class="fab fa-linkedin-in"></i></a>
                                        <a class="social-in" href="https://instagram.com/doctor.negrete?utm_medium=copy_link"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/team-3.jpg" alt="Team Image">
                                </div>
                                <div class="team-text">
                                    <h2>Gloria Edwards</h2>
                                    <p>Internista, médico generalista</p>
                                    <div class="team-social">
                                        <a class="social-tw" href="https://twitter.com/doctorgaona?s=08"><i class="fab fa-twitter"></i></a>
                                        <a class="social-fb" href="https://www.facebook.com/medicina.funcional.3"><i class="fab fa-facebook-f"></i></a>
                                        <a class="social-li" href="https://www.linkedin.com/in/vanessa-giraldo-aa24a3106"><i class="fab fa-linkedin-in"></i></a>
                                        <a class="social-in" href="https://instagram.com/doctor.mike?utm_medium=copy_link"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="team-item">
                                <div class="team-img">
                                    <img src="img/team-4.jpg" alt="Team Image">
                                </div>
                                <div class="team-text">
                                    <h2>Josh Dunn</h2>
                                    <p>Cirujano ortopédico</p>
                                    <div class="team-social">
                                        <a class="social-tw" href="https://twitter.com/DoctorMime?s=08"><i class="fab fa-twitter"></i></a>
                                        <a class="social-fb" href="https://www.facebook.com/johnronald17"><i class="fab fa-facebook-f"></i></a>
                                        <a class="social-li" href="https://www.linkedin.com/in/christian-rivera-82910373"><i class="fab fa-linkedin-in"></i></a>
                                        <a class="social-in" href="https://instagram.com/doctordeladieta?utm_medium=copy_link"><i class="fab fa-instagram"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Team End -->


            <!-- FAQs Start -->
            <div class="faqs">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="faqs-img">
                                <img src="img/faqs.jpg" alt="Image">
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="section-header">
                                <h2>Preguntas frecuentes</h2>
                            </div>
                            <div id="accordion">
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="true">
                                            <span>1</span> ¿Atienden los casos en la que la enfermedad es poco común?
                                        </a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordion">
                                        <div class="card-body">
                                           Cada profesional tiene su propia especialización para el correcto tratamiento de los diagnósticos de todos nuestros pacientes, incluyendo los casos más peculiares.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseTwo">
                                            <span>2</span> ¿También se especializan en niños?
                                        </a>
                                    </div>
                                    <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            Nos vemos comprometidos a entregar una buena experiencia a nuestros pacientes mas pequeños para que tengan un muy buen recuerdo de su infancia.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseThree">
                                            <span>3</span> ¿Atienden cada caso de forma personal y preferencial?
                                        </a>
                                    </div>
                                    <div id="collapseThree" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                           Cada uno de nuestro personal esta cualificado para abordar cualquier situación de forma personal, independientemente de su dificultad, estamos preparados para cualquier eventualidad.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseFour">
                                            <span>4</span> ¿Con qué tecnologían cuentan?
                                        </a>
                                    </div>
                                    <div id="collapseFour" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                          Contamos con tomografías computarizada (computed tomography, CT) las cuales pueden ayudar nuestros médicos a detectar el cáncer y cosas como la forma y el tamaño de un tumor.
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-header">
                                        <a class="card-link" data-toggle="collapse" href="#collapseFive">
                                            <span>5</span> ¿Qué tan eficientes son los laboratorios?
                                        </a>
                                    </div>
                                    <div id="collapseFive" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                           Nuestros laboratorios están equipados con la mas alta tecnología para llegar a los resultados deseados en el menor tiempo posible.
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            <a class="btn" href="">Pregunta por más</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- FAQs End -->


            <!-- Testimonial Start -->
            <div class="testimonial">
                <div class="container">
                    <div class="section-header">
                        <h2>Lo que dicen de nosotros</h2>
                    </div>
                    <div class="owl-carousel testimonials-carousel">
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-1.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>John Partho</h2>
                                    <p>Ingeniero de sistemas</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                       Proporcionan un gran servicio en cada una de las áreas en las que se desempeñan. Sus tratamientos proveen un gran resultado, a un tiempo de espera muy corto y con una gran calidad de profesionales.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-2.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Mullar Sarth</h2>
                                    <p>Administrador de empresas</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                         Cada uno de ellos garantiza un óptimo resultado, con un cuidado especial para cada uno de sus pacientes, sin importar edad ni condición. 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-3.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Kolis Mullar</h2>
                                    <p>Ingierno Bioquímico</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                        Sus profesionales hacen lo posible por ayudarnos en cada problema que surja y nos colaboran a lo largo del tratamiento que nos recetan.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-4.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Partho Sarothi</h2>
                                    <p>Bombero</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                        Sus instituciones son las más modernas y cuentan con tecnología de gran calidad para la resolución de cada uno de los diagnósticos que se deben tratar.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-1.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Norman Kingston</h2>
                                    <p>Programador</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                         Tanto sus áreas médicas como espacios de espera son agradables para cada uno de los pacientes y sus acompañantes, sin dejar de lado la calidad de su servicio.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-2.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Ernest Lindsey</h2>
                                    <p>Mecánico</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                       El servicio que me prestaron ha sido una de las mejores experiencias médicas tanto virtual como presencial ¡Gracias|
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="testimonial-item">
                            <i class="fa fa-quote-right"></i>
                            <div class="row align-items-center">
                                <div class="col-3">
                                    <img src="img/testimonial-3.jpg" alt="">
                                </div>
                                <div class="col-9">
                                    <h2>Stella Zenon</h2>
                                    <p>Profession</p>
                                </div>
                                <div class="col-12">
                                    <p>
                                        Mi cita virtual fue un éxito, muy puntual y eficiente, el doctor muy especializado en mi diagnóstico y muy amable.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Testimonial End -->


            <!-- Blog Start -->
            <div class="blog">
                <div class="container">
                    <div class="section-header">
                        <h2>Últimos comentarios en nuestro blog</h2>
                    </div>
                    <div class="owl-carousel blog-carousel">
                        <div class="blog-item">
                            <img src="img/blog-1.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Civil Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-2.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Family Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-3.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Business Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-1.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Education Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-2.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Criminal Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-3.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Cyber Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                        <div class="blog-item">
                            <img src="img/blog-1.jpg" alt="Blog">
                            <h3>Lorem ipsum dolor</h3>
                            <div class="meta">
                                <i class="fa fa-list-alt"></i>
                                <a href="">Business Law</a>
                                <i class="fa fa-calendar-alt"></i>
                                <p>01-Jan-2045</p>
                            </div>
                            <p>
                                Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi. Curabitur facilisis ornare velit non vulputate. Aliquam metus tortor
                            </p>
                            <a class="btn" href="">Read More <i class="fa fa-angle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Blog End -->
            
</asp:Content>
