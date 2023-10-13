

function FormFill(row)
{


    var idCustomer = $(row).find(".IdCustomer").text();
    var name = $(row).find(".Name").text();
    var age = $(row).find(".Age").text();
    var Category = $(row).find(".Category").text();
    $("#txtIdCustomer").val(idCustomer);
    $("#txtName").val(name);
    $("#txtAge").val(age);
    $("#txtCategory option[selected]").removeAttr('selected');
    $("#txtCategory option:contains(" + Category + ")").attr('selected', true);
}

$(document).ready(function ()
{
    const darkModeToggle = document.getElementById('darkModeToggle');
    
    $('#myTable').DataTable();
    $("#Modal").on("hidden.bs.modal", function ()
    {
        $('form')[0].reset();
        $("#txtCategory option[selected]").removeAttr('selected');
    });
    $(document).on('click', '.btnEdit', function ()
    {
        FormFill($(this).closest('tr'));
        $('.btnOcultar1').attr('disabled', 'disabled');
        $('.btnOcultar').removeAttr('disabled');
    });
    $(document).on('click', '.btnDelete', function ()
    {
        FormFill($(this).closest('tr'));
        $('.btnOcultar1').attr('disabled', 'disabled');
        $('.btnOcultar').removeAttr('disabled');
    });
    $(document).on('click', '.btnAdd', function ()
    {

        $('.btnOcultar').attr('disabled', 'disabled');
    });

});


const body = document.body;

darkModeToggle.addEventListener('change', () => {
  
    if (darkModeToggle.checked) {
        body.classList.add('dark-mode');
    } else {
        body.classList.remove('dark-mode');
    }
});


