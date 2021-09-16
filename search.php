<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <title>Welcome to Discuss </title>
    <style>
    #maincontainer {
        min-height: 100vh;
    }
    </style>
</head>

<body>
    <?php include 'partials/_dbconnect.php';?>
    <?php include 'partials/_header.php';?>
  

    <!--search reasult   -->
    <div class="container my-3" id = "maincontainer">
        <h1 class="py-3">Search results for <em>"<?php echo $_GET['search']?>"</em></h1>
    <?php
        $noResult = true;
        $query = $_GET["search"];
        $sql = "SELECT * FROM thread WHERE MATCH (thread_title, thread_desc) against ('$query')"; 
        $result = mysqli_query($conn, $sql);
        while($row = mysqli_fetch_assoc($result)){
             $title = $row['thread_title'];
             $desc = $row['thread_desc'];
             $thread_id = $row['thread_id'];
             $url = "thread.php?threadid=". $thread_id;
             $noResult = false;
             
             

            //display the search result
            echo '<div class="result">
                        <h3> <a href="'. $url. '" class="text-dark">'. $title. '</a> </h3>
                        <p>'. $desc .'</p>
                 </div>';

            }
        if($noResult){
            echo '<div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <p class="display-4">No Comments Found</p>
                        <p class="lead"> Suggestions:<ul>

                        <li>Make sure that all words are spelled correctly.</li>
                        <li>Try different keywords.</li>
                        <li>Try more general keywords.</p></li></ul>
                     </div>
                </div> ';
            }

    ?>
    </div>


    <?php  include 'partials/_footer.php'; ?>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    -->
</body>

</html>