<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vertical Navbar</title>
  
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  
  <style>
    /* Custom styles for the navbar */
    .navbar {
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 200px;
      background-color: #f8f9fa;
      display: flex;
      flex-direction: column;
      justify-content: flex-start;
      padding-top: 20px;
      box-shadow: 2px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .navbar .navbar-nav {
      display: flex;
      flex-direction: column;
      align-items: flex-start;
    }

    .navbar .nav-link {
      width: 100%;
      padding: 15px 20px;
      text-align: left;
      color: #000;
    }

    .navbar .nav-link.active {
      font-weight: bold;
      color: #007bff;
    }

    .navbar .nav-link.disabled {
      color: #6c757d;
    }

    /* Ensure that the content is not hidden behind the navbar */
    .content {
      margin-left: 220px; /* Adjust according to navbar width */
      padding: 20px;
    }
  </style>
</head>
<body>

<!-- Navbar with vertical alignment -->
<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <!-- Toggle Button on the Left -->
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!-- Navbar Title Centered -->
    <a class="navbar-brand mx-auto" href="#">Offcanvas Navbar</a>
    
  </div>
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#">Home</a>
        <a class="nav-link" href="#">Features</a>
        <a class="nav-link" href="#">Pricing</a>
        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
      </div>
    </div>
  </div>
</nav>

<!-- Main content area -->
<div class="content">
  <h1>Welcome to the page</h1>
  <p>This is the main content area where you can put your website content. The navbar is fixed to the left side of the screen.</p>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
