<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">
.body{
  margin: 0px auto;
}


.map-container-2{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
  }
  .map-container-2 iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
  }
  .generic p {
    display: block;
    font-size: 28px;
    text-align: center;
    color: #3E3735;
    font-family: "Montserrat";
    font-weight: 600;
    line-height: 1.3em;
    margin: 4px 0;
}

.generic img {
    width: 150px;
    height: 120px;
    object-fit: scale-down;
    margin: auto;
    vertical-align: middle;

}
.sd{
  margin-top: 50px;
    margin-bottom: 50px;
padding: 20px;
margin-block-end: 20px;
margin-bottom: 20px;

height: auto;
    max-width: 100%;
    border: none;
    border-radius: 0;
    box-shadow: none;
}
.line6{
margin-bottom: 30px;
}
.title2{
  margin-bottom: 30px;
}

.container2{
  padding: 30px 0px 0px 0px;
  margin-block-end: 20px;
margin-bottom: 20px;
height: 100%;
width: 100%;
}
.section1{
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  --widgets-spacing: 20px 20px;
}
.default1{
  text-align: center;
  --swiper-theme-color: #FFFF;
    --swiper-navigation-size: 44px;
    --swiper-pagination-bullet-size: 6px;
    --swiper-pagination-bullet-horizontal-gap: 6px;
    position: relative;
    display: inline-block;
    width: 100%;
    vertical-align: top;
    
}
.imgs{
  font-size: 50px;
  color: #FFFF;
  font-family: Sarabun,sans-serif;
    font-weight: 700;
    letter-spacing: -.01em;
}
/*  */



.lkh2{
  --widgets-spacing: 20px 20px;
}
.ic{
  text-align: center;
    padding-top: 15px;
    padding-bottom: 15px;
  text-align: center;
  width: 30px;
  height: 30px;
}
</style>
</head>

<body>
    <section>
    <div class="container px-lg-5" style="background-color: #F4F4F4;">
        <div class="row mx-lg-n5">
            <div class="col py-3 px-lg-5">
                <div class="elementor-widget-container">
                    <div class="lh1">
                        <h2 class="qodef-m-title">
                            Liên hệ </h2>
                        <p class="qodef-m-text" style="margin-top: 27px">CÔNG TY TNHH THƯỜNG NHẬT (SAIGON WATERBUS)

                        </p>
                    </div>
                </div>
                <div class="lh2">
                    <div class="tongdai">
                        <div class="lh3">
                            <div class="sdt">
                                <h6>
                                    Tổng đài hỗ trợ </h6>
                                <h2 class="phone"> <a itemprop="telephone" href="tel:1900636830">
                                        1900636830 </a>
                                </h2>
                            </div>
                            <div class="dc">
                                <div class="diachi">
                                    <h6>
                                        Địa chỉ văn phòng </h6>
                                    <h5 class="vp"> 6 Phan Kế Bính, Phường Đa Kao, Quận 1, TP.HCM
                                    </h5>
                                </div>
                                <div class="email">
                                    <h6>
                                        Email </h6>
                                    <h5 class="gmail"> <a itemprop="email"
                                            href="mailto:info@saigonwaterbus.com">
                                            info@saigonwaterbus.com </a>
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col py-3 px-lg-5">
                <form style="width: 26rem;">
                    <!-- Name input -->
                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="text" id="form4Example1" class="form-control" />
                        <label class="form-label" for="form4Example1">Name</label>
                    </div>

                    <!-- Email input -->
                    <div data-mdb-input-init class="form-outline mb-4">
                        <input type="email" id="form4Example2" class="form-control" />
                        <label class="form-label" for="form4Example2">Email address</label>
                    </div>

                    <!-- Message input -->
                    <div data-mdb-input-init class="form-outline mb-4">
                        <textarea class="form-control" id="form4Example3" rows="4"></textarea>
                        <label class="form-label" for="form4Example3">Message</label>
                    </div>

                    

                    <!-- Submit button -->
                    <button data-mdb-ripple-init type="button" class="btn btn-primary btn-warning btn-block mb-4">Send message</button>
                </form>
            </div>
        </div>
    </div>
</section>
<section class="text-center">
    <div class="elementor-widget elementor-widget-google_maps" data-id="06a8538" data-element_type="widget">
        <div class="container2">
            <style>
                .elementor-widget-google_maps iframe {
                    height: 500px;
                    width: 1000px;
                    line-height: 80px;
                    margin: 0px auto;
                }
            </style>
            <div class="elementor-custom-embed">
                <iframe loading="lazy"
                    src="https://www.google.com/maps/embed/v1/place?key=AIzaSyApv_fvxEnhavVgASRgfrQLs8hGLt6k7Io&amp;q=%20Saigon%20Waterbus%20Station%2C%2010B%20T%C3%B4n%20%C4%90%E1%BB%A9c%20Th%E1%BA%AFng&amp;zoom=15"
                    title=" Saigon Waterbus Station, 10B Tôn Đức Thắng"
                    aria-label=" Saigon Waterbus Station, 10B Tôn Đức Thắng"></iframe>
            </div>
        </div>
    </div>
</section>
    <script src="https://kit.fontawesome.com/8a355c8929.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>

</html>