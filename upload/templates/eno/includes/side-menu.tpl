{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}



<div class="sidebar-scroll">
	<!-- BEGIN SHORTCUT BUTTONS -->
	<div class="media">							
		<ul class="sidebar-shortcuts">
			<li><a href="{$WEB_ROOT}/{if $loggedin}clientarea.php?action=products{else}announcements.php{/if}" class="btn btn-success"><i class="fa fa-{if $loggedin}bars{else}bullhorn{/if} icon-only"></i></a></li>
			<li><a href="{$WEB_ROOT}/cart.php" class="btn btn-primary"><i class="fa fa-shopping-cart icon-only"></i></a></li>
			<li><a href="{$WEB_ROOT}/{if $loggedin}submitticket.php{else}contact.php{/if}" class="btn btn-warning"><i class="fa fa-{if $loggedin}comments{else}envelope{/if} icon-only"></i></a></li>
			<li class="pull-right"><a href="{$WEB_ROOT}/{if $loggedin}logout.php{else}login.php{/if}" class="btn btn-danger"><i class="fa fa-{if $loggedin}power-off{else}lock{/if} icon-only"></i></a></li>
		</ul>	
	</div>
	<!-- END SHORTCUT BUTTONS -->

	<!-- BEGIN FIND MENU ITEM INPUT -->
	<div class="media-search">	
		<div class="input-icon">
			<span class="fa fa-search"></span>
			<input type="text" class="input-menu" id="input-items">
		</div>
	</div>						
	<!-- END FIND MENU ITEM INPUT -->
						
	<ul id="side" class="nav navbar-nav side-nav">
		<!-- BEGIN SIDE NAV MENU -->
							
		<li><h4>Navigation</h4></li>
		
		{include file="$template/includes/primary-navbar.tpl" navbar=$primaryNavbar}
			
	</ul><!-- /.side-nav -->
</div><!-- /.navbar-collapse -->