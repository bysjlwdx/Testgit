<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title></title>
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta name="generator" content="" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport"
			content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
		<link href="jsp/css/haiersoft.css" rel="stylesheet" type="text/css"
			media="screen,print" />
		<link href="jsp/css/print.css" rel="stylesheet" type="text/css"
			media="print" />
		<script src="jsp/js/jquery-1.10.1.min.js"></script>
		<script src="jsp/js/side.js" type="text/javascript"></script>

	</head>

	<body>


		<!-- MainForm -->
		<div id="MainForm">
			<div class="form_boxA">
			
				<h2>
					订单管理
				</h2>
				
				<table cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<th width="5%">
							序号
						</th>
						<th width="15%">
							创建时间
						</th>
						<th width="15%">
							订单编号
						</th>
						<th width="15%">
							商品名称
						</th>
						<th width="10%">
							商品数量
						</th>
						<th width="10%">
							商品价格
						</th>
						<th width="10%">
							购买人
						</th >
						<th width="10%">
							状态
						</th >
						<th width="10%">
							操作
						</th >
					</tr>

					<c:forEach var="order" items="${orderList}" varStatus="status">
						<tr>
							<td width="5%">
								${ order.id }
							</td>
							<td width="15%">
								${ order.createTime }
							</td>
							<td width="15%">
								${ order.orderCode}
							</td>
							<td width="15%">
								${ order.commodityName }
							</td>
							<td width="5%">
								${ order.number }
							</td>
							<td width="5%">
								￥${ order.price }
							</td>
							<td width="10%">
							    ${ order.userName }
							</td>
							<td width="10%">
							    <c:if test="${ order.state==1 }">
							             已完成
							    </c:if>
							    <c:if test="${ order.state==2 }">
							             未支付
							    </c:if>
							    <c:if test="${ order.state==3 }">
							             已支付
							    </c:if>
							     <c:if test="${ order.state==4 }">
							             已取消
							    </c:if>
							</td>
							<td width="10%">
								<a href="javascript:void(0)" onclick="deleteById('${order.id }','${page}')">删除</a>
							</td>
						</tr>
					</c:forEach>

				</table>
			
				
				<ul id="PageNum">
					<c:if test="${pageNum >1 }">
						
						<c:if test="${page >1 }">
							<li>
								<a href="GetOrderAll?page=1&size=10">首页</a>
							</li>
							<li>
								<a href="GetOrderAll?page=${page-1}&size=10">上一页</a>
							</li>
						</c:if>
					</c:if>
					<c:if test="${pageNum >0 }">
						<li>
							${page }/${pageNum }
						</li>
					</c:if>
					
					<c:if test="${pageNum >1 }">
						<c:if test="${page != pageNum }">
							<li>
								<a href="GetOrderAll?page=${page+1}&size=10">下一页</a>
							</li>
							<li>
								<a href="GetOrderAll?page=${pageNum}&size=10">尾页</a>
							</li>
						</c:if>
					</c:if>

				</ul>
			</div>
		</div>
		
	<form action="GetOrderAll" method="get" id="GetOrderAll">
					<!-- 输入框 -->
	                <input type="hidden"  id="page" name="page" />
					<input type="hidden"  id="size" name="size" value="10" />
			</form>
	

	</body>
<script type="text/javascript">
	function deleteById(id, page) {
		document.getElementById("page").value = page;
		var msg = "确定删除此订单吗？";
		if (confirm(msg) == true) {
			$.ajax( {
				type : "POST",//方法类型
				url : "DeleteOrderByIdWeb",//url
				dataType : "text",//预期服务器返回的数据类型
				async : false,//设置为同步传输  
				data : {
					id : id
				},
				success : function(data) {
					if (data == "1") {
						document.getElementById("GetOrderAll").submit();
					} else {
						alert(data);
					}
				},
				error : function() {
					alert("网络异常，请重试！");
				}
			});
		} else {
			return false;
		}
	}
</script>

</html>
