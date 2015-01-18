<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ taglib prefix="html" uri="/WEB-INF/struts-html.tld" %>
 <%@ taglib prefix="bean" uri="/WEB-INF/struts-bean.tld"%>
 <%@ taglib prefix="logic" uri="/WEB-INF/struts-logic.tld" %>
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Labineer Medical Equipments</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/csshorizontalmenu.css" />

<script type="text/javascript" src="js/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous.js?load=effects"></script>
<script type="text/javascript" src="js/lightbox.js"></script>
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />


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
               <td width="45%" class="productstop" align="right"><p><img src="images/modelsandoffers.png"  height="77" /></p>                </td>
               <td width="45%" class="productstop" align="right"><img src="images/saveonmaintanence.png" /></td>
             </tr>
             <tr>
             	<td colspan="2">&nbsp;</td>
             </tr>
             <tr>
             	
               <td colspan="2" valign="top">
               <table class="detailstable" width="100">
              
             		<logic:present name="productdetails">
						<logic:iterate name="productdetails" id="productiter">
					<tr><td colspan="8" style="background-color:#EEE9E9;"><h2 style="color:#36648B;"><bean:write name="productiter" property="productid"/>-<bean:write name="productiter" property="product_name"/>-<bean:write name="productiter" property="product_specification"/></h2></td></tr>
					<tr><td colspan="8">
					<br>
					<span class="subheading">Description:</span><br><bean:write name="productiter" property="product_description"/><br> 
              		</br></td></tr>
              		<tr><td colspan="8">
              		<span class="subheading">Features:</span><br><bean:write name="productiter" property="product_features"/> 
              		</td></tr>
              		 <tr style="background-image:url('images/glossyback.gif');">
              		 <th>Id</th><th>Preview</th><th>Name</th><th>Category</th><th>Specification</th><th>Standards</th><th>Brand</th><th>Availability</th>
               		</tr>
					<tr style="background-image:url(images/blugradient.png);">
						<td valign="top"><bean:write name="productiter" property="productid"/></td><td width="100" height="100"><img src="Disposables/<bean:write name="productiter" property="productid"/>.png" width="100" height="100"/><br><span align="center"><a href="Disposables/<bean:write name="productiter" property="productid"/>.png" width="350" height="350" border="0" rel="lightbox" title="<bean:write name="productiter" property="product_name"/>"><img src="images/enlarge.jpg" border="0" width="15" height="15" align="left"/>&nbsp;Enlarge</a></span></td><td><bean:write name="productiter" property="product_name"/></td><td><bean:write name="productiter" property="product_category"/></td><td><bean:write name="productiter" property="product_specification"/></td><td><bean:write name="productiter" property="product_standard"/></td><td><bean:write name="productiter" property="product_brand"/></td><td><bean:write name="productiter" property="product_availability"/></td>
              		</tr>	
              		<tr><td colspan="8">&nbsp;</td></tr>
							 
						</logic:iterate>
					</logic:present>
					</table>
			   </td>
             </tr>
            
           </table></td>
		</tr>
		
		</table>
		</td>
		
	  </tr>
     <tr><td><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></td></tr>
      <tr>
       <td colspan="3" background="images/wrapper_background.jpg" height="35px;" align="center">
    <span class="footercontent">Copyright &copy; Labineer.com. All rights reserved. Designed by Nithyanandam</span> <br>
      <span class="style5"><a href="#">Terms of Use</a>   |   <a href="#">Privacy Policy</a></span>    </td>
      </tr>
</table>
</body>
</html:html>
