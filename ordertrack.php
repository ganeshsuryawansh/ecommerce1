<?php
include 'includes/nav.php';
include 'includes/dbconnect.php';
error_reporting(E_ALL ^ E_NOTICE);

$pid = $_SESSION['pid'];


?>



<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Payment details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <style>
       
        .paydet {
            border: 1px solid black;
            background-color:#ffe6e6;
            border-radius: 10px 10px 10px 10px;
        }
        .cardbody{
            background-color:#ffe6e6;
        }
        .pimg {
            height: 250px;
            width: 286px;
        }

        .btn {
            height: 50px;
        }

        .text {
            text-decoration: none;
            color: black;
        }

        form:hover {
            box-shadow: 0px red;
        }
    </style>

</head>

<body>
    <div class="container my-5">
        <div class="row">
            <h3>Delivery Address details</h3>
            <div class="col paydet">
                <?php
                $query = mysqli_query($conn, "SELECT * FROM products WHERE pid='$pid'");

                if ($row = mysqli_fetch_array($query)) {
                    $name = $row['pname'];
                    $price = $row['pprice'];
                    $info = $row['pdesc'];
                    $img = $row['pimg'];
                    $subcat = $row['psubcat'];

                    $_SESSION['proprice'] = $price;

                    //echo ($price);

                    //echo($price);
                } else {
                    echo ("Error: Data not fetch...");
                }
                ?>

                <?php
                $usern = $_SESSION['name'];
                $state = $_SESSION['state'];
                $district = $_SESSION['district'];
                $subdistrict = $_SESSION['subdistrict'];
                $city = $_SESSION['city'];
                $zipcode = $_SESSION['zipcode'];
                $phone = $_SESSION['phone'];
                $email = $_SESSION['email'];

                ?>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">
                        <h5>Name:</h5>
                    </label>
                    <?php echo ($usern); ?>
                </div>

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">
                        <h5>Email:</h5>
                    </label>
                    <?php echo ($email); ?>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">
                        <h5>Mobile:</h5>
                    </label>
                    <?php echo ($phone); ?>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">
                        <h5>Address:</h5>
                    </label>
                    <?php echo ($city . " ," . $subdistrict . ", " . $district . " ," . $state . "-" . $zipcode); ?>
                </div>
                <br>
                <br>
                <br>
                <br>
                <h6 class="text-center">Delivery Traking details</h6>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-label="Animated striped example" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%"></div>

                    <p>Delivery expected by </p>
                </div>
                </a><br>
                <br>




                <script>
                    function nextpage() {
                        window.location.href = "ordertrack.php";
                    }
                </script>
            </div>
            <div class="col">

                <div class="card my-2 mx-2 crd1" id="<?php echo ($pid) ?>" style="width: 18rem; ">
                    <a href="product.php?product=<?php echo ($pid); ?>" class="text">
                        <img src="images/product/<?php echo ($img); ?>" class="card-img-top pimg" alt="...">
                        <div class="card-body cardbody">
                            <h5 class="card-title"><?php echo ($name); ?></h5>
                            <h3 class="card-text">₹<?php echo ($price); ?></h3>
                            <p class="distag">30% off</p><br>
                            <i>Free delivery</i><br>
                            <br>
                        </div>
                    </a>
                </div>


            </div>
        </div>
    </div>
</body>