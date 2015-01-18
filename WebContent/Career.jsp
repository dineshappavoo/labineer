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
     
        <td height="17" colspan="2" valign="top" background="images/blackglossy.PNG">
		<%@include file="menu.html" %>
		</td>
  </tr>
	  <tr>
	  	<td height="135" width="100%" colspan="2" valign="top">
		<table width="98%" height="295" cellspacing="5">
		<tr><td width="158" height="289" valign="top" class="leftnav">
		<%@include file="leftnav.html" %>
		<p>&nbsp;</p></td><td width="780" valign="top"><table width="100%" border="0" >
		             <tr>
               <td width="45%" class="productstop"><img src="images/careersimage.png" /></td>
             </tr>
             <tr>
             	<td>&nbsp;</td>
             </tr>
             <tr>
             	
               <td valign="top" >
              <table width="100%" class="career" cellspacing="5" cellpadding="0">
  <tr>
    <td colspan="2"><p style="color:#8B2323;">Please fill up the Profile details form and submit.<br>
All fields with * are mandatory. 
</p></td>
  </tr>
  <tr><td class="headingcareer">Personal Details</td></tr>
  <tr>
    <td>
	 <table  width="100%">
	 	<tr><td>Email Id:</td><td><input type="emailid" name="emailid" size="50" class="formfield"/></td></tr>
		<tr><td>First Name:</td><td><input name="firstName"  maxlength="50" class="formfield" size="40" onFocus="logfrmtryfill()" / value=""></td></tr>
		<tr><td>Last Name:</td><td><input name="lastName"  maxlength="50" size="40" class="formfield" onFocus="logfrmtryfill()" / value=""></td></tr>
		<tr><td>Phone Number:</td><td> 
   <input size="4" value="91" name="isd"  maxlength="4"  size="40" onFocus="logfrmtryfill()" />
    -
    <input name="std"  maxlength="8"  size="4" onFocus="logfrmtryfill()" / value="">
    -
    <input maxlength="50" size="10" name="phone"   class="formfield" onFocus="logfrmtryfill()" / value="">
    &nbsp;<span class="txt_grey">&nbsp;<br>Country code, area code, phone number</span></td></tr>
		<tr><td>Mobile Number:</td><td><input name="mobile"  class="formfield" maxlength="60"  value="91-"  onfocus="logfrmtryfill()" /><span class="txt_orange">* <br /> </span>Please fill<span class="td_grey bold">either</span> Phone number or Mobile number.</span></td></tr>
		<tr><td>Location:</td><td><select  class="formfield" onChange="checkLocation(this); populate_stdcode(this);" name="currentloc"  style="width:165" onFocus="logfrmtryfill()">
    <option value="">- Select -</option>
    <option value='1'>Ahmedabad</option><option value='2'>Bangalore</option><option value='3'>Chennai</option><option value='4'>Delhi</option><option value='5'>Gurgaon</option><option value='6'>Hyderabad</option><option value='7'>Kolkata</option><option value='8'>Mumbai</option><option value='9'>Noida</option><option value='10'>Pune</option><option value='11'>Agartala</option><option value='12'>Agra</option><option value='13'>Ahmednagar</option><option value='14'>Aizawal</option><option value='15'>Ajmer</option><option value='474'>Alappuzha / Alleppey</option><option value='16'>Aligarh</option><option value='17'>Allahabad</option><option value='18'>Ambala</option><option value='19'>Amritsar</option><option value='20'>Anand</option><option value='21'>Ankleshwar</option><option value='22'>Asansol</option><option value='23'>Aurangabad</option><option value='24'>Bahgalpur</option><option value='25'>Bareilly</option><option value='26'>Baroda</option><option value='27'>Belgaum</option><option value='28'>Bellary</option><option value='29'>Bharuch</option><option value='30'>Bhatinda</option><option value='31'>Bhavnagar</option><option value='32'>Bhilaigarh</option><option value='33'>Bhopal</option><option value='34'>Bhubaneshwar</option><option value='35'>Bhuj</option><option value='36'>Bidar</option><option value='37'>Bilaspur</option><option value='38'>Bokaro</option><option value='40'>Chandigarh</option><option value='87'>Cochin / Kochi / Ernakulam</option><option value='41'>Coimbatore</option><option value='42'>Cuttack</option><option value='43'>Dalhousie</option><option value='44'>Daman</option><option value='45'>Dehradun</option><option value='46'>Dhanbad</option><option value='47'>Dharamsala</option><option value='48'>Dharwad</option><option value='49'>Dispur</option><option value='50'>Durgapur</option><option value='52'>Erode</option><option value='53'>Faizabad</option><option value='54'>Faridabad</option><option value='55'>Gandhinagar</option><option value='56'>Gangtok</option><option value='57'>Ghaziabad</option><option value='58'>Goa</option><option value='59'>Gorakhpur</option><option value='60'>Gulbarga</option><option value='61'>Guntur</option><option value='62'>Guwahati</option><option value='63'>Gwalior</option><option value='64'>Haldia</option><option value='65'>Hisar</option><option value='66'>Hosur</option><option value='67'>Hubli</option><option value='475'>Idukki</option><option value='68'>Imphal</option><option value='69'>Indore</option><option value='70'>Itanagar</option><option value='71'>Jabalpur</option><option value='72'>Jaipur</option><option value='73'>Jaisalmer</option><option value='74'>Jalandhar</option><option value='75'>Jalgaon</option><option value='76'>Jammu</option><option value='77'>Jamnagar</option><option value='78'>Jamshedpur</option><option value='79'>Jodhpur</option><option value='80'>Kakinada</option><option value='81'>Kandla</option><option value='82'>Kannur</option><option value='83'>Kanpur</option><option value='84'>Karnal</option><option value='476'>Kasargod</option><option value='85'>Kavaratti</option><option value='86'>Kharagpur</option><option value='88'>Kohima</option><option value='89'>Kolar</option><option value='90'>Kolhapur</option><option value='91'>Kollam</option><option value='92'>Kota</option><option value='93'>Kottayam</option><option value='39'>Kozhikode / Calicut</option><option value='94'>Kulu/Manali</option><option value='95'>Kurnool</option><option value='96'>Kurukshetra</option><option value='97'>Lucknow</option><option value='98'>Ludhiana</option><option value='99'>Madurai</option><option value='477'>Malappuram</option><option value='100'>Mangalore</option><option value='101'>Mathura</option><option value='102'>Meerut</option><option value='103'>Mohali</option><option value='104'>Moradabad</option><option value='105'>Mysore</option><option value='106'>Nagercoil</option><option value='107'>Nagpur</option><option value='108'>Nasik</option><option value='109'>Nellore</option><option value='110'>Nizamabad</option><option value='111'>Ooty</option><option value='112'>Pallakad</option><option value='113'>Panipat</option><option value='114'>Paradeep</option><option value='478'>Pathanamthitta</option><option value='115'>Pathankot</option><option value='116'>Patiala</option><option value='117'>Patna</option><option value='118'>Pondicherry</option><option value='119'>Porbandar</option><option value='120'>Port Blair</option><option value='121'>Puri</option><option value='122'>Quilon</option><option value='123'>Raipur</option><option value='124'>Rajamundry</option><option value='125'>Rajkot</option><option value='126'>Ranchi</option><option value='127'>Rohtak</option><option value='128'>Roorkee</option><option value='129'>Rourkela</option><option value='130'>Salem</option><option value='131'>Shillong</option><option value='132'>Shimla</option><option value='133'>Sholapur</option><option value='134'>Silchar</option><option value='135'>Siliguri</option><option value='136'>Silvassa</option><option value='480'>Sonipat / Sonepat</option><option value='137'>Srinagar</option><option value='138'>Surat</option><option value='139'>Thanjavur</option><option value='140'>Thrissur / Trissur</option><option value='143'>Thiruvananthapuram / Trivandrum</option><option value='141'>Tirunalveli</option><option value='142'>Tirupati</option><option value='144'>Trichy</option><option value='145'>Tuticorin</option><option value='146'>Udaipur</option><option value='147'>Ujjain</option><option value='148'>Vadodara</option><option value='149'>Valsad</option><option value='150'>Vapi</option><option value='151'>Varanasi</option><option value='152'>Vellore</option><option value='153'>Vijayawada</option><option value='154'>Visakhapatnam</option><option value='155'>Warangal</option><option value='479'>Wayanad</option><option value='481'>Yamunanagar</option><option value='198'>Other India</option><option value='156'>Australia</option><option value='158'>Bahrain</option><option value='157'>Bangladesh</option><option value='159'>Belgium</option><option value='160'>Canada</option><option value='161'>China</option><option value='250'>Egypt</option><option value='164'>France</option><option value='165'>Germany</option><option value='204'>Gulf</option><option value='166'>Hongkong</option><option value='167'>Indonesia</option><option value='168'>Ireland</option><option value='169'>Japan</option><option value='238'>Jordan</option><option value='170'>Kuwait</option><option value='237'>Lebanon</option><option value='252'>Macau</option><option value='171'>Malaysia</option><option value='172'>Maldives</option><option value='173'>Mauritius</option><option value='174'>Mexico</option><option value='175'>Nepal</option><option value='176'>Netherlands</option><option value='177'>New Zealand</option><option value='178'>Oman</option><option value='179'>Pakistan</option><option value='249'>Philippines</option><option value='180'>Qatar</option><option value='181'>Russia</option><option value='182'>Saudi Arabia</option><option value='183'>Singapore</option><option value='184'>South Africa</option><option value='185'>South Korea</option><option value='186'>Spain</option><option value='187'>SriLanka</option><option value='188'>Sweden</option><option value='189'>Switzerland</option><option value='253'>Taiwan</option><option value='190'>Thailand</option><option value='191'>UK</option><option value='192'>United Arab Emirates</option><option value='193'>US</option><option value='254'>Vietnam</option><option value='194'>Yemen</option><option value='195'>Zimbabwe</option><option value='197'>Other International</option> </select>
	
	<br />
      <span class="txt_grey">If you cannot find your city above, <br>please type it in the box below. </span><br />
 
      <input name="other_currentloc"  id="other_currentloc" class="formfield" onFocus="logfrmtryfill();"/ value=""></td></tr>
		<tr><td>Nationaility:</td><td><select name="nationality"  class="formfield">
	<option value="">- Select -</option>
	<option value='AF'>Afghanistan</option><option value='AL'>Albania</option><option value='DZ'>Algeria</option><option value='AS'>American Samoa</option><option value='AD'>Andorra</option><option value='AO'>Angola</option><option value='AI'>Anguilla</option><option value='AQ'>Antarctica</option><option value='AG'>Antigua and Barbuda</option><option value='AR'>Argentina</option><option value='AM'>Armenia</option><option value='AW'>Aruba</option><option value='AU'>Australia</option><option value='AT'>Austria</option><option value='AZ'>Azerbaijan</option><option value='BS'>Bahamas</option><option value='BH'>Bahrain</option><option value='BD'>Bangladesh</option><option value='BB'>Barbados</option><option value='BY'>Belarus</option><option value='BE'>Belgium</option><option value='BZ'>Belize</option><option value='BJ'>Benin</option><option value='BM'>Bermuda</option><option value='BT'>Bhutan</option><option value='BO'>Bolivia</option><option value='BA'>Bosnia and Herzegovina</option><option value='BW'>Botswana</option><option value='BV'>Bouvet Island</option><option value='BR'>Brazil</option><option value='IO'>British Indian Ocean Territory</option><option value='BN'>Brunei Darussalam</option><option value='BG'>Bulgaria</option><option value='BF'>Burkina Faso</option><option value='BI'>Burundi</option><option value='KH'>Cambodia</option><option value='CM'>Cameroon</option><option value='CA'>Canada</option><option value='CV'>Cape Verde</option><option value='KY'>Cayman Islands</option><option value='CF'>Central African Republic</option><option value='TD'>Chad</option><option value='CL'>Chile</option><option value='CN'>China</option><option value='CX'>Christmas Island</option><option value='CC'>Cocos (Keeling) Islands</option><option value='CO'>Colombia</option><option value='KM'>Comoros</option><option value='CG'>Congo</option><option value='CD'>Congo, the Democratic Republic of the</option><option value='CK'>Cook Islands</option><option value='CR'>Costa Rica</option><option value='CI'>Cote D'Ivoire</option><option value='HR'>Croatia</option><option value='CU'>Cuba</option><option value='CY'>Cyprus</option><option value='CZ'>Czech Republic</option><option value='DK'>Denmark</option><option value='DJ'>Djibouti</option><option value='DM'>Dominica</option><option value='DO'>Dominican Republic</option><option value='EC'>Ecuador</option><option value='EG'>Egypt</option><option value='SV'>El Salvador</option><option value='GQ'>Equatorial Guinea</option><option value='ER'>Eritrea</option><option value='EE'>Estonia</option><option value='ET'>Ethiopia</option><option value='FK'>Falkland Islands (Malvinas)</option><option value='FO'>Faroe Islands</option><option value='FJ'>Fiji</option><option value='FI'>Finland</option><option value='FR'>France</option><option value='GF'>French Guiana</option><option value='PF'>French Polynesia</option><option value='TF'>French Southern Territories</option><option value='GA'>Gabon</option><option value='GM'>Gambia</option><option value='GE'>Georgia</option><option value='DE'>Germany</option><option value='GH'>Ghana</option><option value='GI'>Gibraltar</option><option value='GR'>Greece</option><option value='GL'>Greenland</option><option value='GD'>Grenada</option><option value='GP'>Guadeloupe</option><option value='GU'>Guam</option><option value='GT'>Guatemala</option><option value='GN'>Guinea</option><option value='GW'>Guinea-Bissau</option><option value='GY'>Guyana</option><option value='HT'>Haiti</option><option value='HM'>Heard Island and Mcdonald Islands</option><option value='VA'>Holy See (Vatican City State)</option><option value='HN'>Honduras</option><option value='HK'>Hong Kong</option><option value='HU'>Hungary</option><option value='IS'>Iceland</option><option value='IN'>India</option><option value='ID'>Indonesia</option><option value='IR'>Iran, Islamic Republic of</option><option value='IQ'>Iraq</option><option value='IE'>Ireland</option><option value='IL'>Israel</option><option value='IT'>Italy</option><option value='JM'>Jamaica</option><option value='JP'>Japan</option><option value='JO'>Jordan</option><option value='KZ'>Kazakhstan</option><option value='KE'>Kenya</option><option value='KI'>Kiribati</option><option value='KP'>Korea, Democratic People's Republic of</option><option value='KR'>Korea, Republic of</option><option value='KW'>Kuwait</option><option value='KG'>Kyrgyzstan</option><option value='LA'>Lao People's Democratic Republic</option><option value='LV'>Latvia</option><option value='LB'>Lebanon</option><option value='LS'>Lesotho</option><option value='LR'>Liberia</option><option value='LY'>Libyan Arab Jamahiriya</option><option value='LI'>Liechtenstein</option><option value='LT'>Lithuania</option><option value='LU'>Luxembourg</option><option value='MO'>Macao</option><option value='MK'>Macedonia, the Former Yugoslav Republic of</option><option value='MG'>Madagascar</option><option value='MW'>Malawi</option><option value='MY'>Malaysia</option><option value='MV'>Maldives</option><option value='ML'>Mali</option><option value='MT'>Malta</option><option value='MH'>Marshall Islands</option><option value='MQ'>Martinique</option><option value='MR'>Mauritania</option><option value='MU'>Mauritius</option><option value='YT'>Mayotte</option><option value='MX'>Mexico</option><option value='FM'>Micronesia, Federated States of</option><option value='MD'>Moldova, Republic of</option><option value='MC'>Monaco</option><option value='MN'>Mongolia</option><option value='MS'>Montserrat</option><option value='MA'>Morocco</option><option value='MZ'>Mozambique</option><option value='MM'>Myanmar</option><option value='NA'>Namibia</option><option value='NR'>Nauru</option><option value='NP'>Nepal</option><option value='NL'>Netherlands</option><option value='AN'>Netherlands Antilles</option><option value='NC'>New Caledonia</option><option value='NZ'>New Zealand</option><option value='NI'>Nicaragua</option><option value='NE'>Niger</option><option value='NG'>Nigeria</option><option value='NU'>Niue</option><option value='NF'>Norfolk Island</option><option value='MP'>Northern Mariana Islands</option><option value='NO'>Norway</option><option value='OM'>Oman</option><option value='PK'>Pakistan</option><option value='PW'>Palau</option><option value='PS'>Palestinian Territory, Occupied</option><option value='PA'>Panama</option><option value='PG'>Papua New Guinea</option><option value='PY'>Paraguay</option><option value='PE'>Peru</option><option value='PH'>Philippines</option><option value='PN'>Pitcairn</option><option value='PL'>Poland</option><option value='PT'>Portugal</option><option value='PR'>Puerto Rico</option><option value='QA'>Qatar</option><option value='RE'>Reunion</option><option value='RO'>Romania</option><option value='RU'>Russian Federation</option><option value='RW'>Rwanda</option><option value='SH'>Saint Helena</option><option value='KN'>Saint Kitts and Nevis</option><option value='LC'>Saint Lucia</option><option value='PM'>Saint Pierre and Miquelon</option><option value='VC'>Saint Vincent and the Grenadines</option><option value='WS'>Samoa</option><option value='SM'>San Marino</option><option value='ST'>Sao Tome and Principe</option><option value='SA'>Saudi Arabia</option><option value='SN'>Senegal</option><option value='CS'>Serbia and Montenegro</option><option value='SC'>Seychelles</option><option value='SL'>Sierra Leone</option><option value='SG'>Singapore</option><option value='SK'>Slovakia</option><option value='SI'>Slovenia</option><option value='SB'>Solomon Islands</option><option value='SO'>Somalia</option><option value='ZA'>South Africa</option><option value='GS'>South Georgia and the South Sandwich Islands</option><option value='ES'>Spain</option><option value='LK'>Sri Lanka</option><option value='SD'>Sudan</option><option value='SR'>Suriname</option><option value='SJ'>Svalbard and Jan Mayen</option><option value='SZ'>Swaziland</option><option value='SE'>Sweden</option><option value='CH'>Switzerland</option><option value='SY'>Syrian Arab Republic</option><option value='TW'>Taiwan</option><option value='TJ'>Tajikistan</option><option value='TZ'>Tanzania, United Republic of</option><option value='TH'>Thailand</option><option value='TL'>Timor-Leste</option><option value='TG'>Togo</option><option value='TK'>Tokelau</option><option value='TO'>Tonga</option><option value='TT'>Trinidad and Tobago</option><option value='TN'>Tunisia</option><option value='TR'>Turkey</option><option value='TM'>Turkmenistan</option><option value='TC'>Turks and Caicos Islands</option><option value='TV'>Tuvalu</option><option value='UG'>Uganda</option><option value='UA'>Ukraine</option><option value='AE'>United Arab Emirates</option><option value='GB'>United Kingdom</option><option value='US'>United States</option><option value='UM'>United States Minor Outlying Islands</option><option value='UY'>Uruguay</option><option value='UZ'>Uzbekistan</option><option value='VU'>Vanuatu</option><option value='VE'>Venezuela</option><option value='VN'>Viet Nam</option><option value='VG'>Virgin Islands, British</option><option value='VI'>Virgin Islands, U.s.</option><option value='WF'>Wallis and Futuna</option><option value='EH'>Western Sahara</option><option value='YE'>Yemen</option><option value='ZM'>Zambia</option><option value='ZW'>Zimbabwe</option>	</select></td></tr>
		<tr><td>Gender:</td><td> <input name="gender" type="radio" value="m" >Male&nbsp;&nbsp;&nbsp;
    <input name="gender" type="radio" value="f" >Female</td></tr>
		<tr><td colspan="2" class="headingcareer">Professional Details</td></tr>
		<tr><td style="font-family:calibri;">Total Experience:</td><td style="font-family:calibri;"><select name="exp_in_years"   onFocus="logfrmtryfill()">
