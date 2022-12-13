<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset("css/app.css")}}">
    <link rel="stylesheet" href="{{asset("css/appku.css")}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    @yield('css')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <title>Nikita Futsal - @yield('title')</title>
</head>

<body class="body">
    {{-- Navbar --}}
    @include('theme.navbar')
    {{-- End Navbar --}}
    <div class="mx-auto rounded-md overflow-hidden">
        {{-- min-h-screen --}}
        {{-- Content --}}
        <div id="content" class="relative">
            {{-- Content --}}

                @yield('content')
            
            {{-- End of Content --}}
        </div>
    </div>
{{-- Footer --}}

    {{-- <footer id="footer" class="align-items-center border-top" style="bottom: 0 !important; clear: both; position: relative;">
        <div>
            <p class="">&copy; 2022 Nikita Futsal</p>
        </div>
    </footer> --}}
{{-- 
    <div class=" footer align-items-center border-top" style="bottom: 0px; position:relative; width:100%;">
        Goblog
    </div> --}}
    @include('theme.footer')

{{-- End of Footer --}}


    {{-- <script src="{{asset("js/appku.js")}}"></script> --}}
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    {{-- Font Awesome --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
        integrity="sha512-RXf+QSDCUQs5uwRKaDoXt55jygZZm2V++WUZduaU/Ui/9EGp3f/2KZVahFZBKGH0s774sd3HmrhUy+SgOFQLVQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    {{-- Sweetalert2 --}}
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    <script>
        let toastr = (type, msg, btn=null)=>{
            Swal.fire({
                icon : type,
                html : msg,
                showConfirmButton : (btn == null ? false : true),
                confirmButtonText : btn,
            })
        }
    </script>
    <script>
        $(document).ready(function(){
            let isNotifOpen = false;
            $('#btn-notification').click(function(){
                if(!isNotifOpen){
                    $(this).addClass('text-primary').removeClass('text-gray-400');
                    $('#notification-card').removeClass('hidden');
                }else{
                    $(this).removeClass('text-primary').addClass('text-gray-400');
                    $('#notification-card').addClass('hidden');
                }
                isNotifOpen = !isNotifOpen;
            })
        })
    </script>
    @yield('js')
    @if ($msg = session()->get('success'))
    <script>
        toastr('success', `{{ $msg }}`);
    </script>
    @elseif ($msg = session()->get('errors'))
    <script>
        toastr('error', `{!! $msg !!}`,`Saya Paham`);
    </script>
    @endif
</body>

</html>
