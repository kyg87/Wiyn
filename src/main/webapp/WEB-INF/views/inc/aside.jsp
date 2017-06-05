<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.google.gson.*"%>
<%@page import="com.wiyn.web.entity.SmallCategory"%>
<style>
.input-field{
display: block;
}

.material-icons{
	height: 100%;
}

</style>



<aside id="left-sidebar-nav">
	<ul id="nav-mobile" class="side-nav fixed"
		style="overflow: auto; transform: translateX(0%);">
		<label style="display: none">Search</label>
		<form action="http://localhost/WiynPrj/main/index" method="GET">
			<nav>
				<div class="nav-wrapper">
					<div class="input-field">
						<input type="hidden" name="p" value="1" /> <input name="q"
							id="search" type="search" value="${param.q}" required> <label
							class="label-icon" for="search"><i class="material-icons">search</i></label>
						<i class="material-icons">close</i>
						
					</div>

				</div>
			</nav>
		</form>
		<label style="display: none">Speed Search</label>
		<c:forEach var="bcb" items="${bcbList }">
          <ul class="collapsible collapsible-accordion">
            <li class="bold" ><a class="collapsible-header  waves-effect waves-teal">
            <input type="hidden"  value="${bcb.id }" name="bigCa" />${bcb.name }</a>
              <div class="collapsible-body">
                <ul>
                <c:forEach var="small" items="${bcb.smallCategory}">
                  <li><a href="http://localhost/WiynPrj/main/index?p=1&q=&bigCa=${bcb.id}&smallCa=${small.id}"><input type="hidden"  value="${small.id }" name="SmallCa" />${small.name }</a></li>
                </c:forEach>
                </ul>
              </div>
            </li>
 		</c:forEach>
          </ul>
	</ul>	

<script type="text/javascript">
	
		$(document).ready(function() {
	    	$('select').material_select();
	  	});
	

	</script>

<script>


</script>
</aside>