<option value="">- Select -</option>
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
<option value="32">32</option>
<option value="33">33</option>
<option value="34">34</option>
<option value="35">35</option>
<option value="36">36</option>
<option value="37">37</option>
<option value="38">38</option>
<option value="39">39</option>
<option value="40">40</option>
<option value="41">41</option>
<option value="42">42</option>
<option value="43">43</option>
<option value="44">44</option>
<option value="45">45</option>
<option value="46">46</option>
<option value="47">47</option>
<option value="48">48</option>
<option value="49">49</option>
<option value="50">50</option>
</select>&nbsp;&nbsp;Years&nbsp;&nbsp;<select name="exp_in_months"  class="formfield" onFocus="logfrmtryfill()">
<option value="">- Select -</option>
<option value="00">0</option>
<option value="01">1</option>
<option value="02">2</option>
<option value="03">3</option>
<option value="04">4</option>
<option value="05">5</option>
<option value="06">6</option>
<option value="07">7</option>
<option value="08">8</option>
<option value="09">9</option>
<option value="10">10</option>
<option value="11">11</option>
</select>&nbsp;&nbsp;Months</td></tr>
		<tr><td style="font-family:calibri;">Job Category:</td><td style="font-family:calibri;"><select name="jobCategory"  id='id_jobCategory' size="4" multiple  onFocus="logfrmtryfill()">
	<option value="">- Select -</option>
	<option value='20'>Sales</option><option value='14'>Marketing & Communications</option><option value='1'>Advertising, DM, PR, MR and Event Management</option><option value='11'>Human Resource, Admin & Recruitment</option><option value='18'>Purchase/ Supply Chain</option><option value='7'>Finance & Accounts</option><option value='17'>Production/ Engg/ R&D</option><option value='16'>Pharmaceutical/ Biotechnology</option><option value='9'>Health Care</option><option value='4'>Distribution & Delivery/ Courier</option><option value='6'>Export/ Import</option><option value='15'>Others</option> </select><br/>Press <span class="td_grey bold">Ctrl key</span> to select multiple categories.<br>
        (You can select maximum 2 categories)</font></td></tr>
		<tr><td>Key Skills</td><td><input name="keySkills"  maxlength="100" class="formfield" size="40" onFocus="logfrmtryfill()" / value=""></td></tr>
		<tr><td colspan="2" class="headingcareer">Educational Qualification</td></tr>
		<tr><td>Highest Qualification Held:</td><td><select name="highest_degree"  size="1" class="formfield" onChange="populateStream(this,'NO',document.CREATEACCTFORM.highest_degree,document.CREATEACCTFORM.highest_specialization,0)" onFocus="logfrmtryfill()">
