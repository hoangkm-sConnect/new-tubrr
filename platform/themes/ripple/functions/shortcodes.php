<?php

use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\Fields\NumberField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Models\BaseQueryBuilder;
use Botble\Blog\Models\Category;
use Botble\Shortcode\Compilers\Shortcode as ShortcodeCompiler;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Shortcode\Forms\ShortcodeForm;
use Botble\Theme\Facades\Theme;
use Botble\Theme\Supports\ThemeSupport;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Support\Arr;

app()->booted(function () {
    ThemeSupport::registerGoogleMapsShortcode();
    ThemeSupport::registerYoutubeShortcode();

    if (is_plugin_active('blog')) {
        Shortcode::setPreviewImage('blog-posts', Theme::asset()->url('images/ui-blocks/blog-posts.png'));

        Shortcode::register(
            'featured-posts',
            __('Featured posts'),
            __('Featured posts'),
            function (ShortcodeCompiler $shortcode) {
                $posts = get_featured_posts((int)$shortcode->limit ?: 5, [
                    'author',
                    'categories' => function ($query) {
                        $query->limit(1);
                    },
                ]);

                return Theme::partial('shortcodes.featured-posts', compact('posts'));
            }
        );

        Shortcode::setAdminConfig('featured-posts', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->add('limit', NumberField::class, TextFieldOption::make()->label(__('Limit'))->toArray());
        });

        Shortcode::setPreviewImage('featured-posts', Theme::asset()->url('images/ui-blocks/featured-posts.png'));

        Shortcode::register(
            'recent-posts',
            __('Recent posts'),
            __('Recent posts'),
            function (ShortcodeCompiler $shortcode) {
                $posts = get_latest_posts(7, [], ['slugable']);

                return Theme::partial('shortcodes.recent-posts', ['title' => $shortcode->title, 'posts' => $posts]);
            }
        );

        Shortcode::setPreviewImage('recent-posts', Theme::asset()->url('images/ui-blocks/recent-posts.png'));

        Shortcode::setAdminConfig('recent-posts', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->add('title', TextField::class, [
                    'label' => __('Title'),
                ]);
        });

        Shortcode::register(
            'featured-categories-posts',
            __('Featured categories posts'),
            __('Featured categories posts'),
            function (ShortcodeCompiler $shortcode) {
                $with = [
                    'slugable',
                    'posts' => function (BelongsToMany|BaseQueryBuilder $query) {
                        $query
                            ->wherePublished()
                            ->orderByDesc('created_at');
                    },
                    'posts.slugable',
                ];

                if (is_plugin_active('language-advanced')) {
                    $with[] = 'posts.translations';
                }

                $posts = collect();

                if ($categoryId = $shortcode->category_id) {
                    $with['posts'] = function (BelongsToMany|BaseQueryBuilder $query) {
                        $query
                            ->wherePublished()
                            ->orderByDesc('created_at')
                            ->take(6);
                    };

                    $category = Category::query()
                        ->with($with)
                        ->wherePublished()
                        ->where('id', $categoryId)
                        ->select([
                            'id',
                            'name',
                            'description',
                            'icon',
                        ])
                        ->first();

                    if ($category) {
                        $posts = $category->posts;
                    } else {
                        $posts = collect();
                    }
                } else {
                    $categories = get_featured_categories(2, $with);

                    foreach ($categories as $category) {
                        $posts = $posts->merge($category->posts->take(3));
                    }

                    $posts = $posts->sortByDesc('created_at');
                }

                return Theme::partial(
                    'shortcodes.featured-categories-posts',
                    ['title' => $shortcode->title, 'posts' => $posts]
                );
            }
        );

        Shortcode::setPreviewImage(
            'featured-categories-posts',
            Theme::asset()->url('images/ui-blocks/featured-categories-posts.png')
        );

        Shortcode::setAdminConfig('featured-categories-posts', function (array $attributes) {
            $categories = Category::query()
                ->wherePublished()
                ->select('name', 'id')
                ->get()
                ->mapWithKeys(fn (Category $item) => [$item->getKey() => $item->name])
                ->all();

            return ShortcodeForm::createFromArray($attributes)
                ->add('title', TextField::class, TextFieldOption::make()->label(__('Title'))->toArray())
                ->add(
                    'category_id',
                    SelectField::class,
                    SelectFieldOption::make()
                        ->choices(['' => __('All')] + $categories)
                        ->selected(Arr::get($attributes, 'category_id'))
                        ->toArray()
                );
        });
    }

    if (is_plugin_active('contact')) {
        Shortcode::setPreviewImage('contact-form', Theme::asset()->url('images/ui-blocks/contact-form.png'));
    }

    if (is_plugin_active('gallery')) {
        Shortcode::setPreviewImage('gallery', Theme::asset()->url('images/ui-blocks/gallery.png'));

        Shortcode::register(
            'all-galleries',
            __('All galleries'),
            __('All galleries'),
            function (ShortcodeCompiler $shortcode) {
                return Theme::partial('shortcodes.all-galleries', ['limit' => (int)$shortcode->limit]);
            }
        );

        Shortcode::setPreviewImage('all-galleries', Theme::asset()->url('images/ui-blocks/all-galleries.png'));

        Shortcode::setAdminConfig('all-galleries', function (array $attributes) {
            return ShortcodeForm::createFromArray($attributes)
                ->add('limit', NumberField::class, TextFieldOption::make()->label(__('Limit'))->toArray());
        });
    }
});
