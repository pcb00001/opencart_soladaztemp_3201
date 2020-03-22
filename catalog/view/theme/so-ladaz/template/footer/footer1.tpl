
<footer class="footer-container typefooter-<?php echo isset($typefooter) ? $typefooter : '1'?>">
	<div class="footer-navbar ">
		<!-- FOOTER TOP -->
		<div class="footer-top container">
			<div class="row">
				<div class="footer-left col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<?php if ($footer_block4) : ?>
						<?php echo $footer_block4; ?>
					<?php endif; ?>
					
					<?php if ($footer_block5) : ?>
						<?php echo $footer_block5; ?>
					<?php endif; ?>
				</div>
				<div class="footer-right col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<?php if ($footer_block6) : ?>
						<?php echo $footer_block6; ?>
					<?php endif; ?>
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 box-account box-footer">
							<div class="module clearfix">
								<h3 class="modtitle"><?php echo $text_account; ?></h3>
								<div  class="modcontent" >
									<ul class="menu">
										<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
										<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
										<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
										<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									</ul>
								</div>
							</div>
						</div>

						
						<?php if ($informations) : ?>
							<div class="col-lg-4 col-md-4 col-sm-4 box-information box-footer">
								<div class="module clearfix">
									<h3 class="modtitle"><?php echo $text_information; ?></h3>
									<div  class="modcontent" >
										<ul class="menu">
											<?php foreach ($informations as $information) { ?>
											<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
											<?php } ?>
										</ul>
									</div>
								</div>
							</div>
						<?php endif; ?>

						<div class=" col-lg-4 col-md-4 col-sm-4 collapsed-block box-footer">
							<div class="module clearfix">
								<h3 class="footer-title"><?php echo $text_extra; ?></h3>
								<div  class="modcontent" >
									<ul class="menu">
										<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
										<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
										<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
										<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- FOOTER CENTER -->
		<div class="footer-center">
			<div class="container">
				
					<?php  echo $footerbottom; ?>
				
			</div>
		</div>	
	</div>
	<!-- FOOTER BOTTOM -->
	<div class="footer-bottom">
		<div class="container">
			<div class="footer-bottom-pt">
				<div class="row">
					<?php $col_copyright = ($imgpayment_status) ? 'col-sm-6' : 'col-sm-12'?>
					<div class="copyright-text <?php echo $col_copyright;?>">
						<?php 
						$datetime = new DateTime();
						$cur_year	= $datetime->format('Y');
						echo (!isset($copyright) || !is_string($copyright) ? $powered : str_replace('{year}', $cur_year,html_entity_decode($copyright, ENT_QUOTES, 'UTF-8')));?>
					</div>

					<?php if (isset($imgpayment_status) && $imgpayment_status != 0) : ?>
					<div class="col-sm-6 paymen">
			
						<?php
						
						if ((isset($imgpayment) && $imgpayment != '') ) { ?>
							<img src="image/<?php echo  $imgpayment ?>"  alt="imgpayment">
						<?php } ?>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</footer>