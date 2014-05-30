<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%  String tenantcompany = (String) session.getAttribute("companyname");
 // have to change it to dynamic, value should come from session
 %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>
</head>
<body>
 <% 
 
 if (tenantcompany.equalsIgnoreCase("Samsung") ){%> 
<div id="samsung">
<h1>Samsung</h1>
The Samsung Galaxy S III is a multi-touch, slate-format smartphone designed, developed, and marketed by Samsung Electronics that runs the Android operating system. It has additional software features, expanded hardware, and a redesigned physique from its predecessor, the Samsung Galaxy S II. The S III employs an intelligent personal assistant (S Voice), eye-tracking ability, increased storage, and a wireless charging option
<br><br><br><br>
Contact Information for Samsung Electronics America<br>
In the USA, for product information contact!
Consumer Electronics
85 Challenger Road
Ridgefield Park,NJ. 07660
Tel: 1800-SAMSUNG (726-7864)
</div>
<% } 
else if(tenantcompany.equalsIgnoreCase("Motorola"))  { %>
<div id="motorolla">
<h1>Motorolla</h1>
Moto X is ready when you are. It responds to your voice—no touching necessary. Twist your wrist twice, it becomes your camera. Information quietly appears on the screen—it doesn’t interrupt and it’s battery friendly. Now AT&T, Sprint, T-Mobile, and Verizon customers can get their Moto X through Moto Maker. Black and white available at U.S. Cellular.
<br><br><br><br>
Contact Information for Motorola!<br>
We can help. If you can, use a different phone than the one you are calling about.
For general product questions and technical support on your Android-powered Devices
1-800-734-5870
Mon-Fri 7AM-10PM; Sat-Sun 9AM-6PM CST
</div>
<% } else if(tenantcompany.equalsIgnoreCase("Apple") ) { %>
<div id="iphone">
<h1>Apple</h1>
Forward thinking and incredibly useful, iPhone brings the future of technology to work. 
With a remarkably thin, light design, the A7 chip with 64-bit desktop-class architecture, a fingerprint identity sensor, innovative apps for business, and ultrafast LTE wireless, iPhone 5s sets a new standard for business.
<br><br><br><br>
Apple Online Store<br>The Apple Online Store is a convenient place to purchase Apple products and accessories from Apple and other manufacturers. You can buy online or by calling 1-800-MY-APPLE (800-692-7753).
<br>You can get information about an order you placed on the Apple Online Store through the Order Status page. If you prefer, you can also get order status or make changes by phone at 1-800-692-7753.
</div>
<% } else if(tenantcompany.equalsIgnoreCase("Sony") ) { %>
<div id="sony">
<h1>Sony</h1>
Sony Mobile is a wholly owned subsidiary of Tokyo-based Sony Corporation, a leading global innovator of audio, video, game, communications, key device and information technology products for both the consumer and professional markets.
With its music, pictures, computer entertainment and online businesses, Sony is uniquely positioned to be the leading electronics and entertainment company in the world.
Through its Xperia™ smartphone and tablet portfolio, Sony Mobile delivers the best of Sony technology, premium content and services, and easy connectivity to Sony’s world of networked entertainment experiences.
<br><br><br><br>
Sony believes that communication regarding such concerns is best conducted through personal interaction with our dedicated customer service teams.<br>1-239-768-7547 (U.S. only)<br>1-239-768-7676 International (Calling from outside the U.S.)
</div>
<% } else if(tenantcompany.equalsIgnoreCase("Google") ) { %>
<div id="google">
<h1>Google Nexus</h1>
<b>The smart new phone from Google.</b><br>
Nexus helps you capture the everyday and the epic in fresh new ways. It's the slimmest and fastest Nexus phone ever made, powered by Android™ KitKat®.
<br><br><br><br>
United States 	(855) 836-3987 	24 hours a day, seven days a week
</div>
<% } else if(tenantcompany.equalsIgnoreCase("Nokia") ) { %>
<div id="nokia">
<h1>Microsoft + Nokia Devices</h1>
<b>Everything just became a lot more colorful.</b>
<br>Microsoft Corp. has announced the completion of its acquisition of Nokia Devices and Services business. The completion of the acquisition marks an important step in bringing these two organizations together as one team, a process that is expected to take 18 to 24 months to complete.
<br>Stephen Elop, former Nokia President and CEO, will serve as executive vice president of Microsoft’s Devices Group, reporting to Microsoft CEO Satya Nadella. Elop will lead an expanded team made up of Xbox, Xbox Live, Microsoft Studios, Microsoft Hardware, Surface and Nokia Devices and Services.
<br>Microsoft will continue to deliver new value and opportunity, and work closely with a wide range of hardware partners, developers, operators, distributors and retailers, providing platforms, tools, applications and services that enable them to make exceptional devices. With a deeper understanding of hardware and software working as one, the company will strengthen and grow demand for Windows devices overall.
<br><br><br><br>
Hours of operation: Monday-Friday 10:00 a.m - 8:00 p.m. EST (Except holidays) 1-888-665 4228 TTY/TDD: 1-800-246 6542
</div>
<% } %>
</body>
</html>