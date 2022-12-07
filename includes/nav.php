<?php
session_start();
error_reporting(E_ALL ^ E_NOTICE);
?>
<head>
    <style>
      
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="http://localhost/ecommerce/">mycart</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="http://localhost/ecommerce/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="http://localhost/ecommerce/signup.php">Signup</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">About</a>
                    </li>
                </ul>

                <div class="container text-center">
                    <div class="row">
                        <div class="col">
                            <ul class="navbar-nav container me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">MyAcount</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="http://localhost/ecommerce/cart.php?">Cart</a>
                                </li>
                            </ul>


                        </div>
                        <div class="col">
                            <form class="d-flex" role="search">
                                <input class="form-control me-2 searchbar" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-warning mx-3" type="submit">Search</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

        <script>
            function logout(){
                <?php
                $_SESSION['loggedin'];
                //session_destroy();
                ?>
            }
        </script>
</body>

</html>