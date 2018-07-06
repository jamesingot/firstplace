<?php

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\Form;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\RequiredFields;
 

class ContactPageController extends PageController
{
    private static $allowed_actions = ['Form'];
    public function Form() 
    { 
        $fields = new FieldList( 
            new TextField('Name'), 
            new EmailField('Email'), 
            new TextareaField('Message')
        ); 
        $actions = new FieldList( 
            new FormAction('submit', 'Submit') 
        ); 
        $validator = new RequiredFields('Name', 'Message');
        return new Form($this, 'Form', $fields, $actions, $validator);  
    }

    public function submit($data, $form) 
    { 
        $email = new Email(); 

        $email->setTo('james@ingot.nz'); 
        $email->setFrom($data['Email']); 
        $email->setSubject("Contact Message from {$data["Name"]}"); 

        $messageBody = " 
            <p><strong>Name:</strong> {$data['Name']}</p> 
            <p><strong>Message:</strong> {$data['Message']}</p> 
        "; 
        $email->setBody($messageBody); 
        $email->send(); 
        return [
            'Form' => 'Thank you for your message'
        ];
    }
}