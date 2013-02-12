<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>tv</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="imoney">
	
	<link href="css/iCss.css" rel="stylesheet" type="text/css" >

	<script src="js/jquery-1.4.3.js"> </script>
  </head>
  
 <body>
	<div class="container">
	
	
		<div class="header"><img  height="147" width="449" src="img/logo3.png" style="margin: 0px auto;"></div>

		<div class="content">
			
			<div class="sidebar">
				<ul id="menuItems">
				<li class="items"><font color="#ffff00"><a href="list.action">Home</a></font></li>
				<li class="items"><font color="#ffff00"><a href="goAdd.action">Add</a></font></li>
				<li class="items"><font color="#ffff00"><a href="listAll.action?col=name">All Records</a></font></li>
			
				</ul>
			</div>

				<div class="context" >
					<div class="dataform">
						<h1 align="center">
							<font color="#ffff00">Add New Video</font>
						</h1>
					</div>
					<div class="dataform">
						<form action="add.action" method="post">

							<table id="datatable" align="center"  cellSpacing=3; height="60%">
								<tr>
									<td>
										<strong><font color="#00ffff">Name</font>
										</strong>
									</td>
									<td>:</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.name">
										</font>
									</td>
									<td>
									<table  frame="hsides"><s:select label="Rate" name="video.rate" list="{1,2,3,4,5}"/>	</table>
									</td>
								
								</tr>
								
								<tr>
									<td>
										<strong><font color="#00ffff">Online</font>
										</strong>
									</td>
										<td>:</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.watchUrl" >
										</font>
									</td>
									
								</tr>
								<tr>
									<td>
										<strong><font color="#00ffff">Download</font>
										</strong>
									</td>
									<td>:</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.downloadUrl">
										</font>
									</td>
									
								</tr>
								
								<tr>
									<td>
										<strong><font color="#00ffff">filePath</font>
										</strong>
									</td>
									<td>:</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.filePath">
										</font>
									</td>
									
								</tr>
								
								<tr>
								<td></td>
									<td><table frame="hsides"  >
									<tr><strong><font color="#00ffff">I Have</font></strong></tr>
									<s:select label="Se" name="video.haveSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select label="Ep" name="video.haveEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									
									</table ></td>
								
									<td><table frame="hsides">
									<tr><strong><font color="#00ffff">Newest</font></strong></tr>
									<s:select label="Se" name="video.newestSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select label="Ep" name="video.newestEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									</table></td>
									
									<td><table frame="hsides">
									<tr><strong><font color="#00ffff">Watched</font></strong></tr>
									<s:select label="Se" name="video.watchedSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select label="Ep" name="video.watchedEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									</table></td>
								
								</tr>
								
								
							
							

								

								<tr>
									<td colspan="4">
										<div align="center">
											<strong><input type="submit" name="add" value="       add        "
													style="margin-left: 200px;">
											</strong>
										</div>
									</td>
								</tr>

							</table>
						</form>
					</div>
				</div>
			</div>

				<div id="cleardiv"></div>
		</div>



</body>
</html>
