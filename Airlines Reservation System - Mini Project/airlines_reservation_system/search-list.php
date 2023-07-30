<?php 
	include_once("includes/header.php"); 
	include_once("includes/db_connect.php"); 
	$R = $_REQUEST;
	$SQL="SELECT * FROM `route`, `company`, `airlines`,`city` WHERE route_from_city = city_id AND route_airlines_id = airlines_id AND airlines_company_id = company_id AND route_from_city = $R[airlines_from] AND route_to_city = $R[airlines_to]";
	$rs=mysqli_query($con,$SQL) or die(mysqli_error($con));
	if(!mysqli_num_rows($rs))
	{
		header("location:search.php?msg=No flight found on this route !!!!");
		exit;
	}
?>
<script>
function book_ticket(route_id)
{
	this.document.frm_airlines.route_id.value=route_id;
	this.document.frm_airlines.submit();
}
</script>
<style>
.static tr td {
    padding: 5px;
    border: #e9e9e9 solid 0px;
    font-size:15px;
}
.myrow {
	width:17%; 
	font-size:18px; 
	font-weight:bold; 
	text-align:center;
}
</style>
	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1" style="width:100%">
		<div class="contact">
			<h4 class="heading colr">All Available Flights</h4>
			<?php
			if($_REQUEST['msg']) { 
			?>
				<div class="msg"><?=$_REQUEST['msg']?></div>
			<?php
			}
			?>
			<form name="frm_airlines" action="book.php" method="post">
				<div class="static">
					<table style="width:100%">
					  <tr class="tablehead bold">
						<td style="width:16%">Flight</td>
						<td style="width:16%">Flight No</td>
						<td style="width:16%">Arrival</td>
						<td style="width:16%">Departure</td>
						<td style="width:16%">Price</td>
						<td style="width:16%">Action</td>
					  </tr>
					</table> 
					<?php 
					$sr_no=1;
					while($data = mysqli_fetch_assoc($rs))
					{
					?>
					<table style="width:100%; border-bottom:1px solid #ccc">
					  <tr>
						<td style="width:16%"><img src="uploads/<?=$data['company_image']?>" style="height:100px;"></td>
						<td class="myrow"><?=$data[airlines_no]?></td>
						<td class="myrow"><?=$data[route_from_arrival]?></td>
						<td class="myrow"><?=$data[route_from_departure]?></td>
						<td class="myrow"><?=$data[route_economy_fare]?></td>
						<td style="text-align:center">
							<a href="JavaScript:book_ticket(<?php echo $data[route_id] ?>)"><img src="images/book.png" style="height:50px;"></a> 
						</td>
						</td>
					  </tr>
					  </table>
					<?php } ?>
				</div>
				<input type="hidden" name="act" />
				<input type="hidden" name="route_id" />
				<input type="hidden" name="book_date" value="<?=$_REQUEST['book_date']?>"/>
				<input type="hidden" name="class" value="<?=$_REQUEST['class']?>"/>
				<input type="hidden" name="adult" value="<?=$_REQUEST['adult']?>"/>
				<input type="hidden" name="child" value="<?=$_REQUEST['child']?>"/>
				<input type="hidden" name="infant" value="<?=$_REQUEST['infant']?>"/>
			</form>
		</div>
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
