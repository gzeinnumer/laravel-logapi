# laravel-logapi

* `routes/api.php`
```php
use App\Http\Controllers\UsersController;
Route::post('/store',[UsersController::class, 'store']);
```

* [CreateApiLog.php](https://github.com/gzeinnumer/laravel-logapi/blob/master/app/Helpers/CreateApiLog.php)
* [TransLogApi.php](https://github.com/gzeinnumer/laravel-logapi/blob/master/app/Models/TransLogApi.php)

---

```
Copyright 2021 M. Fadli Zein
```