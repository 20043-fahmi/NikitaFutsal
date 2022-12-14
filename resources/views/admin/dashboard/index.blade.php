@extends('layouts.app', [
'namePage' => 'Dashboard',
'class' => 'login-page sidebar-mini ',
'activePage' => 'home',
'backgroundImage' => asset('now') . "/img/bg14.jpg",
])
@section('title','Dashboard')
@section('content')
<div class="panel-header panel-header-sm">
</div>
<div class="content">
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <p class="lead">Pendapatan Hari Ini</p>
                    <p class="h4">Rp. {{$aDay}}</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <p class="lead">Total Pendapatan</p>
                    <p class="h4">Rp. {{$income}}</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <p class="lead">Pendapatan Bulan Ini</p>
                    <p class="h4">Rp. {{$month}}</p>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="d-flex align-items-center justify-content-between">
                        <div class="card-title">
                            Transaksi Valid
                        </div>
                        <a href="#" data-toggle="modal" data-target="#modalFilter" class="btn btn-round btn-primary">
                            <i class="fas fa-filter"></i> Filter
                        </a>
                    </div>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="tbl-orders">
                            <thead>
                                {{-- <th></th> --}}
                                <th>Order ID</th>
                                <th>Jenis Transaksi</th>
                                <th>Jumlah Transaksi</th>
                                <th>Bukti Pembayaran</th>
                                <th>TimeStamp</th>
                            </thead>
                            <tbody>
                                @foreach ($index as $idx)
                                <tr>
                                    {{-- <td>
                                        <a href="#" class="btn btn-round btn-info" title="Lihat Detail">
                                            <i class="fas fa-eye"></i>
                                        </a>
                                    </td> --}}
                                    <td><a href="#">#{{$idx ->order_id }}</a></td>
                                    <td><span class="badge badge-info">{{$idx->name}}</span></td>
                                    <td>Rp. {{$idx->amount }}</td>
                                    {{-- <td><img src="{{asset('public/images/carousel.png')}}" alt=""> </td> --}}
                                    <td><a href="{{ asset($idx->proof_file) }}" target="_blank">Lihat</a></td>
                                    <td>{{$idx->created_at}} WIB</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
<style>
    #tbl-orders thead th {
        font-size: 12px !important;
        color: #000 !important;
    }
</style>
@endpush
@push('js')
<script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
<script>
    $('#tbl-orders').DataTable();
</script>
@endpush
