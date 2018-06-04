<?php

use SilverStripe\CMS\Model\SiteTree;
use Silverstripe\Assets\File;
use Silverstripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

class Page extends SiteTree
{
    private static $db = [];

    private static $has_one = [
        'Photo' => Image::class,
    ];

    private static $owns = [
        'Photo',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
        $photo->setFolderName('banner-photos');

        return $fields;
    }
}
