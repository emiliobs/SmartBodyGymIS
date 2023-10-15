<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include  file="menu.jsp" %>


<div class="container">

    <h3>Welcome to SmartBody Gym!</h3>
    <hr/>

    <div class="row">
        <div class="d-flex">
            <div class="col-6">
                <div class="card">
                    <div class="card-body text-center">
                        <img src="Img/Design.png" class="img-fluid"  width="89%" alt="SmartBodyGym"/>
                        <p>
                        <h3>WE WELCOME EVERYBODY</h3>            
                        </p>
                    </div>

                </div>
            </div>
            <div class="m-1"></div>
            <div class="col-6">
                <div class="card mb-4 text-center">
                    <div class="card-body">
                        <img class="img-fluid" src="Img/join.png" alt=""/>
                        <hr/>
                        <div class="iframe-container">
                            <iframe  width="560px" height="315px" src="https://www.youtube.com/embed/4-zjQvTDnbw?si=l9C1iLpAIWBkHSND" title="SmartBody Gym" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                        <hr/>
                    </div>
                    <div class="card-footer">
                        <a href="register.jsp" class="btn btn-warning">Join Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="img-fluid  text-center mt-3">
        </div>
        <hr/>
        <p>SMARTBODY SHOP</p>
        <main class="mb-4">
            <div class="gallery">
                <!--                <div class="principal-imagen">
                                    <img src="Img/AIImagen.jpeg" alt="principa imagen"/>
                                </div> -->
                <div class="Imagen-list">
                    <img src="Img/th.jpeg" class="img-fluid" alt="principa imagen"/>                    
                    <img src="Img/th2.jpeg" class="img-fluid" alt="principa imagen"/>
                    <img src="Img/balance.png" alt="principa imagen"/>
                    <img src="Img/combogym.jpg"  class="img-fluid" alt="principa imagen"/>
                    <img src="Img/th1.jpeg" class="img-fluid" alt="principa imagen"/>
                </div>
            </div> 
        </main>
        <hr/>
        <p>SMARTBODY ACTIVITIES</p>
        <div class="img-fluid  text-center mt-3">
            <div class="row">
                <div class="col-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <img src="Img/f1.png"  class="img-fluid"width="500px" alt=""/>
                        </div>
                        <div class="card-footer">
                            <a href="index.jsp" class="btn btn-warning">Home</a>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <img src="Img/f2.png" class="img-fluid" width="480px" alt=""/>
                        </div>
                        <div class="card-footer">
                            <a href="register.jsp" class="btn btn-warning">Join Now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <img src="Img/f3.png" class="img-fluid" width="500px" alt=""/>
                        </div>
                        <div class="card-footer">
                            <a href="activities.jsp" class="btn btn-warning">Activities</a>
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="card mb-4">
                        <div class="card-body">
                            <img src="Img/f4.png" class="img-fluid" width="480px" alt=""/>
                        </div>
                        <div class="card-footer">
                            <a href="contact.jsp" class="btn btn-warning">Contact</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<%
    if (request.getAttribute("message") != null)
    {
%> 
<script>

    $(document).ready(function ()
    {
        Swal.fire(
                'Great!',
                '<%= request.getAttribute("message")%>',
                'success'
                )
    });

</script>
<%
    }

%>


<%@include  file="foorter.jsp" %> 