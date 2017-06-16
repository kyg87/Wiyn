<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--Import Google Icon Font-->
<link href="http://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!--Import materialize.css-->
<link type="text/css" rel="stylesheet"
	href="/WiynPrj/resource/css/materialize.css" 

media="screen,projection" />
<link type="text/css" rel="stylesheet"
	href="/WiynPrj/resource/css/style.css" 

media="screen,projection" />
<!--Let browser know website is optimized for mobile-->
<meta name="viewport" content="width=device-width, initial-

scale=1.0" />
<script
	

src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.j

s"></script>
</head>
<style>
</style>
<body>
	<!-- <div class="wrapper">	 -->
	<div>
		<tiles:insertAttribute name="header" />
	</div>
	<div>
		<tiles:insertAttribute name="main" />
	</div>
	<div>
		<tiles:insertAttribute name="footer" />
	</div>

		
	<!-- 풋터 -->
	<!-- Modal Structure -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<h4>Modal Header</h4>
			<p>A bunch of text</p>
		</div>
		<div class="modal-footer">
			<a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Agree</a>
		</div>
	</div>
	<!--Import jQuery before materialize.js-->

	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="/WiynPrj/resource/js/materialize.min.js"></script>
	<script type="text/javascript">
      $(".button-collapse").sideNav();
      </script>
</body>
</html>
