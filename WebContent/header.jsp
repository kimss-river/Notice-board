<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	$('.carousel').carousel({
		interval : 500
	})
</script>
<div class=slide>
	<div class="bgGreyDark4"></div>
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="images/a.jpg" height="600px"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="https://cdn.pixabay.com/photo/2018/09/26/10/51/moon-3704285_960_720.jpg" height="600px"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="images/d.jpg" height="600px"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</div>
