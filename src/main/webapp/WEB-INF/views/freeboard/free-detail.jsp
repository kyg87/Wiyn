<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles"  uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
   span.title {
       color: #839705;
       font-family: Microsoft YaHei,'NSL';
       font-size: 15px;
   }
   
   time {
       color: #c1c1c1;
       font-size: 13px;
       font-family: Microsoft YaHei,'NSL';
   }

   p {
       color: #6d6e71;
       font-size: 13px;
       font-family: Microsoft YaHei, "NS";
       margin-top: 5px;
       line-height: 1.5;
   }
   
   
   
   
   .head td:first-child{
   height: 15px;
}

#btn{
   float:right;
   background: rgb(210, 178, 149);
}

.btn {
   background: rgb(210, 178, 149);
}

.btn:hover {
   /* background: rgb(210, 178, 149); */
   background-color: rgb(195, 143, 95) !important;
}

hr {
    border-bottom: 0;
    border-right: 0;
    border-top:1px solid rgba(144, 135, 135, 0.59);
}

body {
   background-color: rgb(238, 238, 238);
}

body, html {
   font-family: 'Abel', sans-serif;
   color: #846C63;
}

.alcaramel {
    background-color: #F0E5D7 !important;
}

.card-panel {
    transition: box-shadow .25s;
    padding: 20px;
    margin: 0.5rem 0 1rem 0;
    border-radius: 2px;
    background-color: #fff;
}
.card-panel {
    transition: box-shadow .25s;
    padding: 20px;
    margin: 0.5rem 0 1rem 0;
    border-radius: 2px;
    background-color: #F0E5D7 !important;
    min-height: 640px;
}

.detail-title {
    font-weight: 700;
    display: block;
    /* text-transform: uppercase; */
}

i {
    line-height: inherit;
}

.opening-hours {
    margin: 0;
}
ul {
    padding: 0;
    list-style-type: none;
}

hr {
    border-bottom: 0;
    border-right: 0;
    border-top:1px solid rgba(144, 135, 135, 0.59);
}

a {
    text-decoration: none;
}
h6 {
    font-size: 1rem;
    line-height: 110%;
    margin: 0.5rem 0 0.4rem 0;
}

h2{margin-top: 10px;
text-shadow: skyblue 0px 0px 0px 4px; }


i{
font-family: "Material-Design-Icons";
}


i.tiny {
    padding-top: 3px;
}

span.title {
    color: #839705;
    font-family: Microsoft;
}
time {
    margin-left: 17px;
}
.box_write{
   background-color: #f7f7f7;
    height: 98px;
    box-sizing: border-box;
    padding: 13px 18px;
    border: 1px solid #e6e6e6;
        display: flex;
}
    
.box_write textarea {
  /*   width: 535px; */
    height: 71px;
    box-sizing: border-box;
    border: 1px solid #e6e6e6;
    resize: none;
    float: left;
    color: #c7c7c7;
    font-size: 16px;
    font-family: Microsoft YaHei,'NSL';
    text-align: center;
    padding-top: 20px;
    color: #313131;
    overflow: auto;

}
.box_write button {
    /* display: block; */
    width: 123px; 
    height: 71px;
    background-color: #d2b295; 
    border: none;
    color: #fff;
    font-size: 17px;
    font-family: Microsoft YaHei,'NSL';
    float: right;
    line-height: 80px\0;
    margin-left: 10px;
} 


.margin{
   margin-left:3px;
}

.content-box{
   padding-top:5px;
   padding-bottom:10px;
   border:1px solid rgba(144, 135, 135, 0.59);
   margin-top:10px;
   margin-bottom:10px;
}

.detail-title {
    font-weight: 700;
    display: block;
    /* text-transform: uppercase; */
}

#main {
   width: 100%;
   min-height: 500px;
   font-size: 14px;
   line-height: 1.5em;
   border-radius: 10px;
   -moz-border-radius: 10px;
   -webkit-border-radius: 3px;
   box-shadow: 1px 1px 5px #383838;
   background: #F6F4F1 !important;
}
   
</style>

<script>
$(document).ready(function(){                           
   $(".list-btn").on("click",function(){
      $('.back').prop('href', history.back());
   });
});
</script>

<main id="main">

