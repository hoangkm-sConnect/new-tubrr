<?php

namespace Botble\Setting\Http\Controllers;

use Botble\Base\Http\Controllers\BaseSystemController;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Setting\Forms\CacheSettingForm;
use Botble\Setting\Http\Controllers\Concerns\InteractsWithSettings;
use Botble\Setting\Http\Requests\CacheSettingRequest;

class CacheSettingController extends BaseSystemController
{
    use InteractsWithSettings;

    public function edit()
    {
        $this->pageTitle(trans('core/setting::setting.cache.title'));

        return CacheSettingForm::create()->renderForm();
    }

    public function update(CacheSettingRequest $request): BaseHttpResponse
    {
        return $this->performUpdate($request->validated());
    }
}
