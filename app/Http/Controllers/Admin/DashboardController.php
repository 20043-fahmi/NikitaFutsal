<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Transaction;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth.admin');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $index = DB::table('transactions')
            ->JOIN('transaction_types', 'transactions.transaction_type_id', '=', 'transaction_types.id')
            ->WHERE('is_valid', '=', 1)
            ->get(['order_id', 'name', 'amount', 'transactions.created_at', 'proof_file']);

        // Income
        $day = Carbon::now();
        // $aDay = DB::table('transactions')->WHERE('created_at', '>=', Carbon::now()->subdays(1))->SUM('amount');
        $aDay = DB::table('transactions')
            ->WHERE([
                ['created_at', '>=', $day,],
                ['is_valid', '=', 1],
            ])->SUM('amount');
        // where('created_at','>=',Carbon::now()->subdays(1))->get(['name','created_at']);
        $sevenDay = Carbon::now()->month(7)->startOfDay();
        $month = DB::table('transactions')->WHERE('created_at', '<=', Carbon::now()->subdays(30))->WHERE('is_valid', '=', 1)->SUM('amount');
        $income = DB::table('transactions')->WHERE('is_valid', '=', 1)->SUM('amount');
        // return view('admin.dashboard.index', dd($index, $income, $month, $aDay));
        return view('admin.dashboard.index', compact('index', 'income', 'month', 'aDay'));
    }

    public function create()
    {
    }
}
