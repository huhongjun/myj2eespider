<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-Strict.dtd">

<%@ include file="/jsp/common/taglibs.jsp"%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <%@ include file="/jsp/common/meta.jsp" %>
        <title><decorator:title/></title>

        <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout/spider3/style.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout/spider3/xtree.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/layout/spider3/displaytag.css'/>" />
        <link rel="stylesheet" type="text/css" href="<c:url value='/css/common.css'/>" />

        <script type="text/javascript" src="<c:url value='/js/base.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/js/ajaxanywhere/aa.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/js/strutsmenu/xtree.js'/>"></script>
        
        <decorator:head/>
    </head>
  <body>
 	<!-- Generated at www.csscreator.com -->
	<div id="container" >
	<div id="banner" >
 		<h1>SpiderExam</h1>
		<p><a href="<c:url value='/j_acegi_logout'/>"><fmt:message key="page.index.logoff"/></a></p>
	</div>
	<div id="outer" >
	  <div id="inner">
 			<div id="left">
		        <script type="text/javascript">
		            <menu:useMenuDisplayer name="Velocity" repository="repositorio" config="/jsp/velocity/xtree.vm">
		              	<c:forEach var="menu" items="${repositorio.topMenus}">
		                    <menu-el:displayMenu name="${menu.name}"/>
		             	</c:forEach>
		       		</menu:useMenuDisplayer>  
		       	</script>
			</div>
			<div id="content">
				<img src="<c:url value='/images/pixel.gif'/>" height="0" width="0"/>
				<p>
			        <%@ include file="/jsp/common/messages.jsp" %>
					<decorator:body/>
				</p>
			</div>
            <!-- end content -->


	  </div><!-- end inner -->
	</div><!-- end outer -->
 	<div id="footer"><h5>Copyright &copy; SpiderExam. All Right Reserved.</h5></div>

	</div><!-- end container -->
	</body>
 </html>
