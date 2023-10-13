
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Models.Category"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Models.Category" %>
<%@page import="Models.CategoryDAO" %>
<%@page import="Models.Customer" %>
<%@page import="Models.CustomerDAO" %>


<%@include  file="menu.jsp" %>



<%!
    CategoryDAO categoryDAO = new CategoryDAO();
    CustomerDAO customerDAO = new CustomerDAO();
%>

<div class="container" style="padding: 0;">

    <div class="row">   
        <div class="col-9 mt-2">
            <h2>Customers Management.</h2>
        </div>
        <div class="col-3">
            <div class="d-grid gap-0 mt-3">
                <button type="submit" class="btn btn-lg btn-success btnAdd" data-bs-toggle="modal" data-bs-target="#Modal"> New Customer</button>
            </div>
        </div>
    </div>
    <hr/>           
    <div class="card" style="padding: 0; margin: 0;">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-hover table-primary display table-responsive-sm" style="margin: 0; padding: 0;">
                <thead>
                    <tr>
                        <th>Id Customer</th>
                        <th>Name</th>
                        <th >Age</th>
                        <th>Category</th>                       
                        <th>Action</th>

                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Customer> CustomerList = customerDAO.ShowCustomers();
                        for (Customer customerList : CustomerList)
                        {
                    %>
                    <tr>
                        <th class="IdCustomer"><%= customerList.getIdCustomer()%></th>
                        <td class="Name"><%= customerList.getName()%></td>
                        <td class="Age"><%= customerList.getAge()%></td>
                        <td class="Category"><%= customerList.getCategory()%></td>
                        <td>
                            <button type="submit"  class="btn btn-dark btnEdit"  data-bs-toggle="modal" data-bs-target="#Modal">Edit</button>
                            &nbsp
                            <button type="submit" name="btnDelete" class="btn btn-danger btnDelete"  data-bs-toggle="modal" data-bs-target="#Modal">Delete</button>

                        </td>

                    </tr>
                    <%
                        }
                    %>
                </tbody>
                <tfoot>
                <th>Id Customer</th>
                <th>Name</th>
                <th>Age</th>
                <th>Category</th>
                <th>Action</th>
                </tfoot>
            </table>
        </div>
    </div>
</div>

<!-- Modals -->

<div class="modal fade" id="Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Customer Data!</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"></span>
                </button>
            </div>
            <div class="modal-body">                       
                <form action="${pageContext.servletContext.contextPath}/CustomerServlet" method="post">

                    <div class="form-group">
                        <label class="form-label" for="txtIdCustomer" hidden="true">Id:</label>
                        <input class="form-control" id="txtIdCustomer" name="txtIdCustomer" hidden="true" type="text" value="0" readonly="true" placeholder="Code....">

                    </div>   

                    <div class="form-group">
                        <label class="form-label" for="txtName">Name:</label>
                        <input class="form-control" id="txtName" name="txtName" type="text" placeholder="Please Input Name..." required="true">
                    </div>     
                    <br/>
                    <div class="form-group">
                        <label class="form-label" for="txtAge">Age:</label>
                        <input class="form-control" id="txtAge" min="15" name="txtAge" type="number" placeholder="Please Input Age..." required="true">
                    </div>     
                    <br/>
                    <div class="form-group">
                        <label class="form-label" for="txtCategory">Category:</label>
                        <select  id="txtCategory" class="form-select" name="txtCategory">
                            <option value="">Select a Category.....</option> 
                            <%
                                ArrayList<Category> CategoryList = categoryDAO.ShowCategoryList();
                                for (Category category : CategoryList)
                                {
                            %>
                            <option value="<%=category.getIdCategory()%>"><%=category.getCategory()%></option>
                            <%
                                }
                            %>
                        </select>
                    </div>  
                    <hr/>
                    <div class="form-group mt-3 text-center">
                        <button type="submit" name="btnSave" class="btn btn-primary ms-3 btnOcultar1">New Save</button>       
                        <button type="submit" name="btnEdit" class="btn btn-info ms-3 btnOcultar">Edit Save</button>    
                        <button type="submit" name="btnDelete" class="btn btn-danger ms-3 btnOcultar">Delete</button>    
                        <button type="button" name="btnClose"  class="btn btn-secondary ms-3" data-bs-dismiss="modal">Close</button>
                    </div>                             
                </form>

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
                '<%= request.getAttribute("message") %>',
                '',
                'success'
                )
    });

</script>
<%
    }

%>



<%@include  file="foorter.jsp" %>


