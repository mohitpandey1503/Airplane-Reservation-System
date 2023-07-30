<?php 
	include_once("includes/header.php"); 
?> 
	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1">
			<div class="contact" style="font-size:14px;">
				<h4 class="heading colr">About Airlines Reservation System</h4>
				<div style="font-size:12px;">
					<p>An airline reservation system (ARS) is part of the so-called passenger service systems (PSS), which are applications supporting the direct contact with the passenger.</p>
					<p>ARS eventually evolved into the computer reservations system (CRS). A computer reservation system is used for the reservations of a particular airline and interfaces with a global distribution system (GDS) which supports travel agencies and other distribution channels in making reservations for most major airlines in a single system.</p>
					<p>Airline reservation system contains airline schedules, fare tariffs, passenger reservations and ticket records. An airline's direct distribution works within their own reservation system, as well as pushing out information to the GDS. The second type of direct distribution channel are consumers who use the internet or mobile applications to make their own reservations. Travel agencies and other indirect distribution channels access the same GDS as those accessed by the airline reservation systems, and all messaging is transmitted by a standardized messaging system that functions on two types of messaging that transmit on SITA's HLN [high level network]. These messaging types are called Type A [usually EDIFACT format] for real time interactive communication and Type B [TTY] for informational and booking type of messages. Message construction standards set by IATA and ICAO, are global, and apply to more than air transportation. Since airline reservation systems are business critical applications, and they are functionally quite complex, the operation of an in-house airline reservation system is relatively expensive.</p>
					<p>An airline’s inventory contains all flights with their available seats. The inventory of an airline is generally divided into service classes (e.g. first, business or economy class) and up to 26 booking classes, for which different prices and booking conditions apply. Inventory data is imported and maintained through a schedule distribution system over standardized interfaces. One of the core functions of the inventory management is the inventory control. Inventory control steers how many seats are available in the different booking classes, by opening and closing individual booking classes for sale. In combination with the fares and booking conditions stored in the Fare Quote System, the price for each sold seat is determined. In most cases, inventory control has a real time interface to an airline’s Yield management system to support a permanent optimization of the offered booking classes in response to changes in demand or pricing strategies of a competitor.</p>

				</div>
			</div>
		</div>
		<div class="col2">
			<?php include_once("includes/sidebar.php"); ?> 
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
