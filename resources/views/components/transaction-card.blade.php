
<div class="wrapper">
<div class="container">
<div class="card-transaction">
    {{-- Header --}}
    <div class="card-header">
        <h2 class="text-xl font-bold text-gray-600">{{ $order->futsal_field->name }}</h2>
    </div>
    {{-- Description --}}
    <div>
        <div class="flex justify-between items-center" >
            <p class="font-medium"> Jadwal </p>
            <p class="my-1 text-gray-500 text-sm-end fs-2px p-padding text-right font-medium" style="margin-top: auto; margin-bottom:auto; padding-left:2rem"><i class="fas fa-xs fa-calendar"></i> {{$schedule}} </p>
        </div>
        <div class="flex justify-between items-center">
            <p class="font-medium"> Waktu </p>
            <p class="my-1 text-gray-500 text-sm-end fs-2px text-right font-medium" style="margin-top: auto; margin-bottom:auto; padding-left:4rem">
                <i class="fas fa-xs fa-clock"></i> {{$timeStart}} - {{ $timeEnd }} ({{ $order->hours }} jam)
            </p>
        </div>
        <div class="">
            <p class="font-medium"> Status </p>
            <span class="">
                <p class=" text-center py-1 px-3 text-white text-xs font-medium {{ $order->status_transaction->color }} rounded-md">
                    {{ $order->status_transaction->name_user }}
                </p>
            </span>
        </div>
        <div class="flex justify-between items-center">
            <p class="font-medium">
                Total
            </p>
            <p class="text-indigo-500 font-bold">
                Rp. {{ number_format($order->price*$order->hours) }}
            </p>
        </div>       
    </div>
    {{-- Footer --}}
    <div class="card-footer">
        <div class="flex-auto">
            <a href="{{ url("transaction/order/{$order->id}") }}" class="btn-primary block">Transaksi</a>
        </div>
    </div>
</div>
</div> 
</div>