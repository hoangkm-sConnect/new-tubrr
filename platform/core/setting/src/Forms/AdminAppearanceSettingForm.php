<?php

namespace Botble\Setting\Forms;

use Botble\Base\Facades\AdminAppearance;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Forms\Fields\GoogleFontsField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Setting\Http\Requests\AdminAppearanceRequest;

class AdminAppearanceSettingForm extends SettingForm
{
    public function setup(): void
    {
        parent::setup();

        $this
            ->setSectionTitle(trans('core/setting::setting.admin_appearance.title'))
            ->setSectionDescription(trans('core/setting::setting.admin_appearance.description'))
            ->setValidatorClass(AdminAppearanceRequest::class)
            ->add('admin_logo', MediaImageField::class, [
                'label' => trans('core/setting::setting.admin_appearance.form.admin_logo'),
                'value' => setting('admin_logo'),
            ])
            ->add('admin_favicon', MediaImageField::class, [
                'label' => trans('core/setting::setting.admin_appearance.form.admin_favicon'),
                'value' => setting('admin_favicon'),
            ])
            ->add('login_screen_backgrounds[]', 'mediaImages', [
                'label' => trans('core/setting::setting.admin_appearance.form.admin_login_screen_backgrounds'),
                'value' => is_array(setting('login_screen_backgrounds', ''))
                    ? setting('login_screen_backgrounds', '')
                    : json_decode(setting('login_screen_backgrounds', ''), true),
                'values' => setting('login_screen_backgrounds', []),
            ])
            ->add('admin_title', TextField::class, [
                'label' => trans('core/setting::setting.admin_appearance.form.admin_title'),
                'value' => setting('admin_title', config('app.name')),
                'attr' => [
                    'data-counter' => 120,
                ],
            ])
            ->add('admin_primary_font', GoogleFontsField::class, [
                'label' => trans('core/setting::setting.admin_appearance.form.primary_font'),
                'selected' => setting('admin_primary_font', 'Inter'),
            ])
            ->add('admin_primary_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.primary_color'),
                'value' => setting('admin_primary_color', '#206bc4'),
            ])
            ->add('admin_secondary_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.secondary_color'),
                'value' => setting('admin_secondary_color', '#6c7a91'),
            ])
            ->add('admin_heading_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.heading_color'),
                'value' => setting('admin_heading_color', 'inherit'),
            ])
            ->add('admin_text_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.text_color'),
                'value' => setting('admin_text_color', '#182433'),
            ])
            ->add('admin_link_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.link_color'),
                'value' => setting('admin_link_color', '#206bc4'),
            ])
            ->add('admin_link_hover_color', 'customColor', [
                'label' => trans('core/setting::setting.admin_appearance.form.link_hover_color'),
                'value' => setting('admin_link_hover_color', '#1a569d'),
            ])
            ->add('admin_locale_direction', 'customRadio', [
                'label' => trans('core/setting::setting.admin_appearance.form.admin_locale_direction'),
                'value' => setting('admin_locale_direction', 'ltr'),
                'values' => [
                    'ltr' => trans('core/setting::setting.locale_direction_ltr'),
                    'rtl' => trans('core/setting::setting.locale_direction_rtl'),
                ],
            ])
            ->add('rich_editor', 'customRadio', [
                'label' => trans('core/setting::setting.admin_appearance.form.rich_editor'),
                'value' => BaseHelper::getRichEditor(),
                'values' => BaseHelper::availableRichEditors(),
            ])
            ->add(AdminAppearance::getSettingKey('layout'), 'customRadio', [
                'label' => trans('core/setting::setting.admin_appearance.layout'),
                'value' => AdminAppearance::getCurrentLayout(),
                'values' => AdminAppearance::getLayouts(),
            ])
            ->add(AdminAppearance::getSettingKey('container_width'), 'customRadio', [
                'label' => trans('core/setting::setting.admin_appearance.container_width.title'),
                'value' => AdminAppearance::getContainerWidth(),
                'values' => AdminAppearance::getContainerWidths(),
            ])
            ->add('show_admin_bar', 'onOffCheckbox', [
                'label' => trans('core/setting::setting.admin_appearance.form.show_admin_bar'),
                'value' => setting('show_admin_bar', true),
            ])
            ->add(AdminAppearance::getSettingKey('show_menu_item_icon'), 'onOffCheckbox', [
                'label' => trans('core/setting::setting.admin_appearance.form.show_menu_item_icon'),
                'value' => AdminAppearance::showMenuItemIcon(),
            ])
            ->add('show_theme_guideline_link', 'onOffCheckbox', [
                'label' => trans('core/setting::setting.admin_appearance.form.show_guidelines'),
                'value' => setting('show_theme_guideline_link', false),
            ]);
    }
}
