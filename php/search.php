

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search data</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" >
</head>
<body style="margin: 50px; background: linear-gradient(90deg, rgba(149,143,246,0.41789215686274506) 0%, rgba(135,131,208,1) 0%, rgba(102,210,167,1) 0%, rgba(25,98,183,1) 100%)">
    <div class="container" >
        <form method="post">
            <input type="text" placeholder="Search data"
            name="search" style="height: 50px; width: 475px;" >
            <button name="submit" style="height: 50px; width: 100px; border-radius: 5px; ">Search</button>
        </form>
        <div class="container my-5">
            <table class="table">
                <?php
                $servername = "localhost";
                $username = "root";
                $password = "123@sg";
                $database = "smartcity";
    
                $connection = new mysqli($servername, $username, $password, $database);
    if(isset($_POST['submit'])){
        $search = $_POST['search'];

        $sql=" SELECT * from hospitals where name like '%$search%' ";
        $result= mysqli_query($connection,$sql);

        if(!$result){
            die("Invalid query: ".$connection->error);
        }

        if($result){
        if(mysqli_num_rows($result)>0){
            echo '<thead>
            <tr>
            <th>S.No.</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
            </tr>
            </thead>
            ';
           

            while($row = $result->fetch_assoc()) {
                echo "<tr>
                <td>". $row["sno"]."</td>
                <td>". $row["name"]."</td>
                <td>". $row["address"]."</td>
                <td>". $row["phone_no"]."</td>
                <td>". $row["email"]."</td>
                
            </tr>";
            }
        }
        }
    }
    ?>

    </table>
    </div>
    </div>
    
</body>
</html>