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
				<img src="img/logo3.png" height="147" width="449"
					style="margin: 0px auto">
			</div>
			<div class="content">
						<div class="sidebar">
				<ul id="menuItems">
				<li class="items"><font color="#ffff00"><a href="list.action">Home</a></font></li>
				<li class="items"><font color="#ffff00"><a href="goAdd.action">Add</a></font></li>
				<li class="items"><font color="#ffff00"><a href="listAll.action?col=name">All Records</a></font></li>
			
				</ul>
			</div>
			<div class="context">
			
	
			
				<div class="dataform">
						<h1 align="center">
							<font color="#17f787"><strong>Videos</strong></font>
						</h1>
					</div>
				<div >
					<table >
						<tbody>
							<tr id="tablehead" align="center">

								<td width="20%">Name</td>
								<td width="10%">Newest</td>
								<td width="10%">Wateched</td>
								<td width="10%">Ihave</td>							
								<td width="5%">Online</td>
								<td width="5%">&#8595</td>
								<td width="5%">File</td>
							</tr>
						</tbody>
						<tbody>
							<s:iterator value="videos" status="status">
								<tr align="center" class="row${status.count%2+1}">
									<td ><strong><s:property value="name" /></strong></td>
									<td>S<s:property value="newestSe" />e<s:property value="newestEp" /></td>
									<td>S<s:property value="watchedSe" />e<s:property value="watchedEp" /></td>
									<td>S<s:property value="haveSe" />e<s:property value="haveEp" /></td>								
									<td><s:if test="null!=watchUrl  && !''.equals(watchUrl)">
									<a href="<s:property value="watchUrl" />">go</a></s:if>
									</td>
									<td><s:if test="null!=downloadUrl && !''.equals(downloadUrl)"><a href=<s:property value="downloadUrl" />>go</a></s:if></td>
									<td><s:if test="null!=filePath && !''.equals(filePath)"><a href="file:///<s:property value="filePath"/>">go</a></s:if></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<br/>
				</div>
				</div>

				</div>
		
	</div>
	</body>
</html>
