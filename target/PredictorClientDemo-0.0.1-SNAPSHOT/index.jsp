<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  <title>Predictor</title>
  <script type="text/javascript">
  function callWebService(){
	  alert("Hi");
	  var age= document.getElementById('age').value;
	 // alert("Age :"+age);
	  var foodpref= document.getElementById('foodpref').value;
	  //alert("foodpref :"+foodpref);
	  var country= document.getElementById('country').value;
	  //alert("country :"+country);
	  var married= document.getElementById('married').value;
	  //alert("married :"+married);
	  var height= document.getElementById('height').value;
	  //alert("height :"+height);
	  var weight= document.getElementById('weight').value;
	  //alert("weight :"+weight);
	  var allergies= document.getElementById('allergies').value;
	  //alert("allergies :"+allergies);
	  var smoking= document.getElementById('smoking').value;
	  //alert("smoking :"+smoking);
	  var drinking= document.getElementById('drinking').value;
	  //alert("drinking :"+drinking);
	  var diabetic= document.getElementById('diabetic').value;
	  //alert("diabetic :"+diabetic);
	  var bp= document.getElementById('bp').value;
	  //alert("bp :"+bp);
	  var hd= document.getElementById('hd').value;
	  //alert("hd :"+hd);
	  
	  
	  let req = require("request");

	  const uri = "https://studio.azureml.net/apihelp/workspaces/243426397da54efe9c2fb07178c3275a/webservices/4899e43153124f06bb9c1d1f8b62f955/endpoints/0bfe46a6048a4309bdcec2494731f639/score";
	  const apiKey = "SW1taECHwBAVJ4WrL6H04FPTfhDOZ48y/Yyes1p4/mJv59MJEZ2pTNA7jpINeR7cVS+53gbKJiHrbbwgGEbiKA==";

	  let data = {
	      "Inputs": {
	          "input1":
	          [
	              {
	                  'column1': "value1",
	                  'column2': "value2",
	                  'column3': "value3"
	              }
	          ],
	      },
	      "GlobalParameters": {}
	  }

	  const options = {
	      uri: uri,
	      method: "POST",
	      headers: {
	          "Content-Type": "application/json",
	          "Authorization": "Bearer " + apiKey,
	      },
	      body: JSON.stringify(data)
	  }

	  req(options, (err, res, body) => {
	      if (!err && res.statusCode == 200) {
	          console.log(body);
	      } else {
	          console.log("The request failed with status code: " + res.statusCode);
	      }
	  });
	  
  }
  </script>
  </head>
  <body>
    <br/><br/>
    <form method="post" name="frm" action="Search">
      <table border="0" width="300" align="center" bgcolor="white">
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        <h3>Predict Diesease----JP Here</h3></td></tr>
        <tr>
        <td ><b>Age</b></td>
        <td>: <input  type="text" name="age" id="age">
        </td>
        <td ><b>Veg/Non Veg</b></td>
        <td>: <input  type="text" name="foodpref" id="foodpref">
        </td>
        <td ><b>Country</b></td>
        <td>: <input  type="text" name="country" id="country">
        </td>
        <td ><b>Marital Status</b></td>
        <td>: <input  type="text" name="married" id="married">
        </td>
        <td ><b>Height</b></td>
        <td>: <input  type="text" name="height" id="height">
        </td>
        <td ><b>Weight</b></td>
        <td>: <input  type="text" name="weight" id="weight">
        </td>
        </tr> 
        <tr>
        <td ><b>Allergies if Any</b></td>
        <td>: <input  type="text" name="allergies" id="allergies">
        </td>
        <td ><b>Smoking</b></td>
        <td>: <input  type="text" name="smoking" id="smoking">
        </td>
        <td ><b>Drinking</b></td>
        <td>: <input  type="text" name="drinking" id="drinking">
        </td>
        <td ><b>Is Diabetic</b></td>
        <td>: <input  type="text" name="diabetic" id="diabetic">
        </td>
        <td ><b>BP</b></td>
        <td>: <input  type="text" name="bp" id="bp">
        </td>
        <td ><b>Heart Diesease</b></td>
        <td>: <input  type="text" name="hd" id="hd">
        </td>
        </tr>       
        <tr><td align="center">
        <input  type="submit" name="submit" value="Predict" onclick="callWebService();"></td></tr>
        <tr>
        * Allowed Values
        Veg/Non Veg: Veg, Non Veg
        Marital Status: Married, UnMarried
        Smoking: Yes,No
        Driniking: Yes,No
        Is Diabetic: Yes, No
        BP: Yes, No
        Heart Diesease: Yes, No
        </tr>
      </table>
    </form>
  </body>
</html>