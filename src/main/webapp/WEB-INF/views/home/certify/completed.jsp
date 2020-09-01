<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- ======= Header ======= -->
<header>
	<jsp:include page="/WEB-INF/views/home/include/header.jsp" />
</header> <!-- End Header -->

	<!-- ======= Clients Section ======= -->
	<section id="clients" class="clients section-bg">
		<div class="container">

			<div class="section-title" data-aos="fade-up">
				<h2>Clients</h2>
				<p>They trusted us</p>
			</div>
		</div>
	</section>
	<!-- End Clients Section -->
<!-- ======= Footer ======= -->
	<footer>
<%-- 		<jsp:include page="/WEB-INF/views/home/include/footer.jsp" /> --%>
		<%@include file="/WEB-INF/views/home/include/footer.jsp" %>
	</footer>
<!-- End Footer -->
</body>
</html>