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
        <td ><b>Age:</b></td>
        <td><input  type="text" name="age" id="age">
        </td>
        <td ><b>Gender:</b></td>
        <td><input  type="text" name="gender" id="gender">
        </td>
        <td ><b>Marital Status:</b></td>
        <td><select name="maritalStatus" id="maritalStatus">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Country:</b></td>
        <td><input  type="text" name="country" id="country">
        </td>
        </tr>
        <tr>
        <td ><b>Smoking:</b></td>
        <td><select name="smoking" id="smoking">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Drinking:</b></td>
        <td><select name="drinking" id="drinking">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Diabetic:</b></td>
        <td><select name="diabetic" id="diabetic">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        </tr> 
        <tr>
        <td ><b>Blood In Stools:</b></td>
        <td><select name="bis" id="bis">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Blood In Urine:</b></td>
        <td><select name="biu" id="biu">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Change In Urination:</b></td>
        <td><select name="ciu" id="ciu">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        </tr>
        <tr>
        <td ><b>Low Blood Count:</b></td>
        <td><select name="lbc" id="lbc">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Difficulty In Swalloing:</b></td>
        <td><select name="dis" id="dis">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        <td ><b>Frequent HeadAches:</b></td>
        <td><select name="freqHeadAches" id="freqHeadAches">
   <option value="Yes">Yes</option>
   <option value="No">No</option>
</select> 
        </td>
        </tr>       
        <tr><td align="center">
        <input  type="submit" name="submit" value="Predict"></td></tr>
      </table>
    </form>
  </body>
</html>