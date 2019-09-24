<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<div class="">
   <header>

      <div class="header_fix">
         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/main.do">다솜 인테리어</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
               data-target="#navbarSupportedContent"
               aria-controls="navbarSupportedContent" aria-expanded="false"
               aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
               <ul class="navbar-nav mr-auto">
                  <c:choose>
                     <c:when test="${empty sessionScope.admin }">
                        <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath }/direction.do">오시는 길</a></li>
                        <li class="nav-item"><a class="nav-link"  href="${pageContext.request.contextPath }/portpolio.do" href="#">포트폴리오</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/couns.do">시공후기</a>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/faq.do">자주 묻는 질문</a>
                        <li class="nav-item form"><a class="nav-link" href="https://form.office.naver.com/form/responseView.cmd?formkey=MjY2OTkwMjAtYTlkYy00YmU3LTlkMGQtMjUzMGNkMmE3NTcy&sourceId=urlshare"  target="_blank">견적문의</a></li>
                       
                     </c:when>
                     <c:otherwise>
                        <c:choose>
                           <c:when test="${sessionScope.admin.id eq 'root' }">
                              <li class="nav-item"><a class="nav-link" href="#">관리자
                                    님</a></li>
                              <li class="nav-item"><a class="nav-link"
                                 href="${pageContext.request.contextPath }/logout">로그아웃</a></li>
                           </c:when>
                        </c:choose>
                     </c:otherwise>
                  </c:choose>
               </ul>
              <a href="tel:010-2385-4597"><img src="resources/images/phone.svg" alt="전화하기" style="width: 25px; height: 25px;"></a>
            </div>
         </nav>
      </div>
   </header>
</div>