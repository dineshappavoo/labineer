<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld" %>
 <%@ taglib prefix="bean" uri="/WEB-INF/struts-bean.tld"%>
 <%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<html:html>
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
</script></head>

<body bgcolor="#FFFFFF">
<table width="900" height="382" align="center" bgcolor="#FFFFFF" border="0" class="page">
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
		<table width="98%" height="236">
		<tr><td width="158" height="230" valign="top" class="leftnav"> 
          <%@include file="leftnav.html" %>
		    <p>&nbsp;</p></td><td width="780" valign="top"><table width="100%" border="0" >
             <tr>
               <td width="45%" class="productstop" align="right"><p><img src="images/satisfaction.png" width="359" height="49" /></p>                </td>
               <td width="45%" class="productstop" align="right"><img src="images/callus.png" width="364" height="50" /></td>
             </tr>
             <tr>
               <td colspan="2" valign="top" background="images/contactusbg.png">
			   		    
			   <html:form action="contactus.do?method=contactus">
			   <br>
				  &nbsp;
				 <table class="contactus" align="right" width="70%">
					 <tr><td colspan="2" style="background-color:#EEE9E9;">
					 <span class="subheading">Contact us</span>
					 </td></tr>
				    <tr>
				    <tr><td colspan="2"><p style="color:#8B2323;">Submit the details,Our customer service executive will get in touch with you shortly</p>
				    </td></tr>
					<td>First Name:</td><td><html:text value="" property="firstName"/></td>
	
					</tr>
					<tr>
					<td>Second Name:</td><td><html:text value="" property="secondName"/></td>
	
					</tr>
					 <tr>
					<td>Last Name:</td><td><html:text value="" property="lastName"/></td>
	
					</tr>
					<tr>
					<td>Address Line 1:</td><td><html:text value="" property="addressLine1"/></td>
	
					</tr>
					<tr>
					<td>Address Line 2:</td><td><html:text value="" property="addressLine2"/></td>
	
					</tr>
					<tr>
					<td>Address Line 3:</td><td><html:text value="" property="addressLine3"/></td>
	
					</tr>
					<tr>
					<td>City:</td><td><html:text value="" property="city"/></td>
	
					</tr>
					<tr>
					<td>State:</td><td><html:text value="" property="state"/></td>
	
					</tr>
					<tr>
					<td>Country:</td><td><html:text value="" property="country"/></td>
	
					</tr>
					<tr>
					<td>Email Id:</td><td><html:text value="" property="emailId"/></td>
	
					</tr>
					<tr>
					<td>Phone no:</td><td><html:text value="" property="phoneNo"/></td>
	
					</tr>
					<tr>
					<td>Mobile No:</td><td><html:text value="" property="mobileNo"/></td>
	
					</tr>
					<tr>
					<td>Company Name:</td><td><html:text value="" property="companyName"/></td>
	
					</tr>
					<tr>
					<td>Purpose of Contact:</td><td><html:text value="" property="purposeofContact"/></td>
	
					</tr>
					<tr>
					<td>Comments:</td><td><html:text property="comments" value=""/></td>
	
					</tr>
					<tr>
					<td align="center"><html:submit property="submit" value="submit"/>&nbsp;&nbsp;<html:reset value="reset"/></td>
	
					</tr>
				 </table> 
				 </html:form>
				 
			   </td>
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
</table>
</body>
</html:html>
