<%@ include file="header.jsp" %>
<div id="carouselExampleCaptions" class="carousel slide">
    <!-- <div class="carousel-indicators">
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="0"
          class="active"
          aria-current="true"
          aria-label="Slide 1"
        ></button>
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="1"
          aria-label="Slide 2"
        ></button>
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="2"
          aria-label="Slide 3"
        ></button>
      </div> -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="images/path6.jpg" class="d-block w-100" alt="..." />
          <div class="carousel-caption">
            <h5>testLife</h5>
            <p>City's Most trusted Lab ready to help you anytime with most flexible working hours. </p>
          </div>
        </div>
        <div class="carousel-item active">
          <img src="images/pregnant.jpg" class="d-block w-100" alt="..." />
          <div class="carousel-caption">
            <h5>Gynecology Checkup</h5>
            <p>testLife provides you full body pregnancy checkup at month to month baby monitoring.  </p>
          </div>
        </div>
        
        <div class="carousel-item">
          <img src="images/covid.jpg" class="d-block w-100" alt="..." />
          <div class="carousel-caption">
            <h5>Most trusted RTPCR Test </h5>
            <p>Here At testLife we assure you the most trusted Corona RTPCR Test with Rapid results.</p>
          </div>
        </div>
        <a href="allitems" class="link-underline-light link-dark link-underline-opacity-0 link-offset-3-hover link-offset-2">
        <div class="carousel-item">
          <img src="images/path4.jpg" class="d-block w-100" alt="..." />
          <div class="carousel-caption">
            <h5>Book Appointment Online</h5>
            <p>At testLife you can also book your respective test online , get flexible and urgent booking at  any time.So you can sit back at home and select your tests. </p>
          </div>
        </div>
        </a>
      </div>
      <!-- <button
        class="carousel-control-prev"
        type="button"
        data-bs-target="#carouselExampleCaptions"
        data-bs-slide="prev"
      >
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button
        class="carousel-control-next"
        type="button"
        data-bs-target="#carouselExampleCaptions"
        data-bs-slide="next"
      >
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button> -->
    </div>
    <div class="container">
      <h5 class="reviews">Customer reviews</h5>
      <div class="myclass">
        <div class="card" style="width: 18rem">
          <img src="images/women.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Women Health Checkup</h5>
            <p class="card-text">
              I recently had a full body check-up at [<a href="#" class="link-underline-opacity-0 link-underline-light">testLife</a>],The staff was incredibly friendly and attentive, which immediately put me at ease.The results were delivered promptly and in a clear, understandable manner. I felt fully informed about my health status and any necessary follow-up steps.They provide me my reports as early as I ask them everything is perfect. 
            </p>
            <p class="text-center">By <span class="fs-4 fw-4">Navika Chaudhary</span></p>
          </div>
        </div>
        <div class="card" style="width: 18rem">
          <img src="images/maternity.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Maternity weeks Checkups</h5>
            <p class="card-text">
            Booking a maternity test online through [<a href="#" class="link-underline-opacity-0 link-underline-light">testLife</a>] was an incredibly convenient and stress-free experience.The booking process was straightforward and user-friendly. I appreciated the ease of navigating their website and finding all the information. The ability to select the type of maternity test is fantastic and dateTime is also flexible .
            </p>   
            <p class="text-center">By <span class="fs-4 fw-4">Mrs.Jaya Gupta</span></p>         
          </div>
        </div>
        <div class="card" style="width: 18rem">
          <img src="images/men.jpg" class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Corona Test </h5>
            <p class="card-text">
             My experience with the COVID-19 testing at [<a href="#" class="link-underline-opacity-0 link-underline-light">testLife</a>] was nothing short of excellent.Booking an appointment was straightforward, and I appreciated the flexibility in choosing a date and time that suited my schedule. The online registration process was user-friendly.Safety measures were in place to ensure the health and well-being of everyone.
            </p>   
            <p class="text-center">By <span class="fs-4 fw-4">Anoop Kumar</span></p>         
          </div>
        </div>
      </div>
    </div>
    <script type="text/javascript">
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("carousel-item");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) {
            slideIndex = 1;
        }
        slides[slideIndex - 1].style.display = "block";
        setTimeout(showSlides, 6000); // Change image every 6 seconds (6000 milliseconds)
    }
    </script>

<%@ include file="footer.jsp" %>