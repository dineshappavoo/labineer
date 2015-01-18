<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" type="text/css" href="css/csshorizontalmenu.css" />
<title>Labineer</title>
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
<table width="900" height="475" align="center" bgcolor="#FFFFFF" border="0" class="page">
  <tr>
    <td width="266" height="52"><img src="images/logotextleft.png" /></td>
    <td width="624"><table width="100%" height="63" border="0" id="headerright" cellpadding="0">
      <tr>
        <td style="color:#FFCC00;font-size:9px;font-weight:bold;"><img src="images/headericonbandleft.jpg" /></td><td align="left">
		<%@include file="menuicons.html" %></td>
        <td align="left"><img src="images/headericonband.jpg" width="185" height="33"/></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td colspan="2" align="right" valign="top"><span style="color:#000;font-size:14px;font-weight:bold;">Search:</span><input type="text" size="35" height="15"/> <img src="images/search.jpg"/></td>
      </tr>
    </table></td>
  </tr>
  <tr>
     
        <td height="25" colspan="2" valign="top" background="images/blackglossy.PNG">
		<%@include file="menu.html" %>
		</td>
  </tr>
	  <tr>
	  	<td height="135" width="100%" colspan="2" valign="top">
		<table width="98%" height="295">
		<tr><td width="158" height="289" valign="top" class="leftnav">
		<%@include file="leftnav.html" %>
		<p>&nbsp;</p></td><td width="780" valign="top"><table width="100%" border="0" >
		             <tr>
               <td width="45%" class="productstop" align="right" colspan="2" style="border:1px solid #cccccc;-moz-border-radius: 5px;-webkit-border-radius: 5px;">
               <table><td><p><img src="images/satisfaction.png" width="359" height="49" /></p></td><td><img src="images/callus.png" width="364" height="50" /></td></table>
               </td>
             </tr>
             <tr>
               <td colspan="2" valign="top"><br><br>
                <table width="100%" border="0" cellspacing="5" cellpadding="0">
                   <tr>
                     <td width="151"><a href="Equipments.jsp"><img src="images/equipments.png" width="140" height="140" border="0"/></a></td>
                     <td width="587"><table class="subheading"><td width="100%"><span class="subheading" width="100%">Equipment Service</span></td></table><br><br>
                      <p> We are providing world class service and maintanance for all types of medical equipments. 
                     We provide service for all kinds of Medical Instruments, Surgical Instruments, Hospital Equipment, Laboratory Products, Diagnostics and Sundries.We  also offer assesments for hospitals and medical centers preparing to expand or  enhance current operations.Onsite evaluations,recommendations for&nbsp; next&nbsp;  steps and a list of needed resources are all provided.</p>
                      <span style="float:left;color:#990000;font-weight:bold"><a href="#" style="color:#990000;"><img src="images/index_41.gif" border="0"/>&nbsp;&nbsp;<b>read more</b></a></span>
                      </td>
                   </tr>
                   <tr>
                     <td width="151"><a href="products.do?method=disposables"><img src="images/disposables.png" border="0"/></a></td>
                     <td width="587"><p><span class="subheading">Disposables</span><br>
                        
                     
                      <p>We offer superior quality medical disposables that are sourced from reliable and trusted partners. These are procured after thorough testing on quality which enables us to cater our range in clinics, hospitals and other institutes where they are commonly used.

Some of our range comprises of the following


</p>
                      <span style="float:left;color:#990000;font-weight:bold"><a href="products.do?method=disposables" style="color:#990000;"><img src="images/index_41.gif" border="0"/>&nbsp;&nbsp;<b>read more</b></a></span>
                      </td>
                   </tr>
                   <tr>
                     <td width="151"><img src="images/accessories.png" /></td>
                     <td width="587"><p><span class="subheading">Accessories</span><br><br>
                       We are selling world class medical accessories and hospital needs. 
                      
                       We provide different hospital accessories that are used for specific purposes in diagnosis and treatment processes. Our products are imported from the manufactured in conformation to industrial standards to fulfill the required criteria set for medical equipments globally.
</p>
                      <span style="float:left;color:#990000;font-weight:bold"><a href="#" style="color:#990000;"><img src="images/index_41.gif" border="0"/>&nbsp;&nbsp;<b>read more</b></a></span>
                      </td>
                   </tr>
                 </table>
                </td>
             </tr>
            
           </table></td>
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
