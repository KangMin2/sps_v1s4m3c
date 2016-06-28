<%@ page contentType="text/html; charset=UTF-8" %>

<%
String root = request.getContextPath();
// out.println("root: " + root);
%>
<!-- 상단정보 -->
<div class='top_menu_list' >
  <div style="width:1100px; height:32px; margin:0 auto;">
     <!-- 상단로그인 -->
     <div id="top_menu_login">
       <ul>
         <li><a href='#'>로그인</a></li>
         <li><a href='#'>회원가입</a></li>
         <li><a href="#">오시는길</a></li>
         <li><a href="#">관리자</a></li>
       </ul>
     </div>
     <!-- 상단로그인 -->
  </div>
</div> 
<!-- 상단정보 --> 
<!-- 화면 상단 메뉴 --> 
<DIV id='top_menu'
        style="background-size: 100% 100%; background-image: url('<%=root %>/menu/images/top_image.jpg'); " >
  <DIV class='top_menu_label'>Camping blog 0.7</DIV>
  <NAV class='top_menu_list'>
    <A class='menu_link' href='<%=root %>/index.jsp'>HOME</A> |
    <%
    if (session.getAttribute("id") == null){
    %>
      <a class='menu_link' href='<%=root %>/member/login.do'>로그인</a> |
    <%
    }else{
    %>
      <a class='menu_link' href='<%=root %>/member/logout.do'>${id} 로그아웃</a> |     
    <%  
    }
    %>
    <A class='menu_link'  href='<%=root %>/notice/list.jsp'>공지사항</A> |
    <A class='menu_link'  href='<%=root %>/news/list.jsp'>여행 소식</A> |
    <A class='menu_link'  href='<%=root %>/url/list.jsp'>여행 URL</A> |
    <A class='menu_link'  href='<%=root %>/pdsv3/list.jsp'>Gallery</A> |
    <A class='menu_link'  href='#'>여행 일정</A> |
    <%
    if (session.getAttribute("act") == null){
    %>
      <a class='menu_link' href='<%=root %>/admin1/login_ck_form.jsp'>Admin</a> |
    <%
    }else{
    %>
      <a class='menu_link' href='<%=root %>/admin1/logout_proc.jsp'>Logout</a> |
      <a class='menu_link' href='<%=root %>/admin1/list.jsp'>관리자</a> |
      <a class='menu_link' href='<%=root %>/log/list.jsp'>Log</a> |
    <%
    }
    %>
    <A class='menu_link'  href='<%=root %>/index.jsp'>Blog</A> |
    <A class='menu_link'  href='<%=root %>/mweb/index.jsp'>Mobile</A> |
    <A class='menu_link'  href='<%=root %>/code/list.do'>코드관리</A> |
    <A class='menu_link'  href='<%=root %>/blogcategory/list.do'>게시판관리</A> |
    <A class='menu_link'  href='<%=root %>/member/list.do'>회원목록</A> |
  </NAV>
</DIV>




