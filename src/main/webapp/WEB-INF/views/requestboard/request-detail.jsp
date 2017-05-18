<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>

<style>

#main {
	margin: 10px;
	float: left
}

#category {
	margin: 10px;
	min-height: 660px;
	width: 150px;
	box-shadow: 1px 1px 5px #383838;
	float: left
}

#context {
	min-height: 200px;
	width: 400px;
	box-shadow: 1px 1px 5px #383838;
}

#minibox {
	min-height: 100px;
	width: 400px;
	box-shadow: 1px 1px 5px #383838;
	margin-top: 10px;
}

#re {
	float: right;
}

#reg {
	float: right;
}

#mini{
	float: right;
}

#btn{
	float:right;
}
</style>



 <main id="main">

	<div>요청디테일</div>
	<div id="yy">
		<div id="main">
			<div id="context">
				<nav>
					<div class="nav-wrapper">
						<div class="col s12">
							<a href="#!" class="breadcrumb">category1</a> <a href="#!"
								class="breadcrumb">category2</a>
						</div>
					</div>
				</nav>
				<table>
			        <thead>
			          <tr>
			              <th id="title">${n.title}<i id="re" class="small material-icons">launch</i></th>			             
			          </tr>
			          <tr>
			          	 <th id="writedate">${n.regDate}<i class="small material-icons">star</i> 23</th>
			          </tr>
			          <tr>
			          	<th id="writer">${n.memberId}</th>
			          </tr>
			        </thead>
			        <tbody>
			        <!--   <tr>
			            <td id="thum">thum</td>
			          </tr> -->
			          <!-- <tr>
			            <td id="url">url</td>
			          </tr> -->
			          <tr>
			            <td id="content">${n.content}</td>
			          </tr>
			          <tr>
			            <td>
			            	<div class="chip">
								Tag
							</div>
							<div class="chip">
								Tag
							</div>
							<div class="chip">
								Tag
							</div>
			            </td>
			          </tr>
			          <tr>
			        
			          
			          	
			          	
			          	<form action="request-del" method="post">
			          	<input type="hidden" name="id" value =${n.id }>
						<button  id="btn" class="waves-effect waves-light btn" type="submit" name="action">삭제</button>
						</form>
			            
			          
			            <td>
							<a  id="btn" class="waves-effect waves-light btn" a href="request-edit?c=${n.id}">수정</a>
			            </td>
			            <td>
							<a id="btn" class="waves-effect waves-light btn" a href="requestboard">목록</a>
			            </td>
			          </tr>
			        </tbody>
		      	</table>

			</div>
			<form action="requestBoard-detail" method="post">
			<div id="minibox">		
				<table>
			        <thead>
			          <tr>
			              <td>
			              	<input name="content"  type="text" value="댓글을입력하세요." />	<input id="reg"  name="action" type="submit" value="등록" />	
			              </td>	             
			          </tr>
			        </thead>
			        <tbody>
			          <tr>
			          	<td>
			          		댓글내용<i id="mini" class="small material-icons">star</i>
			          	</td>
			          </tr>
			        </tbody>
		      	</table>
			</div>
			<input type="hidden" name="requestBoardId" value="1">
			<input type="hidden" name="memberId" value="22323@bb.v">
		</form>	
		</div>
	</div>


</main>