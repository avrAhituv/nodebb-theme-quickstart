</div><!-- /.container#content -->
	</main>
	<!-- IF !isSpider -->
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->


	<script defer src="{relative_path}/assets/nodebb.min.js?{config.cache-buster}"></script>

	{{{each scripts}}}
	<script defer type="text/javascript" src="{scripts.src}"></script>
	{{{end}}}

	<script>
		window.addEventListener('load', function () {
			require(['forum/footer']);
			<!-- IF useCustomJS -->
			{{customJS}}
			<!-- ENDIF useCustomJS -->
		});
	</script>

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>
	<footer>
		<div class="footer container-fluid">
			<div class="container">
				<div class="row">     
				<div class="col-lg-6 col-xs-6">
					<p> <i class="material-icons">
						location_on
					</i>
					כתובת: שטנר 3 ירושלים</p>
					<p>
					<i class="material-icons">
						perm_phone_msg
					</i>
					טלפון: <a href="tel:026405361" style="color:#009688">026405361</a></p>
					<p>
					<i class="material-icons">
						access_time
					</i> שעות מענה אנושי:
					09:00-16:00</p>
				</div>
				<div class="col-lg-6 col-xs-6">
					<img src="../../../assets/images/campushLogo01.png" class="bottomLogo" width="300" style="width:300px;"
					alt="">
				</div>
				</div>
			</div>
		</div>
		<div class="container-fluid creditLine">
			<div class="row">
				<div class="col-lg-6 col-xs-12">
					<a href="">תנאי שימוש</a> &#9666;
					<a href="">תקנון</a>
				</div>
				<div class="col-lg-6 col-xs-12">
					<i class="material-icons" style="color:#ffffff">
					copyright
					</i>
				כל הזכויות שמורות
				</div>
			</div>
		</div>
	</footer>
</body>
</html>