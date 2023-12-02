<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

   
    <style type="text/css">
    
      <%@include file="/WEB-INF/css/Admin.css"%>
         <%@include file="/WEB-INF/css/normalize.css"%>
    
    </style>
    <!-- Font Awesome Library -->
    
    <script
      src="https://kit.fontawesome.com/d563012c9e.js"
      crossorigin="anonymous"
    ></script>
    <!-- Googl Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@300;500;600;700;800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
 

 
    <!-- start header -->
    <div class="header">
      <div class="menu">
        <i class="fas fa-solid fa-bars fa-2x"></i>
      </div>
      <div class="logo">
        <i class="fas fa-graduation-cap fa-3x"></i>
        <h2>ConcourDoc<span>2</span>UC2</h2>
      </div>
      <div class="profile">
     
        <div class="info">
          <!-- put  name of user (admin) here "backend" -->
          
          <p class="first">${sessionScope.username }</p>
          <p class="second">Admin</p>
        </div>
         
      </div>
    </div>
    <!-- end header -->
    <div class="main">
      <!-- start aside bar -->
      <div class="aside">
        <ul class="sidebar-items">
          <li>
            <div class="profile profile2">
              <div class="image">
                <i class="fas fa-user fa-2x"></i>
              </div>
              <div class="info">
                <p class="first">admin name</p>
                <p class="second">Admin</p>
              </div>
            </div>
          </li>
          <li>
            <a href="#" class="administrator-link active-link">
              <i class="fas fa-user"></i>
              <span class="">Admins</span>
            </a>
          </li>
          <li>
            <a href="#" class="employee-link">
              <i class="fas fa-users" style="margin-right: 10px"></i>
              <span class="">employees</span>
            </a>
          </li>
          <li>
            <a href="#" class="condidat-link">
              <i class="fas fa-user-graduate"></i>
              <span class="">candidates</span>
            </a>
          </li>
          <hr />
          <li>
            <a href="#" class="add-link add-button">
              <i class="fas fa-plus"></i>
              <span class="">Add Account</span>
            </a>
          </li>
          <li>
            <a href="#" class="add-csv-link">
              <i class="fas fa-file-csv"></i>
              <span class="">Add from CSV</span>
            </a>
          </li>
        </ul>
        <ul class="sidebar-bottom-itmes">
          <li>
            <!-- log out  "backend"-->
            <a href="#" class="">
              <i class="fas fa-sign-out-alt"></i>
              <span class="nav-item">log out</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- end aside bar  -->
      <!-- start main content -->
      <div class="main-content">
        <div class="list_users">
          <div class="title">
            <h2>List of <span class="list-title">Admins</span></h2>
          </div>
          <hr />
          <!-- start table admin -->
          <div class="table table-admin table-active">
            <table>
              <thead>
                <tr
                  style="background-color: #fff; position: sticky; top: 000px"
                >
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Type</th>
                  <th>Setting</th>
                </tr>
              </thead>
              <tbody>
                <!-- start loop (to display users) "backend"-->
                <tr>
                  <td>Nabil</td>
                  <td>bkz</td>
                  <td>nabilbkz7@gmail.com</td>
                  <td>Admin</td>
                  <td>
                    <!-- add userId -->

                    <i class="fas fa-pen edit-button" onclick="editUser(2)"></i>
                    <!-- put api delete user in action -->
                    <form
                      id="delete-form-#(user.id)"
                      action="http://localhost:4000/users/2"
                      method="POST"
                      style="display: inline"
                    >
                      <input type="hidden" name="_method" value="DELETE" />
                    </form>
                    <a
                      href="#"
                      onclick="event.preventDefault(); document.getElementById('delete-form-#(user.id)').submit();"
                    >
                      <i class="fas fa-trash delete-button"></i>
                    </a>
                  </td>
                </tr>
                <!-- end loop (to display users) "backend"-->
              </tbody>
            </table>
          </div>
          <!-- end table admin -->
          <!-- start table employee -->
          <div class="table table-employee">
            <table>
              <thead>
                <tr
                  style="background-color: #fff; position: sticky; top: 000px"
                >
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Type</th>
                  <th>Setting</th>
                </tr>
              </thead>
              <tbody>
                <!-- start loop (to display users) "backend"-->
                <tr>
                  <td>wadye</td>
                  <td>khb</td>
                  <td>wadye@gmail.com</td>
                  <td>Doyen</td>
                  <td>
                    <!-- add userId -->

                    <i
                      class="fas fa-pen edit-button"
                      onclick="editUser(userId)"
                    ></i>
                    <!-- put api delete user in action -->
                    <form
                      id="delete-form-#(user.id)"
                      action="http://localhost:4000/users/2"
                      method="POST"
                      style="display: inline"
                    >
                      <input type="hidden" name="_method" value="DELETE" />
                    </form>
                    <a
                      href="#"
                      onclick="event.preventDefault(); document.getElementById('delete-form-#(user.id)').submit();"
                    >
                      <i class="fas fa-trash delete-button"></i>
                    </a>
                  </td>
                </tr>
                <!-- end loop (to display users) "backend" -->
              </tbody>
            </table>
          </div>
          <!-- end table employee  -->
          <!-- start table condidat -->
          <div class="table table-condidat">
            <table>
              <thead>
                <tr
                  style="background-color: #fff; position: sticky; top: 000px"
                >
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Email</th>
                  <th>Type</th>
                  <th>Setting</th>
                </tr>
              </thead>
              <tbody>
                <!-- start loop (to display users) "backend"-->

                <tr>
                  <td>zoubir</td>
                  <td>mpz</td>
                  <td>zoubir@gmail.com</td>
                  <td>condidat</td>

                  <td>
                    <!-- add userId -->

                    <i
                      class="fas fa-pen edit-button"
                      onclick="editUser(userId)"
                    ></i>
                    <!-- put api delete user in action -->
                    <form
                      id="delete-form-#(user.id)"
                      action="http://localhost:4000/users/2"
                      method="POST"
                      style="display: inline"
                    >
                      <input type="hidden" name="_method" value="DELETE" />
                    </form>
                    <a
                      href="#"
                      onclick="event.preventDefault(); document.getElementById('delete-form-#(user.id)').submit();"
                    >
                      <i class="fas fa-trash delete-button"></i>
                    </a>
                  </td>
                </tr>
                <!-- end loop (to display users) "backend"-->
              </tbody>
            </table>
          </div>
          <!-- end table condidat -->
        </div>
      </div>
      <!-- end main content -->
    </div>
    <!-- start add form  -->
    <div class="add-form">
      <div class="close">&times;</div>
      <h2>Add</h2>
      <form action="http://localhost:4000/users" method="POST">
        <div class="input">
          <label for="firstName">First Name</label>

          <input
            type="text"
            name="firstName"
            placeholder="Enter First Name"
            id="firstName"
            required
          />
        </div>
        <div class="input">
          <label for="lastName">Last Name</label>
          <input
            type="text"
            name="lastName"
            placeholder="Enter Last Name"
            id="lastName"
            required
          />
        </div>
        <div class="input">
          <label for="userType">Type</label>
          <select name="type" id="userType" required>
            <option value="Admin">Admin</option>
            <option value="Dean">Dean</option>
            <option value="Teacher">Teacher</option>
            <option value="CFDPresident">CFD President</option>
            <option value="Candidate">Candidate</option>
          </select>
        </div>
        <div class="input">
          <label for="Email">Email</label>
          <input type="email" name="email" placeholder="Enter Email" required />
        </div>
        <div class="input">
          <label for="Password">Password</label>
          <input
            type="password"
            name="password"
            placeholder="Enter Password"
            required
          />
        </div>
        <div class="input">
          <!-- this button(input) is used to add a new user use attribute of form (action="") to pass link "backend"-->
          <input
            type="submit"
            value="Add"
            style="margin-top: 20px; margin-bottom: 23px"
            onclick=" location.reload()"
          />
        </div>
      </form>
    </div>
    <!-- end  add form  -->

    <!-- start edit form  -->
    <div class="add-form edit-form">
      <div class="close-edit">&times;</div>
      <h2>Edit</h2>
      <form action="#" method="get">
        <input type="hidden" name="id" class="userId-Edit" />
        <div class="input">
          <label for="1">First Name</label>

          <input
            type="text"
            name="firstName"
            id="firstName-edit"
            class="firstName-edit"
            required
          />
        </div>
        <div class="input">
          <label for="LastName-edit">Last Name</label>
          <input
            type="text"
            name="lastName"
            id="LastName-edit"
            class="LastName-edit"
            required
          />
        </div>
        <div class="input">
          <label for="UserType-edit">Type</label>
          <!-- put user type in value "backend" -->
          <input
            type="text"
            name="type"
            disabled
            id="UserType-edit"
            class="UserType-edit"
            required
            readonly
          />
        </div>
        <!-- put email  in value "backend" -->

        <div class="input">
          <label for="email-edit">Email</label>
          <input
            type="email"
            name="email"
            id="email-edit"
            class="email-edit"
            required
          />
        </div>

        <div class="input">
          <!-- this button(input) is used to update infor use attribute of form (action="") to pass link "backend"-->

          <input
            type="submit"
            value="Save"
            style="margin-top: 20px; margin-bottom: 23px"
            onclick="saveUser()"
          />
        </div>
      </form>
    </div>
    <!-- end  edit form  -->
    <!-- start csv from  -->
    <div class="csvFile">
      <div class="closee">&times;</div>
      <h2>Add Condidate From CSV</h2>
      <form class="csv-form" enctype="multipart/form-data">
        <input
          type="file"
          name="csvFile"
          class="input-file"
          hidden
          accept=".csv"
          required
        />
        <i
          class="fas fa-cloud-upload-alt"
          style="--fa-primary-color: #479a76; --fa-secondary-color: #3c966f"
        ></i>
        <p>Browse file to upload</p>
      </form>

      <div class="uploaded-area">
        <div class="row-display">
          <li class="row">
            <i class="fas fa-file-csv"></i>

            <div class="content">
              <div class="details">
                <span class="name-file">concour.csv . Uploaded</span>
              </div>
              <i class="fas fa-check"></i>
            </div>
          </li>
        </div>
        <button class="save-csv">Save</button>
      </div>
    </div>
    <!-- end csv from -->
    <!-- import js -->
    <script >
    <%@include file="/WEB-INF/js/Admin.js"%>
    </script>
  </body>
</html>
