{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}

		{if !$showingLoginPage}
			<!-- END YOUR CONTENT HERE -->
					</div><!-- /.main-content -->
						{if !$inShoppingCart && $secondarySidebar->hasChildren()}
							<div class="col-md-3 pull-md-right sidebar default sidebar-secondary" style="clear:right;">
								{include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
							</div>
						{/if}
						
						<div class="clearfix"></div>
					</div>
					
						
					<!-- BEGIN FOOTER CONTENT -->		
						<div class="footer">
							<div class="footer-inner">
								<!-- basics/footer -->
								<div class="footer-content">
									{$LANG.copyright} &copy; {$date_year} {$companyname}. <span class="hidden-xs">{$LANG.allrightsreserved}.</span>
								</div>
								<!-- /basics/footer -->
							</div>
						</div>
						<button type="button" id="back-to-top" class="btn btn-inverse btn-sm back-to-top">
							<i class="fas fa-angle-up icon-only bigger-110"></i>
						</button>
					<!-- END FOOTER CONTENT -->
					
				</div><!-- /#page-wrapper -->	  
			<!-- END MAIN PAGE CONTENT -->
		</div>  
	</div> 
	<!-- basic scripts -->
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/plugins/pace/pace.min.js"></script>
		
		<script src="{$WEB_ROOT}/templates/{$template}/assets/js/main.js"></script>
		
		<script>

		$(function () {
			$('#langScroll, #taskScroll').slimScroll({
				height: '190px',
				disableFadeOut: true,
				touchScrollStep: 50
			});
		});
		
		// Additional Style //Must required

		$('#Secondary_Navbar-Account').addClass('user-box no-images');
		$('#Secondary_Navbar-Account .dropdown-menu').addClass('dropdown-user');
		
		{if $skipMainBodyContainer}
			$('.weebly-plans .pricing-item').addClass('white');
		{/if}		
		{if $loggedin}
			{if $templatefile eq "homepage" or $templatefile eq "clientareahome"}
				$('#Primary_Navbar-Client_Area a').addClass('active');
			{/if}		
		{else}
			{if $templatefile eq "homepage" or $templatefile eq "clientareahome"}
				$('#Primary_Navbar-Portal_Home a').addClass('active');
			{/if}		
		{/if}		
		{if $loggedin}
			{if $templatefile eq "configureproductdomain" || $templatefile eq "configureproduct" || $templatefile eq "viewcart" || $templatefile eq "checkout" || $templatefile eq "complete" || $templatefile eq "products" || $filename eq "cart" & $smarty.get.gid eq "addons" || $pagetitle eq $LANG.clientareatitle && ($smarty.get.action eq "products" || $smarty.get.action eq "productdetails" || $smarty.get.action eq "services" || $smarty.get.action eq "cancel")}
				$('#Primary_Navbar-Services').addClass('open');
			
			{/if}
		{/if}		
		{if $condlinks.domainreg || $condlinks.domaintrans}
			{if $templatefile eq "configuredomains" || $filename eq "cart" & $smarty.get.domain eq "register" || $filename eq "cart" & $smarty.get.domain eq "transfer" || $filename eq "cart" & $smarty.get.gid eq "renewals" || $pagetitle eq $LANG.clientareatitle && ($smarty.get.action eq "domains" || $smarty.get.action eq "domaindetails" || $smarty.get.action eq "domainaddons" || $smarty.get.action eq "domaincontacts" || $smarty.get.action eq "domainregisterns" || $smarty.get.action eq "domaingetepp")}		
				$('#Primary_Navbar-Domains').addClass('open');
			{/if}
		{/if}		
		{if $loggedin}
			{if $pagetitle eq $LANG.clientareatitle && ($smarty.get.action eq "invoices" || $smarty.get.action eq "addfunds" || $smarty.get.action eq "masspay" || $smarty.get.action eq "creditcard" || $smarty.get.action eq "quotes" || $smarty.get.action eq "details" || $smarty.get.action eq "changepw" || $smarty.get.action eq "contacts" || $smarty.get.action eq "emails" || $smarty.get.action eq "security")}
				$('#Primary_Navbar-Billing').addClass('open');
			{/if}
		{/if}		
		{if $templatefile eq "downloads" || $templatefile eq "downloadscat" || $templatefile eq "downloaddenied" || $templatefile eq "announcements" || $templatefile eq "viewannouncement" || $templatefile eq "knowledgebase" || $templatefile eq "knowledgebasearticle" || $templatefile eq "knowledgebasecat" || $filename eq "submitticket" || $filename eq "supporttickets" || $filename eq "viewticket" || $filename eq "knowledgebase" || $filename eq "downloads" || $filename eq "serverstatus"}
			$('#Primary_Navbar-Support').addClass('open');
		{/if}		
		{if $condlinks.affiliates}
			{if $filename eq "affiliates"}
				$('#Primary_Navbar-Affiliates a').addClass('active');
			{/if}		
		{/if}		
		{if $loggedin}		
			{if $templatefile eq "managessl" || $skipMainBodyContainer}
				$('#Primary_Navbar-Website_Security').addClass('open');
			{/if}		
		{/if}
		{if !$loggedin}
			{if $templatefile eq "announcements" || $templatefile eq "viewannouncement"}
				$('#Primary_Navbar-Announcements a').addClass('active');
			{/if}
			{if $templatefile eq "serverstatus"}
				$('#Primary_Navbar-Network_Status a').addClass('active');
			{/if}			
			{if $templatefile eq "knowledgebase" || $templatefile eq "knowledgebasearticle" || $templatefile eq "knowledgebasecat"}
				$('#Primary_Navbar-Knowledgebase a').addClass('active');
			{/if}
			{if $templatefile eq "contact"}
				$('#Primary_Navbar-Contact_Us a').addClass('active');
			{/if}
			{if $filename eq "submitticket"}
				$('#Primary_Navbar-Contact_Us a').addClass('active');
			{/if}
			{if $filename eq "cart" || $skipMainBodyContainer}
				$('#Primary_Navbar-Store').addClass('open');
			{/if}						
		{/if}
		
		var panelSwitch = $('.panel-switch');
		
		panelSwitch.on('click', function (e) {
			if (!$(this).is('a')) {
				var currCheck = $(this).find('input[type="checkbox"]');
					if (currCheck.is(':checked')) {
						panelSwitch.removeClass('checked');
						currCheck.prop('checked', false);
					} else {
						panelSwitch.addClass('checked');
						currCheck.prop('checked', true);
					}
					var that = $(this);
					setTimeout(function () {
						that.find('.loader').addClass('loading');
					}, 300);
			}
		});
			
		$("p:contains('Powered by')").remove();
		
		</script>
		
		{/if}
		
	{if $showingLoginPage}
		<script>
			$("p:contains('Powered by')").remove();
		</script>
	{/if}

	<div id="fullpage-overlay" class="hidden">
		<div class="outer-wrapper">
			<div class="inner-wrapper">
				<img src="{$WEB_ROOT}/assets/img/overlay-spinner.svg">
				<br>
				<span class="msg"></span>
			</div>
		</div>
	</div>
	
	<div class="modal system-modal fade" id="modalAjax" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
						<span class="sr-only">{$LANG.close}</span>
					</button>
					<h4 class="modal-title">Title</h4>
				</div>
				<div class="modal-body">
					{$LANG.loading}
				</div>
				<div class="modal-footer">
					<div class="pull-left loader">
						<i class="fas fa-circle-notch fa-spin"></i> {$LANG.loading}
					</div>
					<button type="button" class="btn btn-default" data-dismiss="modal">
						{$LANG.close}
					</button>
					<button type="button" class="btn btn-primary modal-submit">
						{$LANG.submit}
					</button>
				</div>
			</div>
		</div>
	</div>

	{include file="$template/includes/generate-password.tpl"}

	{$footeroutput}
	
	</body>
</html>