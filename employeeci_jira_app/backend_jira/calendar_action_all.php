<?php

error_reporting(0);
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST');
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

//ini_set('max_execution_time', 300); //300 seconds = 5 minutes
// temporarly extend time limit
//set_time_limit(300);
?>


<style>
.tooltip1 {
    position: relative;
    display: inline-block;
    border-bottom: 1px dotted black;
}

.tooltip1 .tooltiptext {
    visibility: hidden;
//height:120px;
    width: 400px;

    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px 0;
font-size:12px;
    
    /* Position the tooltip */
    position: absolute;
    z-index: 1;
    bottom: 100%;
    left: 50%;
    margin-left: -60px;
}

.tooltip1:hover .tooltiptext {
    visibility: visible;
}


.collect_css{
background:#ec5574;
color:white;
border:none;
padding:10px;
border-radius:50%;
font-size:16px;
}
.collect_css:hover{
background:orange;
color:black;
}


.disburse_css{
background:purple;
color:white;
border:none;
padding:10px;
border-radius:50%;
font-size:16px;
}
.disburse_css:hover{
background:orange;
color:black;
}



.walleting_css{
background:#800000;
color:white;
border:none;
padding:10px;
border-radius:50%;
font-size:16px;
}
.walleting_css:hover{
background:orange;
color:black;
}

