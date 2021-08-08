<?php
namespace App\Helpers;

use App\Models\TransLogApi;

class CreateApiLog
{
    ############## START LOG API ##############
    public static function writeLogSave($request, $apiName, $user)
    {
        $modelSave = new TransLogApi();
        $modelSave->url = $request->url();
        $modelSave->api_name = $apiName;
        $modelSave->endpoint = $request->url();
        $modelSave->method = $request->method();
        $modelSave->user = $user;
        $modelSave->request = json_encode($request->all());
        $modelSave->request_time = date("Y-m-d H:i:s");
        $modelSave->created_at = date("Y-m-d H:i:s");
        $modelSave->updated_at = date("Y-m-d H:i:s");
        $modelSave->save();

        return $modelSave->id;
	}
	
    public static function writeLogUpdate($response, $responseCode, $saveLog)
    {
        $modelUpdate = TransLogApi::find($saveLog);
        $modelUpdate->response = json_encode($response);
        //$modelUpdate->api_response_id = '';
        $modelUpdate->response_code = $responseCode;
        //$modelUpdate->message = '';
        $modelUpdate->response_time = date("Y-m-d H:i:s");
        $modelUpdate->http_coderesponse = $responseCode;
        //$modelUpdate->http_msgresponse = '';
        //$modelUpdate->keterangan = '';
        $modelUpdate->updated_at = date("Y-m-d H:i:s");
        $modelUpdate->update();
    }
    ############## END LOG API ##############
}