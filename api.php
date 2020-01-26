<?php
require_once('classes/shape.class.php');
require_once('classes/square.class.php');
require_once('classes/rectangle.class.php');
require_once('classes/factory.class.php');
require_once('db-access.php');

if ($_SERVER['REQUEST_METHOD'] != 'POST') {
    http_response_code(405);
}

else {
    $shape = filter_input(INPUT_POST,"shape",FILTER_SANITIZE_SPECIAL_CHARS);
    $input_value = filter_input(INPUT_POST,"input_value",FILTER_SANITIZE_SPECIAL_CHARS);

    $rslt = ShapeFactory::createShape($shape);

    if ($rslt == $input_value) {
        echo "Correct!";
        $guess = 'correct';
    }
    else {
        echo "Incorrect. Your lucky guess should have been " . $rslt . ".";
        $guess = 'incorrect';
    }

    $input_value = $input_value ? $input_value : 0; // To prevent db insertion error when $input_value == ''. muliCohen

    $sql = "INSERT INTO guessing_table (shape, guess, guess_outcome)
            VALUES ('$shape', $input_value, '$guess')";
    
    if ($conn->query($sql) !== TRUE) { // error handler + execution. muliCohen
          echo "Error: " . $sql . "<br>" . $conn->error;
    }
    http_response_code(200);
    $conn->close();
}
?>