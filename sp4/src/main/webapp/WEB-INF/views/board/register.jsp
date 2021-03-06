<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="../includes/header.jsp" %>

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Board register Page</h1>
          
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Register</h6>
            </div>
            <div class="card-body">
            
            <form class="user" action="/board/register"  method="post">
                <div class="form-group ">
                    <input name="title" type="text" class="form-control form-control-user"  placeholder="Title">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" name="content" placeholder="Content">
                </div>
                <div class="form-group ">
               
                    <input type="text" class="form-control form-control-user" name="writer" placeholder="Writer">
                  </div>
              
                
                <button class="btn btn-primary ">Submit</button>
                
                
                <hr>
              </form>
              
           		<a href="/board/list" class="btn btn-secondary">
                  Go to List
                </a>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
        
 
 <script>
 
 var flag = '${result}';
 
 if(flag === 'success'){
	 alert("작업이 성공했습니다.");
 }
 
 
 </script>
         
<%@include file="../includes/footer.jsp" %>


 
</body>
</html>