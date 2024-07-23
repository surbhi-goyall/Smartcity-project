<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body style="margin: 50px; background: linear-gradient(90deg, rgba(149,143,246,0.41789215686274506) 0%, rgba(135,131,208,1) 0%, rgba(102,210,167,1) 0%, rgba(25,98,183,1) 100%)">
    <h1>Schools within 5km</h1>
    <br>
    <table class="table" style="color: #00CED1;">
        <thead>
            <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
            </tr>
        </thead>

        <tbody>
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "123@sg";
            $database = "smartcity";

            $connection = new mysqli($servername, $username, $password, $database);

            //check
            // if($connection->connect-error) {
            //     die("Connection failed: ".$connection->connect-error);
            // }

            //read
            $sql = "SELECT * FROM school WHERE distance <= 5.0";
            $result = $connection->query($sql);

            if(!$result){
                die("Invalid query: ".$connection->error);
            }

            while($row = $result->fetch_assoc()) {
                echo "<tr>
                <td>". $row["sno"]."</td>
                <td>". $row["name"]."</td>
                <td>". $row["address"]."</td>
                <td>". $row["phone_no"]."</td>
                <td>". $row["emails"]."</td>
                
            </tr>";
            }

            
            ?>
        </tbody>
    </table>
</body>
</html>