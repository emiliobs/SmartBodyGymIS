<%@page import="Models.Register"%>
<%@page import="java.util.List"%>
<%@page import="DAO.RegisterDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="menu.jsp" %>
<%    RegisterDAO registerDAO = new RegisterDAO();
%>
<div class="container" style="margin-bottom: 0; padding-bottom: 0;">
    <h3></h3>
    <hr/>
    <div class="container" style="padding: 0;">

        <div class="row">   
            <div class="col-9 mt-2">
                <h2>Registered Users Admin!</h2>
            </div>
            <div class="col-3">
                <div class="d-grid gap-0 mt-3">
                    <!--<button type="submit" class="btn btn-lg btn-success btnAdd" data-bs-toggle="modal" data-bs-target="#Modal"> New UserS</button>-->
                    <a class="btn btn-success" href="register.jsp">New User.</a>
                </div>
            </div>
        </div>
        <hr/>           
        <div class="card" style="padding: 0; margin: 0;">
            <div class="card-body">
                <table id="myTable" class="table table-striped table-hover table-primary display table-responsive-sm" style="margin: 0; padding: 0;">
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th >Email</th>
                            <th>Staff</th>                       
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            List<Register> registersLIst = registerDAO.readAll();
                            for (Register register : registersLIst)
                            {
                        %>
                        <tr>
                            <th class="IdCustomer"><%=register.getName()%></th>
                            <td class="Name">           <%=register.getLast_name()%></td>
                            <td class="Age">               <%=register.getEmail()%>Email</td>
                            <td class="Category">     <%=register.getStaff()%></td>
                    <form action="RegisterServlet" method="post">
                       
                        <td>
                            <button type="submit"  class="btn btn-warning btnEdit"  data-bs-toggle="modal" data-bs-target="#Modal">Edit</button>
                            &nbsp
                            <button type="submit" name="btnDelete" class="btn btn-danger btnDelete"  data-bs-toggle="modal" data-bs-target="#Modal">Delete</button>
                             <input type="hidden" name="id" value="<%=register.getId()%>">
                        </td>
                    </form  >
                    </tr>
                    <%
                        }
                    %>
                    </tbody>
                    <tfoot>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th >Email</th>
                    <th>Staff</th>                       
                    <th>Action</th>
                    </tfoot>
                </table>
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

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                Swal.fire(
                        'Deleted!',
                        '<%= request.getAttribute("message")%>',
                        'success'
                        )
            }
        })

       
    });

</script>
<%
    }

%>

<%@include  file="foorter.jsp" %> 