.eng_css{
background: blue;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.eng_css:hover{
background: orange;
color:black;

}

.op_css{
background: green;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.op_css:hover{
background: orange;
color:black;

}



.des_css{
background: purple;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.des_css:hover{
background: orange;
color:black;

}


.sup_css{
background: #800000;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.sup_css:hover{
background: orange;
color:black;

}


		
		

.p1_css{
background: #FF00FF;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.p1_css:hover{
background: orange;
color:black;

}

.p2_css{
background: #008000;
color:white;
padding:6px;
border:none;
border-radius:10%;
text-align:center;
}

.p2_css:hover{
background: orange;
color:black;

}

</style>

<?php
error_reporting(0);


include('settings_url.php');
 include('data6rst.php');


 $userid1 = strip_tags($_GET['userid1']);
//$month = 07;


//$month = date('m');

$month1 = date('m');
$year = date('y');



$string = $month1;
 
//Get the first character.
$firstCharacter = $string[0];

//Get the second character.
$secondCharacter = $string[1];

if($firstCharacter ==0){

$month = $secondCharacter;
}

if($firstCharacter !=0){

echo $month = $month1;
}


if(!empty($_GET['month'])) $month = $_GET['month'];
if(!empty($_GET['year'])) $year = $_GET['year'];
if(!empty($_GET['uid']))  $uid = strip_tags($_GET['uid']);

	$calendar = '';
	if($month == null || $year == null) {
		$month = date('m');
		$year = date('Y');
	}
	$date = mktime(12, 0, 0, $month, 1, $year);
	$daysInMonth = date("t", $date);
	$offset = date("w", $date);
	$rows = 1;
	$prev_month = $month - 1;
	$prev_year = $year;
	if ($month == 1) {
		$prev_month = 12;
		$prev_year = $year-1;
	}
	
	$next_month = $month + 1;
	$next_year = $year;
	if ($month == 12) {
		$next_month = 1;
		$next_year = $year + 1;
	}



	$calendar .= "<div class='panel-heading text-center'><div class='row'><div class='col-md-3 col-xs-4'><a title='previous' class='calendar_call btn btn-default btn-sm' href='".$file_url."calendar_action_all.php?month=".$prev_month."&year=".$prev_year."&userid1=".$userid1."'><span class='glyphicon glyphicon-arrow-left'></span>Previous</a></div><div class='col-md-6 col-xs-4'><strong>" . date("F Y", $date) . "</strong></div>";
	$calendar .= "<div class='col-md-3 col-xs-4 '><a title='Next' class='calendar_call btn btn-default btn-sm' href='".$file_url."calendar_action_all.php?month=".$next_month."&year=".$next_year."&userid1=".$userid1."'><span class='glyphicon glyphicon-arrow-right'></span>Next</a></div></div></div>"; 

        $calendar .= "<table class='table table-bordered'>";
	$calendar .= "<tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th></tr>";
	$calendar .= "<tr>";

	for($i = 1; $i <= $offset; $i++) {
		$calendar .= "<td></td>";
	}
	for($day = 1; $day <= $daysInMonth; $day++) {
		if( ($day + $offset - 1) % 7 == 0 && $day != 1) {
			$calendar .= "</tr><tr>";
			$rows++;
		}


$result = $db->prepare("SELECT * from salary_emp_rapyd  where month_date = :month_date and creator_id=:creator_id");		
$result->execute(array(':month_date'=>$month, ':creator_id'=>$userid1));



$data = $result->fetchAll();
		$mycalendar_res = '';
if(!empty($data)) {
		foreach ($data as $key => $pRow) {

$day_convert = strtotime($pRow['month_period']);
$c_day = date("d", $day_convert);


$photo = htmlentities(htmlentities($pRow['photo'], ENT_QUOTES, "UTF-8"));
$fullname = htmlentities(htmlentities($pRow['fullname'], ENT_QUOTES, "UTF-8"));
$department = htmlentities(htmlentities($pRow['department'], ENT_QUOTES, "UTF-8"));
$user_token = htmlentities(htmlentities($pRow['user_token'], ENT_QUOTES, "UTF-8"));
$user_id = htmlentities(htmlentities($pRow['user_id'], ENT_QUOTES, "UTF-8"));
$timing = htmlentities(htmlentities($pRow['timing'], ENT_QUOTES, "UTF-8"));

$payout_status= htmlentities(htmlentities($pRow['payout_status'], ENT_QUOTES, "UTF-8"));
$payment_type1 = htmlentities(htmlentities($pRow['payment_type1'], ENT_QUOTES, "UTF-8"));
$payment_type2 = htmlentities(htmlentities($pRow['payment_type2'], ENT_QUOTES, "UTF-8"));
$salary = htmlentities(htmlentities($pRow['salary_amount'], ENT_QUOTES, "UTF-8"));
$month_period = htmlentities(htmlentities($pRow['month_period'], ENT_QUOTES, "UTF-8"));

if($payout_status =='Created'){
$pay1_css= 'p1_css';
}	
if($payout_status =='PEN'){
$pay1_css= 'p1_css';
}				
if($payout_status =='Completed'){
$pay1_css= 'p2_css';
}	
if($payout_status =='CLO'){
$pay1_css= 'p2_css';
}						
						
if($payment_type1 =='Disburse'){
$pay_css= 'eng_css';
}
if($payment_type1 =='Wallet'){
$pay_css= 'des_css';
}


if($payout_status =='Completed'){
$c_pay1 = 'Payments';
$c_pay2 = 'Payments Completed';
}



if($payout_status =='CLO'){
$c_pay1 = 'Transfer';
$c_pay2  ='Transfer Completed';
}


	if($c_day == $day) {



$mycalendar_res .= '
<div class="tooltip1 img-responsive">


<img alt="Image" src='.$file_url.'uploads_image/'.$photo.' class="img-thumbnail img-circle" width="50px" height="50px"/><br>
<span style="font-size:12px;"> '.$pRow['fullname'].'</span><br>
<div style="font-size:12px;" class='.$pay1_css.'><b>'.$c_pay1.' Status: </b><br> '.$payout_status.'</div>




<div class="tooltiptext">

<img alt="Image" src='.$file_url.'uploads_image/'.$pRow['photo'].' class="img-thumbnail img-circle" width="50px" height="50px"/><br>
<span ><b>Name: </b> '.$pRow['fullname'].'</span><br>

<div  ><b style="color:orange;font-size:14px">Department:</b> '.$pRow['department'].' </div>
<div  ><b style="color:orange;font-size:14px">Salary:</b> '.$salary.' (USD)</div>
<div  ><b style="color:#006400;font-size:14px">Date:</b> '.$month_period.' </div>
<div class='.$pay1_css.'><b>'.$c_pay1.' Status: </b> '.$payout_status.'</div>
<div class='.$pay_css.' ><b>Payment Method : </b> '.$payment_type1.' ('.$payment_type2.')</div>
<div  color:pink;font-size:12px"><b>created:</b> <span  data-livestamp="'.$pRow['timing'].'" ></span> </div><br>
<a style="width:100%;" title ="Access Employees Salary Payments Profiles" class="col-sm-6 disburse_css" href="pay_salary.html?id='.$user_id.'&token='.$user_token.'&fullname='.$fullname.'">Access Employees Salary Payments Profiles</a>




</div> 
</div></a>';


}
			}
		}
 		$calendar .= "<td>" . $day . "<br>".$mycalendar_res."</td>";
	}
	while( ($day + $offset) <= $rows * 7)
	{
		$calendar .= "<td></td>";
		$day++;
	}
	$calendar .= "</tr>";
	$calendar .= "</table><hr>";
	echo $calendar;












?>






