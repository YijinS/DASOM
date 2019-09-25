<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.page-display{
    text-align: center;
}

.paginate_common{
    text-align: center;
    width: 300px;
    display: inline-block;
}
.couns_body{
    margin-top: 30px;
    margin-bottom: 160px;
}

.eclips{ 
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  text-align: left; 
  display: inline-block;
  width: 600px;
  }
  
.container1{border-color: white;}

.pagination{justify-content: center;}
</style>
		<!-- 페이지네이션 시작  -->
		<div class="container1">
			<div class="row">
				<div class="col">
					<ul class="pagination">
						<c:choose>
							<c:when test="${startPageNum ne 1 }">
								<li class="page-item"><a class="page-link"
									href="list?pageNum=${startPageNum-1 }"> &laquo; </a></li>
							</c:when>
							<c:otherwise>
								<li class="disabled page-item"><a class="page-link"
									href="javascript:">&laquo;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }"
							step="1">
							<c:choose>
								<c:when test="${i eq pageNum }">
									<li class="active page-item"><a class="page-link"
										href="list?pageNum=${i }">${i }</a></li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link"
										href="list?pageNum=${i }">${i }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						<c:choose>
							<c:when test="${endPageNum lt totalPageCount }">
								<li class="page-item"><a class="page-link"
									href="list?pageNum=${endPageNum+1 }"> &raquo; </a></li>
							</c:when>
							<c:otherwise>
								<li class="disabled page-item"><a class="page-link"
									href="javascript:">&raquo;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
		
	<!-- 페이지네이션 끝 -->