<div class="container">
      <div class="section">
         <div class="row">
            
            <div class="col s12 l6">
               <h2>Free Board</h2>
            </div>
            
            <div class="col s12 l6">
               
               <div class="card-panel">
                  
                  <h4>${n.title }</h4>
                  <hr /><br />
                  
                  <div>
                     <span class="detail-title"><i class="tiny material-icons">person_pin</i>Writer</span>
                     <span> ${n.memberId } </span>
                     <hr /><br />
                  </div>
                  
                  <div>
                     <span class="detail-title"><i class="tiny material-icons">av_timer</i>Write Time</span>
                     <span><fmt:formatDate value="${n.regDate }" pattern="yyyy-MM-dd HH:mm:ss" /></span>
                     <hr /><br />
                  </div>
                  
                  <div>
					<span class="detail-title"><i class="tiny material-icons">language</i> Adress </span> 
					<span> ${n.contentSrc }</span>
					<hr /><br />
				</div>
               
                  <div>
                     <span class="detail-title"><i class="tiny material-icons">textsms</i> Comment </span>
                     <c:set var="newLine" value="\r" />
                     <span>${n.content }</span>
                     <hr /><br />
                  </div>
                  
                  <div>
                  <a id="btn" class="waves-effect waves-light btn"
                     href="#modal2" id="freeArticleDel">삭제</a>                     
                  <a id="btn" class="waves-effect waves-light btn"
                     href="free-edit?c=${n.id}">수정</a>
                  <a class="waves-effect waves-light btn list-btn" id="back" >목록으로</a>
               </div>
               
               </div>
               
               <div id="modal2" class="modal">
                  <div class="modal-content">
                     <h4>게시물 삭제</h4>
                     <p>정말 삭제하시겠습니까?</p>
                  </div>
                  <div class="modal-footer">
                     <button class="btn waves-effect waves-light" type="button" id="ArticleDelCancel">Cancel</button>

                     <button class="btn waves-effect waves-light" type="button" id="ArticleDelBtn">Submit</button>
   
                  </div>
               </div>
               
            </div>
         </div>
      </div>
   </div>

   <script>
   $(function(){
         
      $("#ArticleDelBtn").on('click', function(){
         
         var id = ${n.id};
         
         $.post("free-del", {"id":id});
         location.href='freeboard';
         
      });

      $("#ArticleDelCancel").on('click', function(){
         
         location.href='http:\/\/localhost\/WiynPrj\/freeboard\/free-details?c='+${n.id};
         
      });
         
   });
   </script>


<%-- <div id="yy">

      <div id="main">
         <div id="context">
            <nav>
            
            </nav>
            <table>
                 <thead>
                 
                   <tr>
                       <th>제목 : ${n.title}</th>                      
                   </tr>
                   <tr>
                      <th>작성시간 : <fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd HH:mm:ss"/></th>
                   </tr>
                   <tr>
                      <th>ID : ${n.memberId}</th>
                   </tr>
                  
                                   </thead>
                 <tbody>
                   <tr>
                     <td id="thum"><img src="../../../WiynPrj/resource/images/foto/13.jpg"/>${n.contentSrc}</td>
                   </tr>        
                   <tr>
                   
                     <td id="content">Content: ${n.content }</td>
                     
                   </tr>
                   
                    
                   <tr>
                   
                     <td>
                    
                        <input type="hidden" name="id" value =${n.id }>
                        <form action="free-edit?c=${n.id}" method="post"> 
                        
                        <button class="btn waves-effect waves-light" type="submit" name="action">수정</button>
                     </form> 
                     </td>
                     
                     <td>
                     <form action="free-del" method="post">
                     <input type="hidden" name="id" value =${n.id }>
                      <button class="btn waves-effect waves-light" type="submit" name="action">삭제</button>
            
                    
                    </form>
                       
                     </td>
                     <td>
                       <form action="freeboard" method="post">
                      <button class="btn waves-effect waves-light" type="submit" name="action">목록</button>
                  </form>
                     </td>
                     
                   </tr>
                   
                 </tbody>
               </table>

         </div> --%> <!------------------------------------------------------------- 댓글 영역 ------------------------------------------------------------------------>


<<%-- div id="minibox">
   <form id="comment-add-form" action="freeBoard-comment-add"
      method="post">
      <div class="row">
         <security:authorize access="isAnonymous()">
            <p>글쓰기는 로그인한 유저만 가능합니다 로그인해주세요</p>
         </security:authorize>

         <security:authorize access="isAuthenticated()">
            <div class="input-field">
               <i class="material-icons prefix">mode_edit</i> <input
                  id="icon_prefix2" type="text" class="validate" name="content"
                  required="required"> <label for="icon_prefix2">Message</label>
               <button class="btn waves-effect waves-light secondary-content"
                  type="button" onclick="onCreate();">
                  등록 <i class="material-icons right">send</i>
               </button>
            </div>
         </security:authorize>
      </div>

      <input type="hidden" name="freeBoardId" value=${n.id }> <input
         type="hidden" name="memberId"
         value=<security:authentication property="name"/>>
   </form>


   <ul id="commentList" class="collection">

   </ul>

</div> --%>


<ul id="pagination" class="pagination center">

</ul>


</div>
</div>



</main>


<!------------------------------------------------------------- 댓글 영역 ------------------------------------------------------------------------>
<security:authentication property="name" var="loginID"/>

<script>

   
page(${page});



