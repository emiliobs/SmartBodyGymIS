<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="menu.jsp" %>

<div class="container" style="margin-bottom: 0; padding-bottom: 0;">
    <h3>SmartBody Gym!</h3>
    <hr/>
    <div class="row">

        <div class="col-sm-3">

        </div>

        <div class="col-sm-6">
            <div class="card mt-1" style="background-color: #375A7F;">
                <div class="card-header text-center">
                    <h2>Register.</h2>
                </div>
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Name:</label>
                            <input type="name" class="form-control" id="name" required name="name"  placeholder="Please, enter Your Name.....">
                        </div>
                        <div class="mb-3">
                            <label for="LastName" class="form-label">Last Name:</label>
                            <input type="LastName" class="form-control" id="LastName"  required name="lastName" placeholder="Please, enter Your Last Name.....">
                        </div>          
                        <div class="mb-3">
                            <label for="email" class="form-label">Email Address:</label>
                            <input type="email" class="form-control" required id="email"  name="email" placeholder="Please, enter Your Emal.....">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" class="form-control" required id="password" name="confirmPassword" placeholder="Please, enter your Confirm Password.....">
                        </div>     
                        <div class="mb-3">
                            <label for="password" class="form-label">Confirm Password:</label>
                            <input type="password" class="form-control" required id="password" name="password" placeholder="Please, enter your Password.....">
                        </div>

                        <div class="mb-3">
                            <label class="form-check-label mb-1" for="admin">Check if You are SmartBody Staff.</label><br>
                            <input class="form-check-input" type="checkbox" value="admin" id="admin">
                        </div>   
                        <hr/>
                        <div class="text-center">
                            <button type="submit" class="btn btn-success">Submit</button>                          
                        </div>
                    </form>
                </div>

            </div>
        </div>

        <div class="col-sm-3">
        </div>
    </div>
</div>
<%@include  file="foorter.jsp" %> 