<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="menu.jsp" %>



<div class="container" style="margin-bottom: 0; padding-bottom: 0;">
    <h3>SmartBody Gym!</h3>
    <hr/>
    <div class="row">

        <div class="col-sm-3">

        </div>

        <div class="col-sm-6 mt-5">
            <div class="card mt-1" style="background-color: #375A7F;">
                <div class="card-header text-center">
                    <h2>Register.</h2>
                </div>
                <div class="card-body">
                    <form action="RegisterServlet" method="post">
                        <div class="mb-3">
                            <label for="name" class="form-label">First Name:</label>
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
                            <!--<input type="password" class="form-control" required id="password" name="confirmPassword" placeholder="Please, enter your Confirm Password.....">-->
                            <input class="form-control" id="password" name="password" type="password" pattern="^\S{5,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 5 characters' : '');
                                    if (this.checkValidity())
                                        form.password_two.pattern = this.value;" placeholder="Password - You must enter 5 Characters....." required>
                        </div>     
                        <div class="mb-3">
                            <label for="password" class="form-label">Confirm Password:</label>
                            <!--<input type="password" class="form-control" required id="password" name="password" placeholder="Please, enter your Password.....">-->
                            <input class="form-control" id="password_two" name="password_two" type="password" pattern="^\S{5,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Please enter the same Password as above' : '');" placeholder="Verify Password" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-check-label mb-1" for="admin"><p class="text-bg-danger">Check, if You are SmartBody Staff:</p>   </label>
                            <input class="form-check-input" type="checkbox" name="staff"  value="Admin" id="admin">
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