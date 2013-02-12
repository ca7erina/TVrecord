<%@ page language="java" import="java.util.*,java.text.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>iMoney</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="imoney">
	
	<link href="css/iCss.css" rel="stylesheet" type="text/css" >
	<script type="text/javascript" src="js/jquery-1.4.3.js"></script>
	<script>
		
		$(function(){
		var s=setInterval(function(){
		
		$("#timer").text(Date());	
		},800);
				
		
		});
	
	</script>
  </head>
  
 <body>
	<div class="container">
	
	
		<div class="header"><img src="img/moneyWatcher.png" width="726" height="224" style="margin:0px auto"></div>
	
		
	
	
		<div class="content">
			
			<div class="sidebar">
				<ul id="menuItems">
				<li class="items"><a href="page/page.action?pageNo=2&pageSize=5">Records</a></li>
				<li class="items"><a href="new.jsp">Add New</a></li>
				<li class="items"><font color="#ff0080"><a href="">Search</a></font></li>
				</ul>
			</div>
			
		
			
			<div class="context">
				<div class="context">
				<div class="dataform">
						<h1 align="center">
							<font color="#17f787">Videos</font>
						</h1>
					</div>
				<div class="dataform">
					<table cellSpacing="0" cellPadding="0" width="97%" align="center" border="1">
						<tbody>
							<tr id="tablehead" align="center">

								<td width="30%">
									name
								</td>

								<td width="20%">
									Currently
								</td>
								<td width="25%">
									Done
								</td>
								<td width="20%">
									Newest
								</td>
								<td width="5%">
									Rate
								</td>
							</tr>
						</tbody>
						<tbody>
							<s:iterator value="videos" status="status">
								<tr align="center" class="row${status.count%2+1}">
									<td width="20%">
										<s:property value="name" />
									</td>
									<td>
										S
										<s:property value="currSe" />
										e
										<s:property value="currEp" />
									</td>
									<td>
										S
										<s:property value="doneSe" />
										e
										<s:property value="doneEp" />
									</td>
									<td>
										S
										<s:property value="newestSe" />
										e
										<s:property value="newestEp" />
									</td>
									<td>
										<s:property value="rate" />
									</td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<br/>
				</div>
				</div>
				<div id="cleardiv"></div>
<div class="context">
					<div class="dataform">
						<h1 align="center">
							<font color="#fc6992">Modify Video</font>
						</h1>
					</div>
					<div class="dataform">
						<form action="add.action" method="post">

							<table id="datatable" align="center" width="90%" >
								<tr>
									<td>
										<strong><font color="#00ffff">Name</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.name">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
								</tr>

								<tr>
									<td>
										<strong><font color="#00ffff">Watching</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td>
										<font color="#ff80c0">Season <input type="text"
												name="video.currSe" size="2" value="0">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>

									<td>
										<font color="#ff80c0">Episode <input type="text" name="video.currEp" size="2" value="0">
										</font>
									</td>
								</tr>
								<tr>
									<td>
										<font color="#00ffff"><strong>Newest</strong>
										</font>
									</td>
									<td>
										:
									</td>
									<td>
										<font color="#ff80c0">Season <input type="text"
												name="video.newestSe" size="2" value="0">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
									<td>
										<font color="#ff80c0">Episode <input type="text"
												name="video.newestEp" size="2" value="0">
										</font>
									</td>
								</tr>
								<tr>
									<td>
										<strong><font color="#00ffff">Watched</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td>
										<font color="#ff80c0">Season <input type="text"
												name="video.doneSe" size="2" value="0">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
									<td>
										<font color="#ff80c0">Episode <input type="text"
												name="video.doneEp" size="2" value="0">
										</font>
									</td>
								</tr>

								<tr>
									<td>
										<strong><font color="#00ffff">Rate</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="radio" name="video.rate"
												value="5">5 <input type="radio" name="video.rate"
												value="4">4 <input type="radio" name="video.rate"
												value="3" checked="checked">3 <input type="radio"
												name="video.rate" value="2">2 <input type="radio"
												name="video.rate" value="1">1 </font>
								</tr>

								<tr>
									<td colspan="4">
										<div align="center">
											<strong><input type="submit" name="add" value="add"
													style="margin-left: 200px;">
											</strong>
										</div>
									</td>
								</tr>

							</table>
						</form>
					</div>
			</div>
			
			
				<div id="sidebar2" class="sidebar">
				<ul id="test">
				<li class="items"><a href="home.jsp">Home</a></li>
				<li class="items"><a href="">Money path</a></li>
				<li class="items"><a href="">Data Table</a></li>
				<li class="items"><a href=""></a></li>
				<li class="items"><a href=""></a></li>
				</ul>
				</div>
				
		</div>
		
		
		
		<div id="cleardiv"></div>
		
	</div>

</body>
</html>
