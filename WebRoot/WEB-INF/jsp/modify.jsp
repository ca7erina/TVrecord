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
	
		<div class="banner">
		<div class="header"><font color="#ffff00"><img height="147" width="449" src="img/logo3.png" ></font></div>
			</div>
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
							<font color="#ffff00">Modify Record</font>
						</h1>
					</div>
					<div class="dataform">
						<form action="modify.action" method="post">
								<input type="hidden" name="video.id" value="<s:property value="video.id"/>"/>
						<table id="datatable" align="center" width="90%" height="60%">
								<tr>
									<td>
										<strong><font color="#00ffff">Name</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.name" value="<s:property value="video.name"/>">
										</font>
									</td>
									<td>
									<table  frame="hsides"><s:select value="video.rate" label="Rate" name="video.rate" list="{1,2,3,4,5}"/>	</table>
									</td>
								</tr>
								
								<tr>
									<td>
										<strong><font color="#00ffff">Online</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.watchUrl" value="<s:property value="video.watchUrl"/>">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
								</tr>
								<tr>
									<td>
										<strong><font color="#00ffff">Download</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.downloadUrl" value="<s:property value="video.downloadUrl"/>">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
								</tr>
								
								<tr>
									<td>
										<strong><font color="#00ffff">filePath</font>
										</strong>
									</td>
									<td>
										:
									</td>
									<td colspan="4">
										<font color="#ff80c0"><input type="text" name="video.filePath" value="<s:property value="video.filePath"/>">
										</font>
									</td>
									<td valign="top">
										<br>
									</td>
								</tr>
									
								<tr>
								<td></td>
									<td><table frame="hsides"  >
									<tr><strong><font color="#00ffff">I Have</font></strong></tr>
									<s:select value="video.haveSe" label="Se" name="video.haveSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select value="video.haveEp" label="Ep" name="video.haveEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									
									</table ></td>
								
									<td><table frame="hsides">
									<tr><strong><font color="#00ffff">Newest</font></strong></tr>
									<s:select value="video.newestSe"  label="Se" name="video.newestSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select value="video.newestEp" label="Ep" name="video.newestEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									</table></td>
									
									<td><table frame="hsides">
									<tr><strong><font color="#00ffff">Watched</font></strong></tr>
									<s:select value="video.watchedSe" label="Se" name="video.watchedSe" list="{0,1,2,3,4,5,6,7,8,9,10}"/>	
									<s:select value="video.watchedEp" label="Ep" name="video.watchedEp" list="{0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24}"/> 
									</table></td>
								
								</tr>

								<tr>
									<td colspan="4">
										<div align="center">
											<strong><input type="submit" name="submit" value="submit"
													style="margin-left: 200px;">
											</strong>
										</div>
									</td>
								</tr>
						</form>
					</div>
				</div>
			</div>

				<div id="cleardiv"></div>
		</div>



</body>
</html>
