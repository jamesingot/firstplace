<?php

use Silverstripe\Assets\File;
use Silverstripe\Assets\Image;
use SilverStripe\AssetAdmin\Forms\UploadField;

class PromoPage extends Page 
{
    private static $can_be_root = false;

    private static $has_one = [
        'Photo' => Image::class,
    ];

    private static $owns = [
        'Photo',
    ];

    public function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
        $photo->setFolderName('promo-photos');

        return $fields;
    }
}