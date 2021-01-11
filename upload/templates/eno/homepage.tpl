{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}

<section class="mass-head hero-1 inverse" id="#home-banner">
    <div>
		<div class="hero-inner text-center">
			{if $registerdomainenabled || $transferdomainenabled}
			<h1>{$LANG.domaintitle}</h1>
			<h3>{$LANG.homebegin}</h3>
			
			<!--Domain Search Input Box-->
			<form action="domainchecker.php" method="post" id="frmDomainHomepage">
				<div class="input-group">
					<div class="input-group-btn">
						<input type="text" name="domain" placeholder="{$LANG.findyourdomain}" value="{$domain}" id="inputDomain" class="domains-input tooltip-warning" maxlength="65" autocapitalize="none" data-toggle="tooltip" data-placement="top" data-trigger="manual" title="{lang key='orderForm.required'}" />
						{if $registerdomainenabled}<button type="submit" id="btnCheckAvailability" class="btn btn-inverse domain-btn-2 {$captcha->getButtonClass($captchaForm)}" onclick="$('#modalpleasewait').modal();">{$LANG.search}</button>{/if}
						{if $transferdomainenabled}<button type="submit" name="transfer"  class="btn btn-warning domain-btn-1 {$captcha->getButtonClass($captchaForm)} hidden-xs" value="{$LANG.orderdomaintransfer}" onclick="$('#modalpleasewait').modal();">{$LANG.orderdomaintransfer}</button>{/if}
					</div>
				</div>
				{include file="$template/includes/captcha.tpl"}
			</form>
			<!--End Domain Search Input Box-->
			
			{else}
			
			<h2>{$LANG.doToday}</h2>
			
			{/if}
		</div>
    </div>
</section>


<div class="home-shortcuts">
	<div class="row">
		<div class="col-md-4 hidden-sm hidden-xs text-center">
			<p class="lead">
				{$LANG.howcanwehelp}
			</p>
		</div>
		<div class="col-sm-12 col-md-8">
			<ul>
				{if $registerdomainenabled || $transferdomainenabled}
					<li>
						<a id="btnBuyADomain" href="domainchecker.php">
							<i class="fas fa-globe"></i>
							<p>
								{$LANG.buyadomain} <span>&raquo;</span>
							</p>
						</a>
					</li>
				{/if}
				<li>
					<a id="btnOrderHosting" href="cart.php">
						<i class="far fa-hdd"></i>
						<p>
							{$LANG.orderhosting} <span>&raquo;</span>
						</p>
					</a>
				</li>
				<li>
					<a id="btnMakePayment" href="clientarea.php">
						<i class="fas fa-credit-card"></i>
						<p>
							{$LANG.makepayment} <span>&raquo;</span>
						</p>
					</a>
				</li>
				<li>
					<a id="btnGetSupport" href="submitticket.php">
						<i class="far fa-envelope"></i>
							<p>
								{$LANG.getsupport} <span>&raquo;</span>
							</p>
					</a>
				</li>
			</ul>
		</div>
	</div>
</div>
	

<div class="space-16"></div>

	



{if $twitterusername}

    <h2>{$LANG.twitterlatesttweets}</h2>
	<div class="TM-card">
		<div id="twitterFeedOutput">
			<p class="text-center"><img src="{$BASE_PATH_IMG}/loading.gif" /></p>
		</div>
		<script type="text/javascript" src="templates/{$template}/assets/js/twitter.js"></script>
	</div>

{elseif $announcements}
	
    <h2>{$LANG.news}</h2>
	
	<div class="TM-card annoucements homepage">
		{foreach $announcements as $announcement}
			{if $announcement@index < 2}
				<div class="annuncement-item white" onclick="clickableSafeRedirect(event, '{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}')">
					
					<h3>{$announcement.title}</h3>
					<div class="annuncement-body">
					   {if $announcement.text|strip_tags|strlen < 350}
						 <p>{$announcement.text}</p>
					   {else}
						 <p>{$announcement.summary}</p>
					   {/if}
					</div>	
					<div class="annuncement-footer">
						<div class="btn-group">
							<span><a href="{routePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" class="btn btn-xs btn-link">{$LANG.readmore} &raquo;</a></span>
						</div>
						<div class="announcement-details">
							{if $announcementsFbRecommend}
								<script>
									(function(d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id)) {
											return;
										}
										js = d.createElement(s); js.id = id;
										js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
										fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));
								</script>
								<div class="fb-like hidden-sm hidden-xs" data-layout="standard" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
								<div class="fb-like hidden-lg hidden-md" data-layout="button_count" data-href="{fqdnRoutePath('announcement-view', $announcement.id, $announcement.urlfriendlytitle)}" data-send="true" data-width="450" data-show-faces="true" data-action="recommend"></div>
							{/if}
							<span class="announcement-date">{$carbon->createFromTimestamp($announcement.timestamp)->format('jS M Y')}</span>
						</div>
					</div>
				</div>
				
			{/if}
		{/foreach}
	</div>
{/if}


{include file="$template/includes/modal-alert.tpl"}