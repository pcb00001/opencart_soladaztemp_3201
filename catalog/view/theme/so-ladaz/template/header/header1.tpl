 
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<div class="header-top compact-hidden">
		<div class="container">
			<div class="row"> 
				<div class="header-top-left col-lg-4 hidden-sm col-md-5 hidden-xs">
					<ul class="list-inlines">
						<?php if($welcome_message_status):?>
						<li class="hidden-xs" >
							<?php
								if (isset($welcome_message) && is_string($welcome_message)) {
									echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
								} else {echo 'Default welcome msg!';}
							?>
						</li>
						<?php endif; ?>
					</ul>
				</div> 
				<div class="header-top-right collapsed-block col-lg-8 col-md-7 col-sm-12 col-xs-12 ">
					<h5 class="tabBlockTitle hidden-lg hidden-sm hidden-md visible-xs"><?php echo $text_more; ?><a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
					<div  class="tabBlock" id="TabBlock-1">
						<ul class="top-link list-inline">
							<li class="account" id="my_account"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="btn-xs dropdown-toggle" data-toggle="dropdown"> <span><?php echo $text_account; ?></span> <span class="fa fa-angle-down"></span></a>
								<ul class="dropdown-menu ">
									<?php if ($logged) { ?>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
									<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									<li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="top-link-wishlist" title="<?php echo $text_wishlist; ?>"><span><?php echo $text_wishlist; ?></span></a></li>
									<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
									
									<?php } else { ?>
									<li><a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a></li>
									<li><a href="<?php echo $login; ?>"><i class="fa fa-pencil-square-o"></i> <?php echo $text_login; ?></a></li>
									<?php } ?>
								</ul>
							</li>
							<!-- WISHLIST  -->
							<?php if($wishlist_status):?><li class="wishlist"><a href="<?php echo $wishlist; ?>" id="wishlist-total" class="btn-link" title="<?php echo $text_wishlist; ?>"><span ><?php echo $text_wishlist; ?></span></a></li><?php endif; ?>
							<!-- COMPARE -->
							<?php if($checkout_status):?><li class="checkout"><a href="<?php echo $checkout; ?>" class="btn-link" title="<?php echo $text_checkout; ?>"><span ><?php echo $text_checkout; ?></span></a></li><?php endif; ?>
							<!-- LANGUAGE CURENTY -->
							<?php if($lang_status):?>
								<li class="language"><?php echo $language; ?></li>
								<li class="currency"> <?php echo $currency; ?> </li>
							<?php endif; ?>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-center">
		<div class="container">
			<div class="row">
				<!-- PHONE -->
				<div class="header-center-right col-lg-3 col-md-3 col-sm-4  col-xs-12">	
					<?php if($phone_status):?>
					<div class="" >
						<?php
							if (isset($contact_number) && is_string($contact_number)) {
								echo '<div class="phone-contact hidden-xs"><div class="inner-info"><h2>Hotline:</h2><p>'.html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8').'</p></div></div>';
							} else {echo 'Telephone No';}

						?>
					</div>
					<?php endif; ?>
				</div>
				<!-- LOGO -->
				<div class="navbar-logo col-lg-6 col-md-6 col-sm-4 col-xs-12">
				   <?php  $this->soconfig->get_logo();?>
				</div>
				<div class="header-box-right col-lg-3 col-md-3 col-sm-4 col-xs-12">
					<div class="block-cart pull-right">
						<div class="shopping_cart pull-right">
							<?php echo $cart; ?>
						</div>
					</div>
					<div class="header_search pull-right">
						
						<div id="sosearchpro" class="sosearchpro-wrapper dropdown so-search compact-hidden">
							<button id="dropdownSearch" class="dropdown-toggle bt-search" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fa fa-search" aria-hidden="true"></i>
							</button>
							<div class="dropdown-menu dropdown-menu-search" aria-labelledby="dropdownSearch">
								<?php echo $search; ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER BOTTOM -->

	<div class="header-bottom compact-hidden">
		<?php if ($categories) { ?>
			<div class="container">
				<div class="header-bottom-inner">
					<nav id="menu" class="navbar">
					    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
					      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
					    </div>
					    <div class="collapse navbar-collapse navbar-ex1-collapse">
					      <ul class="nav navbar-nav">
					        <?php foreach ($categories as $category) { ?>
					        <?php if ($category['children']) { ?>
					        <li class="dropdown list"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
					          <div class="dropdown-menu">
					            <div class="dropdown-inner">
					              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
					              <ul class="list-unstyled">
					                <?php foreach ($children as $child) { ?>
					                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					                <?php } ?>
					              </ul>
					              <?php } ?>
					            </div>
					            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
					        </li>
					        <?php } else { ?>
					        <li class="list"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
					        <?php } ?>
					        <?php } ?>
					      </ul>
					    </div>
				  	</nav>
				</div>
			</div>
		<?php } ?>
	</div>
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>