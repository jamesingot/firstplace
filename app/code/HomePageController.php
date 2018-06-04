<?php
 

class HomePageController extends PageController
{
    public function LatestPromos($count = 3) 
  { 
    return PromoPage::get()
               ->sort('Created', 'DESC')
               ->limit($count);
  } 
}