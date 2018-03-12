<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  <title>Predictor</title>
  
  </head>
  <body>
    <br/><br/>
    <form method="post" name="frm" action="Search">
      <table border="0" width="300" align="center" bgcolor="white">
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        <h3>Predict Cancer</h3></td></tr>
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
        <input  type="submit" name="submit" value="Predict"></td></tr>
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