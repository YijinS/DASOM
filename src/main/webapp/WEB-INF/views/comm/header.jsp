<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<div class="">
			<header>
				
				<div class="">
					<nav class="navbar navbar-expand-lg navbar-light bg-light">
					  <a class="navbar-brand" href="${pageContext.request.contextPath}/main.do">�ټ� ���׸���</a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>
					
					  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav mr-auto">
					     	    <c:choose>
             			  <c:when test="${empty sessionScope.admin }">
					  <!--     <li class="nav-item active">
					        <a class="nav-link" href="#">���ô� �� <span class="sr-only">(current)</span></a>
					      </li> -->
					      <li class="nav-item">
					        <a class="nav-link" href="${pageContext.request.contextPath }/direction.do">���ô� ��</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="${pageContext.request.contextPath }/portpolio.do">�ð�����</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="#">�ð��ı�</a>
					      </li>
					      <li class="nav-item">
					        <a class="nav-link" href="${pageContext.request.contextPath }/couns.do">��������</a>
					      </li>
					      </c:when>
			               <c:otherwise>
			                  <c:choose>
			                        <c:when test="${sessionScope.admin.id eq 'root' }">
			                         <li class="nav-item"><a class="nav-link" href="#">������ ��</a></li>
			                         <li class="nav-item"><a class="nav-link"
			                   			  href="${pageContext.request.contextPath }/logout">�α׾ƿ�</a></li>
			                        </c:when>
			                  </c:choose>
			               </c:otherwise>
           				 </c:choose>
					    </ul>
					    <form class="form-inline my-2 my-lg-0">
					      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
					      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
					    </form>
					  </div>
					</nav>
				</div>
			</header>
			</div>