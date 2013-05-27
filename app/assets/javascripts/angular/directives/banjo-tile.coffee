###
 This is a custom directive for the Banjo Tiles
###
angular.module('App')
.directive('banjoTile', () ->
	replace: true
	transclude: true
	scope:
		id: "@"
		modal: "@"
		image: "@"
		description: "@"
		username: "@"
		comments: "@"
		likes: "@"
		click: "&"
	restrict: 'E'
	template: "<div class='tile-inner'>
			<div class='tile-img'>
				<a data-toggle='modal' href='#tileDetailModal' ng-click='click()'>
					<img id='tile_{{index}}_img' class='pic' src='http://placehold.it/330x330' ng-src='{{image}}'/>
				</a>
				<div class='description'>
					{{description}}
				</div>
			</div>
			<div class='meta clearfix'>
				<div class='pull-left'>
					<div class='username'>
						{{username}}
					</div>
				</div>
				<div class='pull-right links'>
					<a href='#' rel='tooltip' data-title='{{comments}}'> </a>
					<a href='#' rel='tooltip' data-title='{{likes}}'> </a>
				</div>
			</div>
		</div>"
	link: (scope, element, attrs) ->
		#element.text 'this is the BanjoTile directive'
	)