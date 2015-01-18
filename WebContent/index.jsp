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
	rotate[1][0] = '<img src="images/buyfromus.jpg"/>';
	
	rotate[2] = new  Array();
	rotate[2][0] = '<img src="images/qualityproducts.jpg"/>';
	
	rotate[3] = new  Array();
	rotate[3][0] = '<img src="images/wecare.png"/>';
	
	 
	
	
	
	arrCnt=1;
	 
	function viewer_display()
	{
		if (arrCnt>3)
		{
			arrCnt=1;
		}
		document.getElementById("slideinfo").innerHTML=rotate[arrCnt][0];
		window.setTimeout("viewer_display()",5000);
		//alert(rotate[arrCnt][0]);
		arrCnt++;
	}


<!--slideshow-->
var rotateheader = new Array();
	rotateheader[1] = new  Array();
	rotateheader[1][0] = '<img src="images/quality.jpg" width="300px;" height="137px;"/>';
	
	rotateheader[2] = new  Array();
	rotateheader[2][0] = '<img src="images/commitment.jpg" width="300px;" height="137px;"/>';
	
	rotateheader[3] = new  Array();
	rotateheader[3][0] = '<img src="images/consistency.jpg" width="300px;" height="137px;"/>';
	
	
	
	
	headerarrCnt=1;
	 
	function header_display()
	{
		if (headerarrCnt>3)
		{
			headerarrCnt=1;
		}
		document.getElementById("headerslide").innerHTML=rotateheader[headerarrCnt][0];
		window.setTimeout("header_display()",2000);
		//alert(rotate[arrCnt][0]);
		headerarrCnt++;
	}

  </script>
</head>

<body onload="viewer_display();">  
<table width="900" height="699" align="center" bgcolor="#FFFFFF" border="0" class="page">
  <tr>
    <td width="30%" height="52"><img src="images/logotextleft.png" /></td>
    <td width="70%"><table width="100%" height="63" border="0" id="headerright" cellpadding="0">
      <tr>
        <td style="color:#FFCC00;font-size:9px;font-weight:bold;"><img src="images/headericonbandleft.jpg"/></td><td align="left">
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
		<%@include file="menu.html" %></td>
  </tr>
	  <tr>
	  	<td height="350" colspan="2" valign="top" id="slideinfo"><img src="images/buyfromus.jpg" width="900" height="350" /></td>
	  </tr>
      <tr>
        <td height="203" colspan="2"  valign="top" cellspacing="0" >
		<table width="100%" height="100%" cellspacing="5" > 
          <tr>
            <td width="291" height="100%" valign="top" style="border:1px solid #CCCCCC;">
			<table width="100%" height="100%" >
			<tr><th colspan="2" style="background-image:url(images/glossygrey.jpg);" ><h2 style="color:#000;">Products Overview </h2></th></tr>
              <tr>
                <td width="142" valign="top" ><a href="products.do?method=products"><img src="images/index_34.jpg" alt="" width="119" height="117" hspace="5" border="0"/></a></td>
                <td width="135">
                  <p>Labineer is dealing with the wide range of medical Equipments and providing larger no of Hospital equipments and Other Hospital Needs.. </p>
                  <table width="100%" border="0" cellspacing="0" cellpadding="5" >
                    <tr>
                      <td align="right"><table border="0" cellspacing="0" cellpadding="3" >
                          <tr>
                            <td><img src="images/index_41.gif" width="6" height="10" alt="" /></td>
                            <td><a href="products.do?method=products" style="color:#990000"><b>read more</b></a></td>
                          </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
            </table></td>
            <td width="297" height="100%" style="border:1px solid #CCCCCC;"><table width="100%" height="100%" >
              <tr>
                <th colspan="2" style="background-image:url(images/glossygrey.jpg);" ><h2 style="color:#000;">Services Overview </h2></th>
              </tr>
              <tr>
                <td width="142" valign="top" ><a href="Equipments.jsp"><img src="images/servicesicon.PNG" width="141" height="133" alt="" border="0"/></a></td>
                <td width="135"><p>Labineer is dealing with the wide range of medical Equipments and providing larger no of Hospital equipments and Other Hospital Needs.. </p>
                    <table width="100%" border="0" cellspacing="0" cellpadding="5" >
                      <tr>
                        <td align="right"><table border="0" cellspacing="0" cellpadding="3" >
                            <tr>
                              <td><img src="images/index_41.gif" width="6" height="10" alt="" /></td>
                              <td><a href="Equipments.jsp" style="color:#990000"><b>read more</b></a></td>
                            </tr>
                        </table></td>
                      </tr>
                  </table></td>
              </tr>
            </table></td>
            <td width="286" height="100%" style="border:1px solid #CCCCCC;"><table width="100%" height="100%" >
  <tr><th colspan="2" style="background-image:url(images/glossygrey.jpg);" ><h2 style="color:#000;">About Labineer </h2></th></tr>
  <tr>
  <td width="142" valign="top" ><img src="images/policies.PNG" width="141" height="133"/></td>
                <td width="135">
                  <p>Labineer is dealing with the wide range of medical Equipments and providing larger no of Hospital equipments and Other Hospital Needs.. </p>
                  <table width="100%" border="0" cellspacing="0" cellpadding="5" >
                    <tr>
                      <td align="right"><table border="0" cellspacing="0" cellpadding="3" >
                          <tr>
                            <td><img src="images/index_41.gif" width="6" height="10" alt="" /></td>
                            <td><a href="#" style="color:#990000"><b>read more</b></a></td>
                          </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
       <td colspan="3" background="images/wrapper_background.jpg" height="35px;" align="center">
    <span class="footercontent">Copyright &copy; Labineer.com. All rights reserved. Designed by Nithyanandam</span> <br>
      <span class="style5"><a href="#">Terms of Use</a>   |   <a href="#">Privacy Policy</a></span>    </td>
      </tr>
</table>
 
</body>
</html>
