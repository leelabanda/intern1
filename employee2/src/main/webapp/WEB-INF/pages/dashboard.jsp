<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Offcanvas Navbar with Clickable Cards</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

<style>
  .container { margin-top: 80px; }
  .card-deck { display: flex; flex-wrap: wrap; justify-content: center; gap: 30px; }
  .card { width: 300px; border-radius: 15px; box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1); display: flex; flex-direction: row; align-items: stretch; }
  .card a { display: block; width: 40%; }
  .card img { width: 100%; object-fit: cover; }
  .card-body { padding: 20px; flex: 1; display: flex; flex-direction: column; justify-content: center; }

  /* Change color of nav links in offcanvas */
  .offcanvas .nav-link {
    color: black !important;  /* Set color to black */
  }

  /* Optional: Change color of the nav links when hovered */
  .offcanvas .nav-link:hover {
    color: black;  /* Set color to black when hovered */
  }
  .offcanvas-start {
    position: fixed; /* Fix the sidebar to the left */
    top: 0;
    left: 0;
    height: 100vh; /* Full height */
    width: 250px; /* Set the width of the sidebar */
    z-index: 1050; /* Ensure it's on top of other content */
  }
  
  /* Add padding to the main content to account for the fixed sidebar */
  .container {
    margin-left: 260px; /* Create space for the fixed sidebar */
  }
</style>
</head>
<body>
<!-- Navbar with Offcanvas -->
<nav class="navbar navbar-dark bg-dark fixed-top">
  <div class="container-fluid">
    <!-- Toggle Button on the Left -->
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!-- Navbar Title Centered -->
    <a class="navbar-brand mx-auto" href="#">Offcanvas Navbar</a>
    
  </div>

  <!-- Offcanvas Sidebar Menu -->
  <div class="offcanvas offcanvas-start" id="offcanvasNavbar">
    <div class="offcanvas-header">
      <h5 class="offcanvas-title">Menu</h5>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
    </div>
    <div class="offcanvas-body">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link active" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="register">Register</a></li>
      </ul>
      <form class="d-flex mt-3">
        <input class="form-control me-2" type="search" placeholder="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Card Section -->
<div class="container">
  <div class="card-deck">
    <div class="card">
      <a href="https://example.com/page1"><img src="https://www.w3schools.com/html/img_girl.jpg" alt="Card Image"></a>
      <div class="card-body"><h5 class="card-title"><i class="bi bi-alarm"></i> Title 1</h5></div>
    </div>
    <div class="card">
      <a href="https://example.com/page2"><img src="https://www.w3schools.com/html/img_girl.jpg" alt="Card Image"></a>
      <div class="card-body"><h5 class="card-title"><i class="bi bi-alarm"></i> Title 2</h5></div>
    </div>
  </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
