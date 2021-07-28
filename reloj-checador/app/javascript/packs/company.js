document.addEventListener('turbolinks:load', function () {
  let name_modal = document.getElementById('name_modal');
  let form_modal = document.getElementById('form_modal');
  let name_edit = document.getElementById('company_name');
  let address_edit = document.getElementById('company_address');
  let type_method = document.getElementById('method_put');
  let method = "<input type='hidden' name='_method' value='put' />";
  let button = document.getElementById('buton_action_modal');

  window.add = function (){
    name_modal.innerHTML= 'Add Company';
    form_modal.action = '/companies'
    name_edit.value = "";
    address_edit.value = "";
    type_method.innerHTML ="";
    button.classList.remove('d-none');
  }

  window.edit = function (id, name, address){
    name_modal.innerHTML= 'Edit Company';
    form_modal.action = '/companies/'+id;
    name_edit.value = name;
    address_edit.value = address;
    type_method.innerHTML =method;
    button.classList.remove('d-none');
  }

  window.show = function (name, address){
    name_modal.innerHTML= 'Show Company';
    form_modal.action = ''
    name_edit.value = name;
    address_edit.value = address;
    type_method.innerHTML ='';
    button.classList.add('d-none');
  }
});
