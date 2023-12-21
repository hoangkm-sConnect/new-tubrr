<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Page\Models\Page;
use Botble\Theme\Database\Traits\HasThemeOptionSeeder;
use Carbon\Carbon;

class ThemeOptionSeeder extends BaseSeeder
{
    use HasThemeOptionSeeder;

    public function run(): void
    {
        $this->createThemeOptions([
            'site_title' => 'Just another Botble CMS site',
            'seo_description' => 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',
            'copyright' => sprintf('©%s Your Company. All right reserved.', Carbon::now()->year),
            'favicon' => $this->filePath('general/favicon.png'),
            'logo' => $this->filePath('general/logo.png'),
            'website' => 'https://botble.com',
            'contact_email' => 'support@company.com',
            'site_description' => 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',
            'phone' => '+(123) 345-6789',
            'address' => '214 West Arnold St. New York, NY 10002',
            'cookie_consent_message' => 'Your experience on this site will be improved by allowing cookies ',
            'cookie_consent_learn_more_url' => '/cookie-policy',
            'cookie_consent_learn_more_text' => 'Cookie Policy',
            'homepage_id' => Page::query()->value('id'),
            'blog_page_id' => Page::query()->skip(1)->value('id'),
            'primary_color' => '#AF0F26',
            'primary_font' => 'Roboto',
            'social_links' => [
                [
                    [
                        'key' => 'social-name',
                        'value' => 'Facebook',
                    ],
                    [
                        'key' => 'social-icon',
                        'value' => 'fab fa-facebook',
                    ],
                    [
                        'key' => 'social-url',
                        'value' => 'https://facebook.com',
                    ],
                ],
                [
                    [
                        'key' => 'social-name',
                        'value' => 'Twitter',
                    ],
                    [
                        'key' => 'social-icon',
                        'value' => 'fab fa-twitter',
                    ],
                    [
                        'key' => 'social-url',
                        'value' => 'https://twitter.com',
                    ],
                ],
                [
                    [
                        'key' => 'social-name',
                        'value' => 'Youtube',
                    ],
                    [
                        'key' => 'social-icon',
                        'value' => 'fab fa-youtube',
                    ],
                    [
                        'key' => 'social-url',
                        'value' => 'https://youtube.com',
                    ],
                ],
            ],
        ]);
    }
}
