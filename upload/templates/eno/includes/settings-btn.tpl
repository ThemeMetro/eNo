{*
 **********************************************************
 * Developed by: Team Theme Metro
 * Website: http://www.thememetro.com
 **********************************************************
*}



<div class="theme-options" {if $templatefile == 'homepage'}style="margin-top: 10px"{/if}>
	<div class="btn btn-gray theme-setting-btn" id="theme-setting-btn">
		<i class="fa fa-cog bigger-150 icon-only"></i>
	</div>
	<div class="theme-setting-box" id="theme-setting-box">
		
		<!--Remove below this if you do not want theme options-->		
		<div class="hidden-xs hidden-sm">
			<span class="bigger-120">Layout Options</span>
											
			<div class="hr hr-dotted hr-8"></div>
			<label>
				<input type="checkbox" class="tc" id="fixed-navbar" />
				<span id="#fixed-navbar" class="labels"> Fixed NavBar</span>
			</label>
			<label>
				<input type="checkbox" class="tc" id="fixed-sidebar" />
				<span id="#fixed-sidebar" class="labels"> Fixed NavBar+SideBar</span>
			</label>
			<label>
				<input type="checkbox" class="tc" id="sidebar-toggle" />
				<span id="#sidebar-toggle" class="labels"> Min Sidebar</span>
			</label>
			<label>
				<input type="checkbox" class="tc" id="in-container" />
				<span id="#in-container" class="labels"> Inside<strong>.container</strong></span>
			</label>
										
			<div class="space-4"></div>
		</div>
										
		<span class="bigger-120">Color Options</span>
										
		<div class="hr hr-dotted hr-8"></div>
										
		<label>
			<input type="checkbox" class="tc" id="side-bar-color" />
			<span id="#side-bar-color" class="labels"> SideBar (Light)</span>
		</label>
		
		<!--Remove above this line code if you do not want theme options-->
										
	</div>
</div>