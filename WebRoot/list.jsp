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

		<link href="css/iCss.css" rel="stylesheet" type="text/css">

		<script src="js/jquery-1.4.3.js">
	
</script>
	</head>

	<body>
		<div class="container">


			<div class="header">
				<img src="img/moneyWatcher.png" width="726" height="224"
					style="margin: 0px auto">
			</div>

		
		
		
		
		
		<div class="context">
					<div class="dataform">
						<h1 align="center">
							<font color="#ffff00">Add New Video</font>
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
			</div>
		
		
		
		
		
				
		<div id="sidebar2" class="sidebar">
				<ul id="test">
				<li class="items"><a href="list.action">List</a></li>
				<li class="items"><a href="goAdd.action">Add</a></li>
				</ul>
				</div>
		
	</div>
	</body>
</html>
