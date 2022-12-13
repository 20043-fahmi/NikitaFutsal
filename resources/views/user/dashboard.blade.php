@extends('theme.theme')
@section('title','Booking Online Futsal')
@section('content')

{{-- Mainpage Content --}}
{{-- Slider --}}
{{-- <div id="slider" class="my-3">
    <div class="swiper-container h-36 md:h-64">
        <!-- Additional required wrapper -->
        <div class="swiper-wrapper">
            <!-- Slides -->
            <div class="swiper-slide">
                <img src="{{ asset('images/banner/banner-1.png') }}" class="object-cover h-36 md:h-64 w-full rounded"
                    alt="">
            </div>
            <div class="swiper-slide">
                <img src="{{ asset('images/banner/banner-2.png') }}" class="object-cover h-36 md:h-64 w-full rounded"
                    alt="">
            </div>
        </div>
    </div>
</div> --}}

<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="true">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active overflow-hidden">
        <div class="dark">
          <img src="images/Carousel1.png" class="d-block img-carousel w-100" alt="...">
          <div class="centered">
              @include('asset.buttonJTR')
          </div>
        </div>
        <div class="carousel-caption d-none d-md-block">
          <h5 class="overflow-hidden">Futsal First</h5>
          <p>Lepaskan penat mingguan, kumpul di Nikita!</p>
        </div>
      </div>
      <div class="carousel-item overflow-hidden">
        <div class="dark">
          <img src="images/Carousel2.png" class="d-block img-carousel w-100" alt="...">
          <div class="centered">
            @include('asset.buttonJTR')
          </div>
        </div>
        <div class="carousel-caption overflow-hidden">
          <h5 class="overflow-hidden">Fasilitas Lengkap</h5>
          <p>Nikita Futsal memiliki semua perlengkapan yang kalian perlukan</p>
        </div>
      </div>
      <div class="carousel-item overflow-hidden">
        <div class="dark">
          <img src="images/Carousel.png" class="d-block img-carousel w-100" alt="...">
          <div class="centered">
            @include('asset.buttonJTR')
          </div>
        </div>
        <div class="carousel-caption d-none d-md-block">
          <h5 class="overflow-hidden">Jadi Messi atau Ronaldo?</h5>
          <p>Tunggu apa lagi? Buruan booking lapangan di Nikita Futsal Magelang!</p>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <!-- {{-- End Carousel --}} -->
  
{{-- End of Slider --}}
<div class="produck-dashboard" id="Booking">
  <h1 class="text-md text-dark font-semibold border-b-2 pb-3 " >Booking Now!</h1>
  <div class="my-3 grid grid-flow-row grid-cols-1 md:grid-cols-3 gap-4 auto-rows-max ">
      @foreach ($futsal_fields as $field)
      <x-product-card :field="$field" />
      @endforeach
  </div>
</div>

@endsection

@section('css')
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
@endsection
@section('js')
{{-- <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper-container', {
        // Optional parameters
        direction: 'horizontal',
        loop: true,
        autoplay: true,
        delay : 2000,
        });
</script> --}}
@endsection