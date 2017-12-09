<table>


<?php
/**
 * Created by PhpStorm.
 * User: esganac
 * Date: 12/9/17
 * Time: 2:12 PM
 */
include 'db_connnection.php';

/*
$sheet= 'sheet2';
$sq = "SHOW COLUMNS FROM $sheet"; // gets column names of the table
$conn = OpenCon();
$res = mysqli_query($conn,$sq);

/*
echo "<thead>";
echo "<tr>";

while($row = mysqli_fetch_array($res)){
    echo "<th>". $row['Field']."</th>";

}
echo "</tr>";
echo "</thead>";
*/

$sql = "SELECT * FROM `sheet2` WHERE `Asset Desc` LIKE '%laptop%'";

$result = selectdata($sql);
$tbl= 'sheet2';
$sq = "SHOW COLUMNS FROM $tbl"; // gets column names of the table
$conn = OpenCon();
$res = mysqli_query($conn,$sq);

echo "<thead>";
echo "<tr>";

while($row = mysqli_fetch_array($res)){
    echo "<th>". $row['Field']."</th>";
}
echo "</tr>";
echo "</thead>";


echo "<tbody>";

if($result !== "zero") {
    while ($row = mysqli_fetch_assoc($result)) {

        echo '<tr>';
        foreach ($row as $key => $field) {

            echo "<td>" . $field . "</td>";
        }
        echo '</tr>';
    }
    echo "</tbody>";
}
else
{
    echo $result;
}



function selectdata($sq)
{
    $conn = OpenCon();

    $result = $conn->query($sq);
    if($result)
    {
        if($result->num_rows > 0)
        {
            return $result;
        }
        else
        {
            return "zero";
        }
    }
    else
    {
        return $result->error;
    }
}



?>
</table>
