<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include  file="menu.jsp" %>


<div class="container">

    <h3>SmartBody Gym!</h3>
    <hr/>
    <div class="row">
        <div class="col-sm-4 mt-5">
            <img src="Img/map.png" class="img-fluid" width="400" alt=""/>
        </div>
        <div class="col-sm-4">
            <div class="card mt-5" style="background-color: #375A7F;">
                <div class="card-header text-center">
                    <h2>Help & Contact.</h2>
                </div>
                <div class="card-body bg-primary" style="background-color: #375A7F;">
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Name:</label>
                            <input type="text" class="form-control" id="name" required placeholder="Enter your name">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" class="form-control" id="email" required placeholder="name@example.com">
                        </div>
                        <div class="mb-3">
                            <label for="subject" class="form-label">Subject:</label>
                            <input type="text" class="form-control" id="subject" required placeholder="Subject of the message">
                        </div>
                        <div class="mb-3">
                            <label for="message" class="form-label">Message:</label>
                            <textarea class="form-control" id="message" rows="4" required placeholder="Enter your message"></textarea>
                        </div>
                        <hr/>
                        <button type="submit" class="btn btn-danger">Submit</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-sm-4 mt-5 ">
            <img src="Img/contact.png" class="mb-4 img-fluid" width="415" alt=""/>
            <img src="Img/call.png" class="img-fluid" alt=""/>
        </div>
    </div>
</div>

<%@include  file="foorter.jsp" %> 