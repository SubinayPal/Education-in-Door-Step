<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Free Profile Dashboard</title>

<script src="https://kit.fontawesome.com/7816c50242.js" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@1000&display=swap" rel="stylesheet"> </script>


<style>

*{
  font-family: 'Nunito Sans', sans-serif;
}
body{
  background-color: #f5f5e6;
}


#sidebar {
        width: 90px;
        height:95vh;
        background: #2d3853;
        color: #fff;
        -webkit-transition: all 0.3s;
        -o-transition: all 0.3s;
        transition: all 0.3s;
        position: relative; 
        margin-top: 0px;
        margin-left: 0px;
        border-radius:5px        
} 
      
    
#sidebar ul     {   
      list-style-type:none;
      padding: 15px 15px 0px 15px;
}
#sidebar a      {   
      text-decoration:none; 
      color:#fff;  
      display: block;
      transition: all 0.3s;
      font-size: 35px;
      text-align:center;
      margin-top: 35px;
  
}
#sidebar p      {  
      font-size: 12px;
      display:none;
}
    
#sidebar:hover      {   
  width: 200px;
  border-radius:15px;
  
} 
#sidebar:hover a    {  
      display: flex;
      padding-left: 1rem; 
      text-align:left;
      font-size:25px;
      align-items: center;
}  
#sidebar:hover p    {                         
	  display:block;
      font-size: 20px;
      margin-left: 1rem;
}  
    
#sidebar a:hover{   
  border-radius:5px;
  box-shadow: 0px 0px 0px #070913,
              0px 0px 0px #171d2b, 
              inset 4px 4px 8px #171d2b,
              inset -4px -4px 8px #6982bf;
}  



</style>


</head>
<body>
 <nav id="sidebar">
    <ul>
      <li>
         <a href="freeQuery.jsp"> <i class="fa fa-search " aria-hidden="true"></i><p>Write your query</p></a>
      </li>
      <li>
         <a href=""> <i class="fa fa-book " aria-hidden="true"></i><p>Reports</p></a>
      </li>
      <li>
         <a href=""> <i class="fa fa-user " aria-hidden="true"></i><p>Users</p></a>
      </li>
      <li>
         <a href=""> <i class="fa fa-bell " aria-hidden="true"></i><p>Notification</p></a>
      </li>
      <li>
         <a href=""> <i class="fa fa-crown " aria-hidden="true"></i><p>Upgrade Prime</p></a>
      </li>
    </ul>
  </nav>
  <header>
    
  </header>


   
</body>
</html>