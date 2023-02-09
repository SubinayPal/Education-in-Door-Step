<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First Page</title>

<style>

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 2rem;
    background-image: radial-gradient(
    circle farthest-corner at 10% 20%,
    rgba(253, 101, 133, 1) 0%,
    rgba(255, 211, 165, 1) 90%
  );
    background-position: center;
    background-size: cover;
    background-repeat: no-repeat;
  }
  
  @media (min-width: 700px) {
    .container {
      padding: 3rem;
    }
  }
  
  @media (min-width: 1200px) {
    .container {
      padding: 6rem;
    }
  }
  
  .container-inner {
    display: grid;
    grid-template-columns: 1fr;
    gap: 2rem;
    max-width: 900px;
    margin: auto;
  }
  
  @media (min-width: 800px) {
    .container-inner {
      display: grid;
      grid-template-columns: 1fr 1fr;
      align-items: center;
      gap: 2rem;
    }
  }
    
  
  .container-inner p,
  .container h2 {
    color: #fff;
  }
  
  .container-button {
    background: #fff;
    color: #444;
    border: 0;
    padding: 1rem 2rem;
    display: inline-block;
    margin-top: 1rem;
  }
  
  @media (min-width: 700px) {
    .container-button {
      margin-top: 2rem;
    }
  }
  
  .container-image {
    order: -1;
    justify-items: center;
  }
  
  @media (min-width: 800px) {
    .container-image {
      order: initial;
    }
  }
  
  .container-image img {
    width: 80%;

    margin-left: 3rem;
  }
  
  .container-form {
    margin-top: 1rem;
  }
  
  @media (min-width: 700px) {
    .container-form {
      margin-top: 2rem;
    }
  }
  
  .container-form-input {
    display: grid;
    grid-template-columns: 1fr;
  }
  
  @media (min-width: 400px) {
    .container-form-input {
      display: grid;
      grid-template-columns: 1fr 1fr 1ft;
    }
  }
  
  .container-email-input {
    padding: 1rem;
    box-sizing: border-box;
  }
  
  .container-form-submit {
    background-color: #F50057;
    color: #fff;
    border: none;
    padding: 1rem 2rem;
    margin-top: .5rem;
    cursor: pointer;
  }
  
  .container-form-submit:hover {
    color: black;
    cursor: pointer;
    
  }
  
  @media (min-width: 400px) {
    .container-form-submit {
      margin-top: 0;
    }
  }
  
  #heading{
  	font-size: 35px;
  	color: #f0f0f0;	
  }
  
  button{
  	padding: 10px;
  	dislay: flex;
  	border-radius: 15px;
  	width: 200px;
  	box-shadow: 2px 5px #F50057;
  	font-size: 16px;
  	cursor: pointer;
	
  }

button:hover{
	background-color: #F50057;
	box-shadow: 2px 5px #f0f0f0;
	color: #f0f0f0;
	
}
  
</style>

</head>
<body>
    <header class="container">
        <div class="container-inner">
          
          <div class="container-text">
            <span id="heading">Education In || DOOR-STEP ||</span>
            <p>We are here to help you out...</p>
            <form class="container-form" action="checkUser.jsp">
              <div class="container-form-input">
                <input class="container-email-input" type="email" placeholder="Email Address" name="email" required>
                <input class="container-email-input" type="password" placeholder="Password" name="pwd" required>
                <input class="container-form-submit" type="submit" value="Sign In">
              </div>        
            </form>
          </div>
          
          <div class="container-image">
            <img src="edsLogo.png" />
          </div>
          
          <div>
          	<nav>
          		<a href="FreeReg.jsp"><button name="b1" id="freeReg">Free</button></a>
          		<button name="b2" id="premiumReg">
          			Premium <span id="primeIcon"> &#x2605; </span>
          		</button>
          	</nav>
          </div>
          
        </div>
      </header>
      
      <footer>Copyright &copy; 2023 by SD & RF</footer>
      
</body>
</html>