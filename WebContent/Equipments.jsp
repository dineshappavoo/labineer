<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/csshorizontalmenu.css" />
<title>Untitled Document</title>
<script>

var rotate = new Array();
	rotate[1] = new  Array();
	rotate[1][0] = '<img src="images/index_34.jpg" width="137px;" height="137px;"/>';
	
	rotate[2] = new  Array();
	rotate[2][0] = '<img src="images/mediana_cat_4.jpg" width="137px;" height="137px;"/>';
	
	rotate[3] = new  Array();
	rotate[3][0] = '<img src="images/patientmonitor.jpg" width="137px;" height="137px;"/>';
	
	rotate[4] = new  Array();
	rotate[4][0] = '<img src="images/Ventilator.jpg" width="137px;" height="137px;"/>';
	
	
	
	arrCnt=1;
	 
	function viewer_display()
	{
		if (arrCnt>4)
		{
			arrCnt=1;
		}
		document.getElementById("slideinfo").innerHTML=rotate[arrCnt][0];
		window.setTimeout("viewer_display()",5000);
		//alert(rotate[arrCnt][0]);
		arrCnt++;
	}


var  ContentHeight = 150;
var TimeToSlide = 250.0;

var openAccordion = '';
runAccordion(1);
function runAccordion(index)
{
  var nID = "Accordion" + index + "Content";
  if(openAccordion == nID)
    nID = '';
   
  setTimeout("animate(" + new Date().getTime() + "," + TimeToSlide + ",'"
      + openAccordion + "','" + nID + "')", 33);
 
  openAccordion = nID;
}

function  animate(lastTick, timeLeft, closingId, openingId)
{  
  var curTick = new Date().getTime();
  var elapsedTicks = curTick - lastTick;
 
  var opening = (openingId == '') ? null : document.getElementById(openingId);
  var closing = (closingId == '') ? null : document.getElementById(closingId);
 
  if(timeLeft <= elapsedTicks)
  {
    if(opening != null)
      opening.style.height = ContentHeight + 'px';
   
    if(closing != null)
    {
      closing.style.display = 'none';
      closing.style.height = '0px';
    }
    return;
  }
 
  timeLeft -= elapsedTicks;
  var newClosedHeight = Math.round((timeLeft/TimeToSlide) * ContentHeight);

  if(opening != null)
  {
    if(opening.style.display != 'block')
      opening.style.display = 'block';
    opening.style.height = (ContentHeight - newClosedHeight) + 'px';
  }
 
  if(closing != null)
    closing.style.height = newClosedHeight + 'px';

  setTimeout("animate(" + curTick + "," + timeLeft + ",'"
      + closingId + "','" + openingId + "')", 33);
}
</script>
</head>

<body bgcolor="#FFFFFF">
<table width="900" height="382" align="center" bgcolor="#FFFFFF" border="0">
  <tr>
    <td width="266" height="52"><img src="images/logotextleft.png" /></td>
    <td width="624"><table width="100%" height="63" border="0" id="headerright" cellpadding="0">
      <tr>
        <td style="color:#FFCC00;font-size:9px;font-weight:bold;"><img src="images/headericonbandleft.jpg"/></td><td align="left">
		<%@include file="menuicons.html" %></td>
        <td align="left"><img src="images/headericonband.jpg" width="199" height="33"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="2" align="right" valign="top"><span style="color:#000;font-size:14px;font-weight:bold;">Search:</span><input type="text" size="35" height="15"/> <img src="images/search.jpg"/></td>
      </tr>
    </table></td>
  </tr>
  <tr>
     
        <td height="25" colspan="2" valign="top" background="images/blackglossy.PNG">
		<%@include file="menu.html" %></td>
  </tr>
	  <tr>
	  	<td height="238" width="100%" colspan="2" valign="top">
		<table width="100%" height="236">
		<tr><td width="158" height="230" valign="top" class="leftnav">
		 	<%@include file="leftnav.html" %>
		    <p>&nbsp;</p></td><td width="780" valign="top"><table width="102%" border="0" >
             <tr>
               <td width="45%" class="productstop" align="right"><p><img src="images/addsubnews.png" width="350" /></p>                </td>
              <td width="45%" class="productstop" align="right"></td>
             </tr>
             <tr>
               <td colspan="2" valign="top">
			  	 <br /><span class="subheading">Medical Equipments and Instruments Service Program</span>
				
				<table border="0"><tr><td>
				<p>
				An estimated  50 percent of medical equipment in developing countries does’t work.
Missing manuals,incompatible power connections and needed repairs turn generous equipment donations into unusable machines.Our solution is to serve as a critical link between euipment donors and recipients to guarantee equipment donations are ready for use.

				</p>
				<p>
				We help hospitals in developing nations attain selfsufficiancy in equipment operations by supplying them with new and refurbished medical equipment operation manuals and technical field support .
<br />
We also offer assesments for hospitals and medical centers preparing to expand or enhance current operations.Onsite evaluations,recommendations for  next  steps and a list of needed resources are all provided.

				
				</p>
				
				 <p><strong>Equipment and Facility Experience Solutions</strong></p><br />
If you value experience when comparing third-party service organizations, what  value do you place on the following experience &ndash;<br />
<p>Labineer has serviced more types of medical and scientific equipment, for more  manufacturers, in more locations and kinds of facilities, for a longer time,  than any other independent service organization.</p> <br />
</td><td valign="top"><img src="images/patientmonitor.jpg" width="250" height="250"/></td></tr></table>


<span class="subheading"><p>Labineer has More Facility Experience</p></span><br />
<p>We routinely provide maintenance and repair services on site, 24x7x365, to the  widest array of facilities, e.g.:</p>
		         <ul type="disc">
                   <li><u><span class="subheading">Healthcare       facilities</span></u>:       hospitals, nursing homes, free-standing imaging/surgical/dialysis centers,       clinical labs, physicians/dentists/chiropractors/podiatrists offices,       animal hospitals, public health departments, retail pharmacies, health       clubs, physical therapy/rehabilitation facilities.<br />
                     &nbsp;</li>
		           <li><u><span class="subheading">Non-healthcare       facilities</span></u>:       biotech/pharmaceutical products manufacturers, environmental       testing/pollution control/forensic/food safety testing labs,       contract/government research organizations.</li>
	              </ul>
	            <p>&nbsp;</p></td>
             </tr>
            
           </table>
		   </td>
		</tr>
		
		</table>
		</td>
		
	  </tr>
     
      <tr>
       <td colspan="3" background="images/wrapper_background.jpg" height="35px;" align="center">
    <span class="footercontent">Copyright &copy; Labineer.com. All rights reserved. Designed by Nithyanandam</span> <br>
      <span class="style5"><a href="#">Terms of Use</a>   |   <a href="#">Privacy Policy</a></span>    </td>
      </tr>
</table><script>viewer_display();header_display();</script>
</body>
</html>
