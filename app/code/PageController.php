<?php

use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\RequiredFields;

class PageController extends ContentController
{
    /**
     * An array of actions that can be accessed via a request. Each array element should be an action name, and the
     * permissions or conditions required to allow the user to access it.
     *
     * <code>
     * [
     *     'action', // anyone can access this action
     *     'action' => true, // same as above
     *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
     *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
     * ];
     * </code>
     *
     * @var array
     */
    private static $allowed_actions = ['Submit'];

    protected function init()
    {
        parent::init();
        // You can include any CSS or JS required by your project here.
        // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
    }

    public function SubscribeForm() 
    { 
        $fields = new FieldList( 
            new EmailField('Email') 
        ); 
        $actions = new FieldList( 
            new FormAction('submit', 'Subscribe') 
        ); 
        return new Form($this, 'Form', $fields, $actions); 
    }

    public function submit($data, $subscribe) 
    { 
        $email = new Email(); 

        $email->setTo('siteowner@mysite.com'); 
        $email->setFrom($data['Email']); 
        $email->setSubject("New subscriber"); 

        $email->setBody("New Subscriber called {$data["Name"]}"); 
        $email->send(); 
        return [
            'Content' => '<p>Thank you for subscribing.</p>',
            'Form' => ''
        ];
    }
}
