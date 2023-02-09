<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Free Registration Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<style>
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

.container {
  height: 100vh;
  width: 100%;
  align-items: center;
  display: flex;
  justify-content: center;
  background-image: radial-gradient(
    circle farthest-corner at 10% 20%,
    rgba(253, 101, 133, 1) 0%,
    rgba(255, 211, 165, 1) 90%
  );
}

.card {
  border-radius: 10px;
  box-shadow: 0 5px 10px 0 rgba(0, 0, 0, 0.3);
  width: 400px;
  height: 500px;
  background-color: #ffffff;
  padding: 10px 30px;
}

.card_title {
  text-align: center;
  padding: 10px;
}

.card_title h1 {
  font-size: 26px;
  font-weight: bold;
}

.form input {
  margin: 10px 0;
  width: 100%;
  background-color: #e2e2e2;
  /* border: none;
  outline: none; */
  padding: 12px 20px;
  border-radius: 4px;
}

.form button {
  background-color: #4796ff;
  color: #ffffff;
  font-size: 16px;
  outline: none;
  border-radius: 5px;
  border: none;
  padding: 8px 15px;
  width: 100%;
}

.card_terms {
  display: flex;
  align-items: center;
  padding: 10px;
}

.card_terms input[type="checkbox"] {
  background-color: #e2e2e2;
}

.card_terms span {
  margin: 5px;
  font-size: 13px;
}

.card a {
  color: #4796ff;
  text-decoration: none;
}

.signup:hover{
	color: black;
}
.c1{
	color:red;
	border: 2px solid red;
	text-decoration-line: line-through;
	
}


</style>

</head>
<body>
 <div class="container">
      <div class="card">
        <div class="card_title">
          <h1>Create Account</h1>
          <span>Already have an account? <a href="index.jsp">Sign In</a></span>
        </div>
        <div class="form">
        <form action="freeRegSave.jsp" method="post">
          <input type="text" name="uname" id="uname" placeholder="Name" required/>
          
          <input type="email" name="email" placeholder="Email" id="email" required />
          <input type="text" name="phnno" id="phnno" placeholder="Phone Number" required />
          <input type="password" name="pwd" placeholder="Password" id="pwd" required />
          <button type="submit" id="signup" class="signup">Sign Up</button>
          </form>
        </div>
        <div class="card_terms">
            <input type="checkbox" name="cbox" id="terms"> <span>I have read and agree to the <a href="">Terms of Service</a></span>
        </div>
      </div>
    </div>

</body>


<script>
	$(document).ready(function(){
		$('#signup').prop('disabled',true)
		$("#terms").click(function(){
			var x=$('#terms').is(':checked')
			//alert(x)
			if (x)
				{
					$("#signup").prop('disabled',false)

				}
			else{
				$("#signup").prop('disabled',true)
				

			}
		})
		
		//Checck Duplicate email
		$("#email").keyup(function(){
			$("#email").removeClass("c1");
		
		})
		$("#email").blur(function(){
			var email=$("#email").val()
			if(email.length!=0)
				{
			$.ajax({
				url:'check.jsp',
				method:'post',
				data:{email:email},
				success:function(data1)
				{
					if(data1.length!=0)
						{
						$("#email").addClass("c1");
						}
					else{
						$("#email").removeClass("c1");
					}
					
					
				}
			})
				}
			else{
				$("#email").removeClass("c1");
			}
		})
		
	})
	
	
</script>


</html>