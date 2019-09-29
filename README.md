# CSI 4139 Lab 2

## Instructions
Create a website that a user logs into using both a keyboard and a cell phone.
Once the user clicks the login button / link at the website, the user is presented with a
login screen. When the user enters his/her username and hits **return**, the website
consults a file that it keeps locally to see which cell phone number is associated with that
username. The website then sends an SMS text message to that phone number. The user,
having received the text message, enters it and a password to a local application, which
does some processing and returns a string. The user enters this string at the login screen
and hits **return**. The website validates the sent value; if correct, it returns 2 strings
which the user can input to the local application. The application validates these strings
and returns success or fail to the user.