<option value="">- Select -</option>
<option value='1'>Aviation</option><option value='2'>B.A</option><option value='3'>B.Arch</option><option value='4'>B.B.A</option><option value='5'>BCA</option><option value='6'>B.Com</option><option value='7'>BDS</option><option value='8'>B.E/B.Tech</option><option value='9'>B.Ed</option><option value='10'>BHM</option><option value='11'>BL/LLB</option><option value='12'>B.Pharm</option><option value='13'>B.Sc</option><option value='14'>CA</option><option value='15'>Class 12</option><option value='16'>CS</option><option value='17'>Diploma</option><option value='18'>ICWA</option><option value='19'>M.A</option><option value='20'>M.Arch</option><option value='21'>MBA</option><option value='22'>MBBS</option><option value='23'>MCA</option><option value='24'>M.Com</option><option value='25'>MD/MS</option><option value='26'>M.Ed</option><option value='27'>M.E/M.Tech/MS</option><option value='28'>ML/LLM</option><option value='29'>M.Pharm</option><option value='30'>Mphil</option><option value='31'>M.Sc</option><option value='32'>PGDCA</option><option value='33'>PG Diploma</option><option value='34'>PGDM</option><option value='35'>Phd</option><option value='36'>Other</option>
</select></td></tr>
<tr><td>Year of Passing:</td><td><select name="passYear" class="formfield">
                                <option value="0">Select Year</option><option value='1940'>1940</option><option value='1941'>1941</option><option value='1942'>1942</option><option value='1943'>1943</option><option value='1944'>1944</option><option value='1945'>1945</option><option value='1946'>1946</option><option value='1947'>1947</option><option value='1948'>1948</option><option value='1949'>1949</option><option value='1950'>1950</option><option value='1951'>1951</option><option value='1952'>1952</option><option value='1953'>1953</option><option value='1954'>1954</option><option value='1955'>1955</option><option value='1956'>1956</option><option value='1957'>1957</option><option value='1958'>1958</option><option value='1959'>1959</option><option value='1960'>1960</option><option value='1961'>1961</option><option value='1962'>1962</option><option value='1963'>1963</option><option value='1964'>1964</option><option value='1965'>1965</option><option value='1966'>1966</option><option value='1967'>1967</option><option value='1968'>1968</option><option value='1969'>1969</option><option value='1970'>1970</option><option value='1971'>1971</option><option value='1972'>1972</option><option value='1973'>1973</option><option value='1974'>1974</option><option value='1975'>1975</option><option value='1976'>1976</option><option value='1977'>1977</option><option value='1978'>1978</option><option value='1979'>1979</option><option value='1980'>1980</option><option value='1981'>1981</option><option value='1982'>1982</option><option value='1983'>1983</option><option value='1984'>1984</option><option value='1985'>1985</option><option value='1986'>1986</option><option value='1987'>1987</option><option value='1988'>1988</option><option value='1989'>1989</option><option value='1990'>1990</option><option value='1991'>1991</option><option value='1992'>1992</option><option value='1993'>1993</option><option value='1994'>1994</option><option value='1995'>1995</option><option value='1996'>1996</option><option value='1997'>1997</option><option value='1998'>1998</option><option value='1999'>1999</option><option value='2000'>2000</option><option value='2001'>2001</option><option value='2002'>2002</option><option value='2003'>2003</option><option value='2004'>2004</option><option value='2005'>2005</option><option value='2006'>2006</option><option value='2007'>2007</option><option value='2008'>2008</option><option value='2009'>2009</option><option value='2010'>2010</option></select> </td>
