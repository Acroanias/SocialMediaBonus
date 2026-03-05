<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <style>
            table {border-collapse: collapse; width: 100%; margin-bottom: 30px;}
            th, td {border: 1 px solid #ccc; padding: 8px; text-align: left; }
            th { background-color: #4CAF50; color: white; }
            tr:nth-child(even) {baxkground-color: #f2f2f2; }
            h3 {color: #333;}
        </style>
    </head>
    <body> 

    <h2>Login Page</h2>

    <form method ="POST">
        Username: <input type ="text" name ="username" required><br><br>
        Password: <input type ="password" name ="password" required><br><br>
        <button type="submit">Login</button>
    </form>

    <?php
        $conn = new mysqli("localhost","root","","SocialMediaDB");

        $message ="";

        if($_SERVER["REQUEST_METHOD"]=="POST"){

            $username =$_POST["username"];
            $password =$_POST["password"];
            $hash = password_hash($password, PASSWORD_DEFAULT); //using hash function to hash given password

            //fetch the user name only
            $stmt = $conn ->prepare ("SELECT * FROM Users WHERE username = ?");
            $stmt->bind_param("s", $username);
            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                $user = $result->fetch_assoc();

                //verify the entered password against the stored hash
                if (password_verify($password, $user["password"])){
                    $message = "Login Successful";
                } else {
                    $message = "Login Unsuccessful";
                }
            } else { 
                $message = "Login Unsuccessful";
            }
        } 
            $sql = "SELECT * FROM Users where 
            username='$username' and password ='$password'";

            $result = $conn->query($sql);

            if($result->num_rows>0){
                $message ="Login Successful";

            }
            else
                $message ="Login Unsuccessful";
        }

    ?>


    <p style="color:red;">
        <?php echo $message; ?>
    </p>

</body>
</html>



