<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="menu.jsp" %>


<div class="container">
    <h3>SmartBody Gym!</h3>
    <hr/>
    <div class="row">
        <div class="col-sm-4">

        </div>
        <div class="col-sm-4">

            <div class="card mt-5 " style="background-color: #375A7F;">
                <div class="card-header text-center">
                    <h2>Login.</h2>
                </div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" required name="email" placeholder="Please, enter Your Email.....">

                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" required name="password" placeholder="Please, enter your password.....">
                        </div>
                        <hr/>
                        <button type="submit" class="btn btn-success">Submit</button>
                    </form>
                </div>

            </div>
        </div>
        <div class="col-sm-4">

        </div>
    </div>





</div>

<%@include  file="foorter.jsp" %> 