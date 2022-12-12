<nav class="navbar navbar-expand-lg navbg fixed-top" id="navbar">
    <div class="container container-navbar">
      <a class="navbar-brand navbar-dark {{request()->routeIs('app.transaction.*') || request()->routeIs('app.transaction') ? 'active' : null }}" id="logo" href="#">Nikita Futsal</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active navbar-dark {{request()->routeIs('app') ? 'active' : null }}" aria-current="page" href="{{route('app')}}" > <p id="navfont">Home</p> </a>
          </li>
          @auth          
          <li class="nav-item">
            <a class="nav-link active navbar-dark {{request()->routeIs('app.transaction.*') || request()->routeIs('app.transaction') ? 'active' : null }}" href="{{route('app.transaction')}}">
                {{-- <i class="fas fa-xl fa-receipt text-xl"></i> --}}
               <p id="navfont">Transaction</p> 
            </a>
          </li>
          
          <li class="nav-item">
            {{-- <a href="#exampleModal" data-bs-toggle="modal" class="nav-link active navbar-dark {{request()->routeIs('app.profile') ? 'active' : null }}"> --}}

            <a href="{{route('app.profile')}}" class="nav-link active navbar-dark {{request()->routeIs('app.profile') ? 'active' : null }}">
                {{-- <i class="fas fa-xl fa-user text-xl"></i> --}}
                <p class="navfont"> Profile</p>
            </a>
          </li>
        </ul>
        @else
            <a id="navfont" href="{{route('login')}}"
            class="nav-link active navbar-dark {{request()->routeIs('login') ? 'active' : (request()->routeIs('register') ? 'active' : null) }}">
            <i class="fas fa-xl fa-sign-in-alt text-xl"></i>
            Login
            </a>
          @endauth
      </div>
    </div>
</nav>