</tr>
<tr>
<td height="30" align="left" style="padding-right: 15px;"><span class="txt_orange">* </span>Institute:  </td>
<td>
<span class="txt1">
<select  size=1  name='highest_institute'  onfocus="logfrmtryfill()"   class="formfield"onChange="checkInstitute(this);">  
<option value=''>- Select -</option>
<option value='1:3'>Agra University</option><option value='2:2'>AIMA</option><option value='3:3'>Aligarh Muslim University</option><option value='4:3'>Allahabad University</option><option value='5:3'>Amaravati University</option><option value='6:3'>Amity Business School</option><option value='7:3'>Andhra University</option><option value='8:3'>Anna University</option><option value='9:3'>Annamalai University</option><option value='10:3'>Apeejay School of Marketing</option><option value='11:3'>APTECH</option><option value='12:3'>Banaras Hindu University</option><option value='13:2'>Bangalore University</option><option value='14:3'>Barkatullah University</option><option value='15:3'>Berhampur University</option><option value='16:3'>Bharathiar University</option><option value='17:2'>Bharathidasan University</option><option value='18:1'>BITS (Mesra)</option><option value='19:1'>BITS (Pilani)</option><option value='20:2'>Board of Technical Education</option><option value='21:3'>Calcutta University</option><option value='22:3'>Calicut University</option><option value='23:3'>CDAC</option><option value='24:2'>Chennai University</option><option value='25:3'>DAVV, Indore</option><option value='26:1'>Delhi College of Engineering</option><option value='27:2'>Delhi University</option><option value='28:3'>Devi Ahilya University</option><option value='29:3'>DOEACC</option><option value='30:1'>FMS,Delhi</option><option value='31:3'>Fore School of Management</option><option value='32:3'>Goa Institute of Management</option><option value='33:3'>Goa University</option><option value='34:3'>Gujarat University</option><option value='35:3'>Gulbarga University</option><option value='36:3'>Hyderabad University</option><option value='37:2'>ICFAI</option><option value='38:1'>ICSI</option><option value='39:2'>ICWA</option><option value='40:3'>IGNOU</option><option value='41:1'>IIM, Ahmedabad</option><option value='42:1'>IIM, Bangalore</option><option value='43:1'>IIM, Calcutta</option><option value='44:2'>IIM, Indore</option><option value='45:2'>IIM, Kozhikode</option><option value='46:1'>IIM, Lucknow</option><option value='47:2'>IIPM</option><option value='48:3'>IISWBM, Calcutta</option><option value='49:1'>IIT,Chennai</option><option value='50:1'>IIT,Delhi</option><option value='51:2'>IIT,Guwahati</option><option value='52:1'>IIT,Kanpur</option><option value='53:1'>IIT,Kharagpur</option><option value='54:1'>IIT,Mumbai</option><option value='55:1'>IIT,Roorkee</option><option value='56:3'>IMI, Delhi</option><option value='57:3'>IMT,Ghaziabad</option><option value='58:1'>Indian Institute of Foreign Trade</option><option value='59:1'>Indian Institute of Science</option><option value='60:1'>Indian Statistical Institute</option><option value='61:2'>Institute of Chartered Accountants of India</option><option value='62:2'>IRM, Anand</option><option value='63:1'>IT,BHU</option><option value='64:3'>Jadavpur University</option><option value='65:3'>Jamia Millia Islamia</option><option value='66:2'>Jawaharlal Nehru University</option><option value='67:3'>Jiwaji University</option><option value='68:2'>JNTU,Hyderabad</option><option value='69:3'>kakatiya university</option><option value='70:3'>kanpur university</option><option value='71:3'>Karanataka University</option><option value='72:2'>Kerala University</option><option value='73:2'>Kurukshetra University</option><option value='74:3'>Kuvempu University</option><option value='75:3'>Lucknow University</option><option value='76:2'>Madurai Kamaraj University</option><option value='77:3'>Mahatma Gandhi University</option><option value='78:3'>Mangalore University</option><option value='79:2'>MDI,Gurgaon</option><option value='80:3'>Meerut University</option><option value='81:2'>Mumbai University</option><option value='82:3'>Nagarjuna University</option><option value='83:3'>Nagpur University</option><option value='84:1'>NIFT</option><option value='85:3'>NIIT</option><option value='86:1'>NMIMS,Mumbai</option><option value='87:3'>North Maharashtra University</option><option value='88:3'>OSMANIA UNIVERSITY</option><option value='89:3'>Panjab University</option><option value='90:3'>Pondicherry University</option><option value='91:3'>Pune University</option><option value='92:3'>Punjab Technical University</option><option value='93:3'>Rajasthan University</option><option value='94:3'>Ranchi University</option><option value='95:2'>RECs</option><option value='96:3'>Sambalpur University</option><option value='97:3'>Saurashtra University</option><option value='98:3'>Shivaji University</option><option value='99:3'>South Gujarat University,Surat</option><option value='100:1'>SP Jain Institute of Management Studies</option><option value='101:3'>Sri Venkateshwara University</option><option value='102:3'>Symbiosis,Pune</option><option value='103:3'>TA Pai Management Institute</option><option value='104:2'>Tata Institute of Social Sciences</option><option value='105:3'>University of Mysore</option><option value='106:3'>Utkal University</option><option value='107:3'>Visveshwaraiah University</option><option value='108:1'>XIM, Bhubaneswar</option><option value='109:3'>XISS,  Ranchi</option><option value='110:1'>XLRI, Jamshedpur</option><option value='111:3'>YMCA</option><option value='112:0'>Other</option>
</select></td></tr>
<tr><td>&nbsp;</td><td>If you cannot find your institute listed above, please type it in the box below <br><input name="other_highest_institute"  maxlength="60" onFocus="logfrmtryfill()" / value=""></td></tr>
<tr><td align="center" colspan="2"><input type="submit" name="submit" value="submit"/>&nbsp;&nbsp;<input type="reset" value="reset"/></td></tr>
	 </table>
	</td>
     
  </tr>
  <tr>
    <td>&nbsp;</td>   
  </tr>
  <tr>
    <td>&nbsp;</td>
   
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
</table> 
</body>
</html:html>
