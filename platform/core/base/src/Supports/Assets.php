<?php

namespace Botble\Base\Supports;

use Botble\Assets\Assets as BaseAssets;
use Botble\Assets\HtmlBuilder;
use Botble\Base\Facades\AdminHelper;
use Botble\Base\Facades\BaseHelper;
use Illuminate\Config\Repository;

/**
 * @since 22/07/2015 11:23 PM
 */
class Assets extends BaseAssets
{
    public function __construct(Repository $config, HtmlBuilder $htmlBuilder)
    {
        parent::__construct($config, $htmlBuilder);

        $this->config = $config->get('core.base.assets');

        $this->scripts = $this->config['scripts'];

        $this->styles = $this->config['styles'];
    }

    public function setConfig(array $config): void
    {
        $this->config = $config;
    }

    /**
     * @deprecated v7.0
     */
    public function getThemes(): array
    {
        return [];
    }

    public function renderHeader($lastStyles = []): string
    {
        do_action(BASE_ACTION_ENQUEUE_SCRIPTS);

        if (AdminHelper::isInAdmin(true) && BaseHelper::adminLanguageDirection() === 'rtl') {
            $this->config['resources']['styles']['core']['src']['local'] = '/vendor/core/core/base/css/core.rtl.css';
        }

        return parent::renderHeader($lastStyles);
    }

    public function renderFooter(): string
    {
        $bodyScripts = $this->getScripts(self::ASSETS_SCRIPT_POSITION_FOOTER);

        return view('assets::footer', compact('bodyScripts'))->render();
    }

    public function usingVueJS(): self
    {
        $this->addScripts(['vue', 'vue-app']);

        return $this;
    }

    public function disableVueJS(): self
    {
        $this->removeScripts(['vue', 'vue-app']);

        return $this;
    }

    /**
     * @deprecated since v5.13
     */
    public function getAdminLocales(): array
    {
        return Language::getAvailableLocales();
    }
}
