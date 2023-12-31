<?php

namespace Botble\Base\Forms\Fields;

use Botble\Base\Facades\Assets;
use Botble\Base\Forms\FormField;

class ColorField extends FormField
{
    protected function getTemplate(): string
    {
        Assets::addScripts(['coloris'])
            ->addStyles(['coloris']);

        return 'core/base::forms.fields.color';
    }
}
