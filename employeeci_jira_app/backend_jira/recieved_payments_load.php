<?php
error_reporting(0);
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");


ini_set('max_execution_time', 300); //300 seconds = 5 minutes
// temporarly extend time limit
set_time_limit(300);




include('data6rst.php');

$queryid = $_POST['queryid_recieved'];
$page_row_call = $_POST['page_row_call_recieved'];


$owner_id= strip_tags($_POST['owner_id']);
$owner_email= strip_tags($_POST['owner_email']);

$res= $db->prepare("SELECT count(*) as totalcount FROM salary_emp_rapyd where recipient_id=:recipient_id  order by id");
$res->execute(array(':recipient_id' =>$owner_email));
$t_row = $res->fetch();
$totalcount = $t_row['totalcount'];

if($totalcount == 0){
//echo "<div style='background:red;color:white;padding:10px;border:none;'>No user Has been Paid Salary Yet.. <b></b></div>";
echo 11;
exit();
}

$result = $db->prepare("SELECT * FROM salary_emp_rapyd where recipient_id=:recipient_id  order by id DESC limit :row1, :rowpage");
$result->bindValue(':rowpage', (int) trim($page_row_call), PDO::PARAM_INT);
$result->bindValue(':row1', (int) trim($queryid), PDO::PARAM_INT);
//$result->bindValue(':userid', trim($owner_id), PDO::PARAM_STR);
$result->bindValue(':recipient_id', trim($owner_email), PDO::PARAM_INT);
//$result->bindValue(':user_id', trim($user_id), PDO::PARAM_INT);
$result->execute();

$count_post = $result->rowCount();


$result_arr = array();
$result_arr[] = array("allcount" => $totalcount);
while($row = $result->fetch()){

$id = htmlentities(htmlentities($row['id'], ENT_QUOTES, "UTF-8"));
$usertoken = htmlentities(htmlentities($row['user_token'], ENT_QUOTES, "UTF-8"));
$userid = htmlentities(htmlentities($row['user_id'], ENT_QUOTES, "UTF-8"));
$photo = htmlentities(htmlentities($row['photo'], ENT_QUOTES, "UTF-8"));
$fullname = htmlentities(htmlentities($row['fullname'], ENT_QUOTES, "UTF-8"));
$department = htmlentities(htmlentities($row['department'], ENT_QUOTES, "UTF-8"));
$salary_amount = htmlentities(htmlentities($row['salary_amount'], ENT_QUOTES, "UTF-8"));
$salary_month = htmlentities(htmlentities($row['month_period'], ENT_QUOTES, "UTF-8"));
$timing = htmlentities(htmlentities($row['timing'], ENT_QUOTES, "UTF-8"));
$payment_method = htmlentities(htmlentities($row['payment_type1'], ENT_QUOTES, "UTF-8"));
$payment_method2 = htmlentities(htmlentities($row['payment_type2'], ENT_QUOTES, "UTF-8"));
$user_ewallet_id = htmlentities(htmlentities($row['user_ewallet_id'], ENT_QUOTES, "UTF-8"));

$payout_id = htmlentities(htmlentities($row['payout_id'], ENT_QUOTES, "UTF-8"));
$payout_status = htmlentities(htmlentities($row['payout_status'], ENT_QUOTES, "UTF-8"));
$reason = htmlentities(htmlentities($row['reason'], ENT_QUOTES, "UTF-8"));
$sender_name = htmlentities(htmlentities($row['sender_name'], ENT_QUOTES, "UTF-8"));
$sender_photo = htmlentities(htmlentities($row['sender_photo'], ENT_QUOTES, "UTF-8"));

$result_arr[] = array(
"id" => $id,
"userid " => $userid ,
"usertoken " => $usertoken ,
"photo" => $photo,
"fullname" => $fullname,
"department" => $department,
"salary_amount" => $salary_amount,
"salary_month" => $salary_month,
"timing" => $timing,
"payment_method" => $payment_method,
"payment_method2" => $payment_method2,
"user_ewallet_id" => $user_ewallet_id,
"payout_id" => $payout_id,
"payout_status" => $payout_status,
"reason" => $reason,
"sender_name" => $sender_name,
"sender_photo" => $sender_photo

);


}
echo json_encode($result_arr);