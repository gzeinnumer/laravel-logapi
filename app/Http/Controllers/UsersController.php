<?php

namespace App\Http\Controllers;

use App\Helpers\CreateApiLog;
use App\Models\UsersModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Response;

class UsersController extends Controller
{
    public function store(Request $request){
        $userId = 1;

        $saveLog = CreateApiLog::writeLogSave($request , 'store', $userId);
        try{
            
            DB::beginTransaction();
            
            UsersModel::create($request->all());

            DB::commit();

            $response = array(
                'message' => "Success Save Data",
                'status' => "0",
            );
            
            CreateApiLog::writeLogUpdate($response, 200, $saveLog);
            return response()->json($response);
        } catch (\Exception $e) {
            DB::rollback();
            $response = array(
                'warning' => $e->getMessage(),
                'message' => "Gagal Save Data",
                'status' => "0",
            );
            CreateApiLog::writeLogUpdate($response, 500, $saveLog);
            return response()->json($response);
        }
    }
}
