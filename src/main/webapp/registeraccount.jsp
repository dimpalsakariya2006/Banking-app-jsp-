<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>
</head>
<body>
<h3>|| Account opening form ||</h3>
<form action = "registerservlet.jsp" method = "post" class= "openAccount"><br><br><br>
<b>
Account Holder name :</b><input type = "text" name = "name" id="name" required><br><br>
<b>Type of Account  : </b><input type = "radio" name = "type" id="radio" value = "Saving" required>  Chequing account
                  <input type = "radio" name = "type" value = "Current" id="radio" required>  Saving Account<br><br>
<b>Register PIN :</b> <input type = "number" name= "PIN" id="pin" required>
<label for="bdate" style="margin-left:20px"><b>Birthdate : </b> </label>
<input type = "date" name = "bdate" id="date" required><br><br>
<b>Driving Licence No. : </b><input type = "text" name= "dlnum" id="dlnum" required><br><br>
<b></>Select Security Question1 :  </b><select name = "que1" id="que1" value = "que1" required>
                         <option>select</option>
                         <option value = "Your Grandfather Name">Your Grandfather Name</option>
                         <option value = "Your Mother's Maiden name">Your Mother's Maiden name</option>
                         <option value = "Your Birth city">Your Birth city</option>
                         <option value = "Your Favorite Colour">Your Favorite Colour</option>
                         <option value = "Your Husband's Favorite Place">Your Husband's Favorite Place</option>
                         <option value = "Your Favorite dish">Your Favorite dish</option>
                         <option value = "Your father's birthplace">Your father's birthplace</option>
                         </select>
<label for="ans1" style="margin-left:20px"><b>Answer : </b></label>
<input type = "text" name = "ans1" id="ans1" required><br><br>
<b></>Select Security Question2 :  </b><select name = "que2" id="que1" value = "que2" required>
                         <option>select</option>
                         <option value = "Your Grandfather Name">Your Grandfather Name</option>
                         <option value = "Your Mother's Maiden name">Your Mother's Maiden name</option>
                         <option value = "Your Birth city">Your Birth city</option>
                         <option value = "Your Favorite Colour">Your Favorite Colour</option>
                         <option value = "Your Husband's Favorite Place">Your Husband's Favorite Place</option>
                         <option value = "Your Favorite dish">Your Favorite dish</option>
                         <option value = "Your father's birthplace">Your father's birthplace</option>
                         </select>
                         
<label for="ans1" style="margin-left:20px"><b>Answer : </b></label><input type = "text" name = "ans2" id="ans1" required><br><br>
<b>Select Security Question3 : </b> <select name = "que3" id="que1" value = "que3" required>
                         <option>select</option>
                         <option value = "Your Grandfather Name">Your Grandfather Name</option>
                         <option value = "Your Mother's Maiden name">Your Mother's Maiden name</option>
                         <option value = "Your Birth city">Your Birth city</option>
                         <option value = "Your Favorite Colour">Your Favorite Colour</option>
                         <option value = "Your Husband's Favorite Place">Your Husband's Favorite Place</option>
                         <option value = "Your Favorite dish">Your Favorite dish</option>
                         <option value = "Your father's birthplace">Your father's birthplace</option>
                         </select>
                        
<label for="ans1" style="margin-left:20px"><b>Answer : </b></label><input type = "text" name = "ans3" id="ans1" required><br><br>
<b>Select Security Question4 : </b> <select name = "que4" id="que1" value = "que4" required>
                         <option>select</option>
                         <option value = "Your Grandfather Name">Your Grandfather Name</option>
                         <option value = "Your Mother's Maiden name">Your Mother's Maiden name</option>
                         <option value = "Your Birth city">Your Birth city</option>
                         <option value = "Your Favorite Colour">Your Favorite Colour</option>
                         <option value = "Your Husband's Favorite Place">Your Husband's Favorite Place</option>
                         <option value = "Your Favorite dish">Your Favorite dish</option>
                         <option value = "Your father's birthplace">Your father's birthplace</option>
                         </select>
<label for="ans1" style="margin-left:20px"><b>Answer : </b></label> <input type = "text" name = "ans4" id="ans1" required><br><br>
<b>Initial Amount : </b> <input type = "number" name = "balance" id="balance" requierd><br><br>
<input type = "checkbox" style="padding:10px" required> <b></>I accept and agree all the terms and conditions</b><br><br>
<input type = "submit" id = "openbutton" value = "Open Account">

</form>
</body>
</html>