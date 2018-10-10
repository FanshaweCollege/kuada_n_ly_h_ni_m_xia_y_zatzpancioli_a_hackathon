# kuada_n_ly_h_ni_m_xia_y_zatzpancioli_a_hackathon

Fall 2018 Midterm – Hackathon <br>

Project: HouseCom™ ThermoSecure™ System <br>

Team: <br>
Anna Carolina Zatz Pancioli<br>
Han Ly<br>
Mohan Ni<br>
Nathalia Miki Kuada<br>
Yuchen Xia<br>



Databases:

tb1_product:
This is based on what we learned in class and it is include the name, price, description and two size images of our product.

tb1_color:
different color for our product.

tb1_product_color:
This is the linking file of the tb1_color and tb1_product


tb2_homepage:
position: specify the location, the big section or div we use in the html.
mobileimages: images used for moblie broswer.
desktopimages: images used for desktop broswer.

descrption: We make our database like this because for the images, we may not reuse them, So we just put them togather.

tb2_font, tb2_color, tb2_background:
For this 3 sheets, they are used for our website includes font, color and background color. We may reuse them, so we just put them separately in order to use them in the futher or 
update them easily.

tb2_font_color_background:
another linking database. This is made for a easier way to do searching. For the part of homepage_id, the idea is we can add id of other pages to this sheet and link to that page,
so the name of homepage is not shown in the name of this sheet, because it can be like "aboutus_id" or "contactus_id".
And we don't need to show the font, color or background to our users, so we don't make a php file for it.

Fetch javascript:
For this javascript, we didn't make any change, we know it is used for grab things from our product's sheet and show them to users. When we open the heml file, we need to put
localhost/midterm/index.html in the URL then we can see the list. It assumes that we have a server named localhost and make it like a real website.