var currentPage = ${page};
   
   function onCreate(){
      
      var count = 0;
      
      var text = $("#comment-add-form").find("input");
      
   
      var tt= text.val();
      tt = tt.trim();//공백 제거
        
        if(!tt){
            alert("내용이 없습니다.");
            text.focus();//해당입력란으로 포커싱
            return;
        }
      

      var data = $("#comment-add-form").serialize();
   
   
      
      $.post("freeBoard-comment-add", data, function(z) {

         if(z =="1"){

            page(1);
          /*    count++;
            if(count <100)onCreate(); */ 
         }
         
      });
      
   }
   
   
   function onDelete(d){
      
      if (confirm("정말 삭제하시겠습니까??") == true){    //확인
         $.post("freeCommentDelete", {"id":d}, function(z) {
            if(z =="1"){
               alert("삭제했습니다.");
               
               page(currentPage);
               
            
            }
            
         });
         
      }else{   //취소
          return;
      }

   }
  function page(page){
      currentPage = page;
      console.log(currentPage);
      $.post("commentPage", {"page":page ,"id":${n.id }}, function(d) {
            
            $("#commentList").empty();
            $("#pagination").empty();
            var obj = JSON.parse(d);
            
           
            if(obj.length != 0){
               

               for (var i = 0; i < obj.length; i++) {
                  
                  if(obj[i].memberId=='${loginID}'){
                  
                     $("#commentList").append($('<li class="collection-item avatar">' + + '</li>')
                         .append($('<img src="https://yt3.ggpht.com/-X8NM_peInU0/AAAAAAAAAAI/AAAAAAAAAAA/5YLtRwfY47Y/s88-c-k-no-mo-rj-c0xffffff/photo.jpg" alt="" class="circle"> '))
                         .append($('<span class="title">'+obj[i].memberId+'</span>'))
                         .append($('<time>'+js_yyyy_mm_dd_hh_mm_ss(obj[i].regDate)+'</time>'))
                         .append($('<p>'+obj[i].content+'</p>'))
                         .append($('<a class="waves-effect waves-light btn" onclick="onDelete('+obj[i].id+ ');" value='+obj[i].id+'>삭제</a>')));
                  }
                  else{
                     $("#commentList").append($('<li class="collection-item avatar">' + + '</li>')
                            .append($('<img src="https://yt3.ggpht.com/-X8NM_peInU0/AAAAAAAAAAI/AAAAAAAAAAA/5YLtRwfY47Y/s88-c-k-no-mo-rj-c0xffffff/photo.jpg" alt="" class="circle"> '))
                            .append($('<span class="title">'+obj[i].memberId+'</span>'))
                            .append($('<time>'+js_yyyy_mm_dd_hh_mm_ss(obj[i].regDate)+'</time>'))
                            .append($('<p>'+obj[i].content+'</p>')));
                  }

               }
                
                
                var lastPage = ${size/10+(1-(size/10%1))%1};
                 
                var last_block = Math.ceil(lastPage / 5);
   
               
                 //현재 블럭 구하기 
                 var n_block = Math.ceil(currentPage / 5);

                 //페이징의 시작페이지와 끝페이지 구하기
                 var s_page = (n_block - 1) * 5 + 1; // 현재블럭의 시작 페이지
                 var e_page = n_block * 5; // 현재블럭의 끝 페이지
            
            

                if(n_block != 1){
                       $("#pagination").append($('<li class="waves-effect"><a onclick="prevButton();"><i class="material-icons">chevron_left</i></a></li>'));
                   }
                
                for (var i = s_page; i <= e_page; i++){
                   if (i > lastPage)    break;
                   


      
                   if(page == i){
                      $("#pagination").append($(' <li class="waves-effect active"><a class="page" onclick="page('+i+');" value='+i+'>'+i+'</a></li>'));
                   }
                   else{
                      $("#pagination").append($(' <li class="waves-effect"><a class="page" onclick="page('+i+');" value='+i+'>'+i+'</a></li>'));
                   }
                }
                 
      
                if(n_block != last_block){
                  $("#pagination").append($('<li class="waves-effect"><a onclick="nextButton();"><i class="material-icons">chevron_right</i></a></li>')); 
                }
                 
            }
            
          
            });
     }
  
  function js_yyyy_mm_dd_hh_mm_ss (date) {
     
     now = new Date(date);
     year = "" + now.getFullYear();
     month = "" + (now.getMonth() + 1); if (month.length == 1) { month = "0" + month; }
     day = "" + now.getDate(); if (day.length == 1) { day = "0" + day; }
     hour = "" + now.getHours(); if (hour.length == 1) { hour = "0" + hour; }
     minute = "" + now.getMinutes(); if (minute.length == 1) { minute = "0" + minute; }
     second = "" + now.getSeconds(); if (second.length == 1) { second = "0" + second; }
     return year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second;
   }
  
  function prevButton(){
     var n_block = Math.ceil(currentPage / 5);

      //페이징의 시작페이지와 끝페이지 구하기
      var s_page = (n_block-1) * 5 -4 ; // 현재블럭의 시작 페이지
      page(s_page);
  }
  
  function nextButton(){
     var n_block = Math.ceil(currentPage / 5);

      //페이징의 시작페이지와 끝페이지 구하기
      var s_page = (n_block) * 5 + 1; // 현재블럭의 시작 페이지
      page(s_page);
  }

</script>