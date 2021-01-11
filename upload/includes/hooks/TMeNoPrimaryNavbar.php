<?php

	$ca = new WHMCS_ClientArea();
	use WHMCS\View\Menu\Item as MenuItem;

	add_hook('ClientAreaPrimaryNavbar', 1, function (MenuItem $primaryNavbar)
	{
		$client = Menu::context('client');
		
		// Remove Deviders
		if (!is_null($primaryNavbar->getChild('Services'))) {
			$primaryNavbar->getChild('Services')->removeChild('Services Divider');
		}
		if (!is_null($primaryNavbar->getChild('Domains'))) {
			$primaryNavbar->getChild('Domains')->removeChild('Domains Divider');
		}
		if (!is_null($primaryNavbar->getChild('Domains'))) {
			$primaryNavbar->getChild('Domains')->removeChild('Domains Divider 2');
		}
		if (!is_null($primaryNavbar->getChild('Billing'))) {
			$primaryNavbar->getChild('Billing')->removeChild('Billing Divider');
		}
		
		// Remove Home Link
		if (!is_null($primaryNavbar->getChild('Home'))){
			$primaryNavbar->removeChild('Home');
		}
		
		// Remove Open Ticket Link
		if (!is_null($primaryNavbar->getChild('Open Ticket'))){
			$primaryNavbar->removeChild('Open Ticket');
		}
		
		// Create New Portal Home Link
		if (is_null($client)) {
			$primaryNavbar->addChild('Portal Home')
			->setLabel(Lang::trans('globalsystemname'))
			->setUri('index.php')
			->setOrder(1);
		}
		
		// Create Client Area Home Link
		if (!is_null($client)) {
			$primaryNavbar->addChild('Client Area')
			->setLabel(Lang::trans('clientareatitle'))
			->setUri('clientarea.php')
			->setOrder(1);
		}
		
		// Recreate Open Ticket Link in New Position
		if (!is_null($primaryNavbar->getChild('Support'))) {
			$primaryNavbar->getChild('Support')
				->addChild('Open Ticket', array(
					'label' => Lang::trans('navopenticket'),
					'uri' => 'submitticket.php',
					'order' => '15',
				));
		}
		
		// Add icons to Primary Navbar menu items
		if (!is_null($primaryNavbar->getChild('Portal Home'))) {
			$primaryNavbar->getChild('Portal Home')
				->setIcon('fa-tachometer-alt');
		} 
		if (!is_null($primaryNavbar->getChild('Client Area'))) {
			$primaryNavbar->getChild('Client Area')
				->setIcon('fa-tachometer-alt');
		} 
		if (!is_null($primaryNavbar->getChild('Announcements'))) {
			$primaryNavbar->getChild('Announcements')
				->setIcon('fa-newspaper');
		}   
		if (!is_null($primaryNavbar->getChild('Knowledgebase'))) {
			$primaryNavbar->getChild('Knowledgebase')
				->setIcon('fa-info-circle');
		}    
		if (!is_null($primaryNavbar->getChild('Network Status'))) {
			$primaryNavbar->getChild('Network Status')
				->setIcon('fa-server');
		}    
		if (!is_null($primaryNavbar->getChild('Contact Us'))) {
			$primaryNavbar->getChild('Contact Us')
				->setIcon('fa-envelope');
		}    
		if (!is_null($primaryNavbar->getChild('Services'))) {
			$primaryNavbar->getChild('Services')
				->setIcon('fa-bars');
		}
		if (!is_null($primaryNavbar->getChild('Domains'))) {
			$primaryNavbar->getChild('Domains')
				->setIcon('fa-globe');
		}    
		if (!is_null($primaryNavbar->getChild('Billing'))) {
			$primaryNavbar->getChild('Billing')
				->setIcon('fa-money-bill-alt');
		}    
		if (!is_null($primaryNavbar->getChild('Affiliates'))) {
			$primaryNavbar->getChild('Affiliates')
				->setIcon('fa-chart-bar');
		}    
		if (!is_null($primaryNavbar->getChild('Support'))) {
			$primaryNavbar->getChild('Support')
				->setIcon('fa-life-ring');
		}
		if (!is_null($primaryNavbar->getChild('Store'))) {
			$primaryNavbar->getChild('Store')
				->setIcon('fa-shopping-cart');
		}
		if (!is_null($primaryNavbar->getChild('Website Security'))) {
			$primaryNavbar->getChild('Website Security')
				 ->setIcon('fa-shield-alt');
		}
		
	});
?>