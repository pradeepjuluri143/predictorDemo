<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
 
<html>
  <head>
  <title>Predictor</title>
  <script>
function enableSection() {
    var x = document.getElementById("app").value;
    document.getElementById("app1").style.display="none";
    document.getElementById("app2").style.display="none";
    document.getElementById("app"+x).style.display="block";
}
</script>
  </head>
  <body>
    <br/><br/>
    <form method="post" name="frm" action="Search">
      <table border="0" width="300" align="center" bgcolor="white">
        <tr>
        <td colspan="2" align="center">
        <h3>Predict Your Need</h3>
        </td>
        </tr>
        <tr>
        <td ><b>Predict Your Need:</b></td>
        <td><select name="app" id="app" onchange="enableSection();">
        <option value="0"></option>
        <option value="1">Predict Cancer For Health Conditions</option>
   <option value="2">Predict Claim Amount For Diagnosis Code</option>
        </select></td>
        </tr>
        <tr>
        <td colspan="2" width="100%">
       &nbsp;
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <table id="app1" style="display:none">
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
      </table>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <table id="app2" style="display:none">
      <tr>
      <td >Person Age</td>
      <td><input  type="text" name="age" id="age"></td>
      <td >Gender</td>
      <td><input  type="text" name="gender" id="gender"></td>
      <td >State</td>
      <td><input  type="text" name="state" id="state"></td>
      <td >Country</td>
      <td><input  type="text" name="country" id="country"></td>
      </tr>
      <tr>
      <td>Diagnosis Code 1:</td>
      <td><select name="diagCode1" id="diagCode1">
   <option value="403.90">403.90</option>
   <option value="585.3">585.3</option>
   <option value="348.1">348.1</option>
   <option value="285.21">285.21</option>
   <option value="V58.81">V58.81</option>
   <option value="S64.02XA">S64.02XA</option>
</select> </td>
<td>Diagnosis Code 2:</td>
      <td><select name="diagCode2" id="diagCode1">
   <option value="403.90">403.90</option>
   <option value="585.3">585.3</option>
   <option value="348.1">348.1</option>
   <option value="285.21">285.21</option>
   <option value="V58.81">V58.81</option>
   <option value="S64.02XA">S64.02XA</option>
</select> </td>
<td>Diagnosis Code 3:</td>
      <td><select name="diagCode3" id="diagCode1">
   <option value="403.90">403.90</option>
   <option value="585.3">585.3</option>
   <option value="348.1">348.1</option>
   <option value="285.21">285.21</option>
   <option value="V58.81">V58.81</option>
   <option value="S64.02XA">S64.02XA</option>
</select> </td>
<td>Diagnosis Code 4:</td>
      <td><select name="diagCode3" id="diagCode1">
   <option value="403.90">403.90</option>
   <option value="585.3">585.3</option>
   <option value="348.1">348.1</option>
   <option value="285.21">285.21</option>
   <option value="V58.81">V58.81</option>
   <option value="S64.02XA">S64.02XA</option>
</select> </td>
      </tr>
      </table>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <input  type="submit" name="submit" value="Predict">
        </td>
        </tr>
        </table>

		
      
      
    </form>
  </body>
</html>