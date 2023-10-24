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
                    <form action="RegisterServlet" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" required id="email"  name="email" placeholder="Please, enter Your Emal.....">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input class="form-control" id="password" name="password" type="password" pattern="^\S{5,}$" onchange="this.setCustomValidity(this.validity.patternMismatch ? 'Must have at least 5 characters' : '');
                                    if (this.checkValidity())
                                        form.password_two.pattern = this.value;" placeholder="Password - You must enter 5 Characters....." required> 
                        </div>
                        <hr/>
                        <button type="submit" class="btn btn-success" name="btnLogin">Login</button>
                    </form>
                </div>

            </div>
        </div>
        <div class="col-sm-4">

        </div>
    </div>        
</div>
</div>
<%    if (request.getAttribute("message") != null)
    {
%> 
<script>

    $(document).ready(function ()
    {
        Swal.fire(
                'Sorry!',
                '<%= request.getAttribute("message")%>',
                'error'
                )
    });

</script>
<%
    }

%>


<%@include  file="foorter.jsp" %> 