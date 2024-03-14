<?php include_once("cabecalho.php");
include_once("conexao.php");
 ?>

   
     

      <!-- Contact Form and Gmap-->
      <section class="section section-md section-last bg-default text-md-left">
        <div class="container">
          <div class="row row-50">
            <div class="col-lg-6 section-map-small">
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3657.494667690743!2d-46.585957924788886!3d-23.550671061199274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce5eb818b5895f%3A0x3a2c452cd4f5b751!2sR.%20Serra%20de%20Jair%C3%A9%2C%20983%20-%20Quarta%20Parada%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2003175-001!5e0!3m2!1spt-PT!2sbr!4v1705785217560!5m2!1spt-PT!2sbr" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
            <div class="col-lg-6">
              <h4 class="text-spacing-50">Contate-nos</h4>
              <form class="rd-form rd-mailform" data-form-output="form-output-global" data-form-type="contact" method="post" action="enviar.php">
                <div class="row row-14 gutters-14">
                  <div class="col-sm-6">
                    <div class="form-wrap">
                      <input class="form-input" id="contact-first-name" type="text" name="name" placeholder="Nome e Sobrenome" data-constraints="@Required">
                      <label class="form-label" for="contact-first-name">Nome</label>
                    </div>
                  </div>

                   <div class="col-sm-6">
                    <div class="form-wrap">
                      <input class="form-input" id="contact-tel" type="text" name="telefone" >
                      <label class="form-label" for="contact-tel">WhatsApp</label>
                    </div>
                  </div>
                
                  <div class="col-12">
                    <div class="form-wrap">
                      <input class="form-input" id="contact-email" type="email" name="email" data-constraints="@Email @Required">
                      <label class="form-label" for="contact-email">E-mail</label>
                    </div>
                  </div>
                  <div class="col-12">
                    <div class="form-wrap">
                      <label class="form-label" for="contact-message">Mensagem</label>
                      <textarea class="form-input" id="contact-message" name="message" data-constraints="@Required"></textarea>
                    </div>
                  </div>
                </div>
                <button class="button button-primary button-pipaluk" type="submit">Enviar</button>
              </form>
            </div>
          </div>
        </div>
      </section>



 <!-- Contact information-->
      <section class="section section-md section-first bg-default">
        <div class="container">
          <div class="row row-30 justify-content-center">
            <div class="col-sm-8 col-md-6 col-lg-4">
              <article class="box-contacts">
                <div class="box-contacts-body">
                  <div class="box-contacts-icon fl-bigmug-line-cellphone55"></div>
                  <div class="box-contacts-decor"></div>
                  <p class="box-contacts-link"><a href="http://api.whatsapp.com/send?1=pt_BR&phone=5511916934706">11 9169-34706</a></p>
                 
                </div>
              </article>
            </div>
            <div class="col-sm-8 col-md-6 col-lg-4">
              <article class="box-contacts">
                <div class="box-contacts-body">
                  <div class="box-contacts-icon fl-bigmug-line-up104"></div>
                  <div class="box-contacts-decor"></div>
                  <p class="box-contacts-link"><a href="https://maps.app.goo.gl/86uuL9x4FJvJ1Tmz6">R. Serra de Jairé, 983 - Quarta Parada, São Paulo - SP, 03175-001</a></p>
                </div>
              </article>
            </div>
            <div class="col-sm-8 col-md-6 col-lg-4">
              <article class="box-contacts">
                <div class="box-contacts-body">
                  <div class="box-contacts-icon fl-bigmug-line-chat55"></div>
                  <div class="box-contacts-decor"></div>
                  <p class="box-contacts-link"><a href="mailto:#">mail@demolink.org</a></p>
                 
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>



<?php include_once("rodape.php") ?>


  

  </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  </body>
</html>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

<script src="js/mascaras.js"></script>