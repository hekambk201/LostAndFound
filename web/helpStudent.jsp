<!DOCTYPE html>
<html lang="en">
<head>
<title>CSS Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
  background-color: #666;
  padding: 60px;
  text-align: center;
  font-size: 55px;
  color: white;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 30%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 300px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 30px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
</style>
</head>
<body>


<header>
  <h2>Help</h2>
</header>

<section> 
  <article>
    <h2>This Instruction for Students </h2>
    <p>    <h3> Dear Students, You can get a tracking Sticker for your own security. This security system will help you to secure your all personal belongings.
        Sticker system with tracking code will be used for university student.The student will need to log in to this profile by using the acid account.
        After logging into this system. The student will search from his own tracking ID to see if his belongings have been found or not.
            The university will provide 10 tracking id for each student and staff. Each tracking id will have 2 stickers. The student needs to attach one sticker to 
         his/her important item and one will be with him/her for verification purpose.</h3>
    <h2> How to report a lost item?</h2>
           <h3> When an item is lost the student needs to report it using the lost & found web site. He/she will have to log in to the system using ic number and password.
         Then go to the lost item option and provide the information including the tracking id that he/she has. In this way the item will be in the lost category.</h3>
    <h2> How to report a found item?</h2>
            <h3> When someone found any lost item he/she will have to take the item to the faculty lost & found box or hostel lost & found box. The staff will then collect
         the item, log in to the lost & found web site, go the found item option and put the relevant information including the tracking id from the sticker that the
         student provided with the item. In this way the item will be categorized as a found item. </h3>
     <h2> How to get the found item?</h2>
           <h3>  After making a lost report the student needs to check in the found item option. If the item is found, it will be in the found item list. And then the student
         can match his/her lost tracking id with the lists found item's tracking id. If It match with the id then the student can come to the faculty or hostel for 
         verification. The staff will verify using the tracking id and give the item to its owner.</h3>
   </p>
    
  </article>
</section>

</body>
</html>
