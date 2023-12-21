<?php

namespace Database\Seeders;

use Botble\Base\Supports\BaseSeeder;
use Botble\Blog\Database\Traits\HasBlogSeeder;
use Botble\Blog\Models\Category;
use Botble\Menu\Database\Traits\HasMenuSeeder;
use Botble\Page\Database\Traits\HasPageSeeder;
use Botble\Page\Models\Page;

class MenuSeeder extends BaseSeeder
{
    use HasMenuSeeder;
    use HasPageSeeder;
    use HasBlogSeeder;

    public function run(): void
    {
        $data = [
            [
                'name' => 'Main menu',
                'slug' => 'main-menu',
                'location' => 'main-menu',
                'items' => [
                    [
                        'title' => 'Home',
                        'url' => '/',
                    ],
                    [
                        'title' => 'Purchase',
                        'url' => 'https://botble.com/go/download-cms',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'Blog',
                        'reference_id' => $this->getPageId('Blog'),
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Galleries',
                        'reference_id' => $this->getPageId('Galleries'),
                        'reference_type' => Page::class,
                    ],
                    [
                        'title' => 'Contact',
                        'reference_id' => $this->getPageId('Contact'),
                        'reference_type' => Page::class,
                    ],
                ],
            ],

            [
                'name' => 'Featured Categories',
                'slug' => 'featured-categories',
                'items' => [
                    [
                        'title' => 'Lifestyle',
                        'reference_id' => $this->getCategoryId('Lifestyle'),
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Travel Tips',
                        'reference_id' => $this->getCategoryId('Travel Tips'),
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Healthy',
                        'reference_id' => $this->getCategoryId('Healthy'),
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Hotel',
                        'reference_id' => $this->getCategoryId('Hotel'),
                        'reference_type' => Category::class,
                    ],
                    [
                        'title' => 'Nature',
                        'reference_id' => $this->getCategoryId('Nature'),
                        'reference_type' => Category::class,
                    ],
                ],
            ],

            [
                'name' => 'Social',
                'slug' => 'social',
                'items' => [
                    [
                        'title' => 'Facebook',
                        'url' => 'https://facebook.com',
                        'icon_font' => 'fab fa-facebook',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'Twitter',
                        'url' => 'https://twitter.com',
                        'icon_font' => 'fab fa-twitter',
                        'target' => '_blank',
                    ],
                    [
                        'title' => 'GitHub',
                        'url' => 'https://github.com',
                        'icon_font' => 'fab fa-github',
                        'target' => '_blank',
                    ],

                    [
                        'title' => 'Linkedin',
                        'url' => 'https://linkedin.com',
                        'icon_font' => 'fab fa-linkedin',
                        'target' => '_blank',
                    ],
                ],
            ],
        ];

        $this->createMenus($data);
    }
}
