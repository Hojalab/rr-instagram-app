###
 This is a custom directive for the Banjo Tiles
 	<banjo-tiles id="banjotiles" items="{{App.data.items}}" timeout="600" effect="slide"></banjo-tiles>
	

 	<div id="tile-grid" class="tiles" style="min-height: 500px;">
		</div>
		
		<div class="pagination pagination-centered">
			<ul>
               <li class="disabled"><a href="#">«</a></li>
               <li class="active"><a href="#">1</a></li>
               <li><a href="#">2</a></li>
               <li><a href="#">3</a></li>
               <li><a href="#">4</a></li>
               <li><a href="#">5</a></li>
               <li><a href="#">»</a></li>
            </ul>
           </div>
 
###
angular.module('App')
.directive('banjoTiles', () ->
	replace: true
	transclude: true
	scope:
		id: "@"
		ngModel: "="
		items: "@"
		timeout: "@"
		effect: "@"
		click: "&"
	restrict: 'E'
	template: "
	<ul id='banjo-tiles' class='thumbnails tiles'>
		<li class='span3 tile' ng-repeat='item in items' id='tile_{{$index}}'>
			<banjo-tile id='{{item.id}}'
				index='{{$index}}'
				image='{{item.images.thumbnail.url || item.profile_picture}}'
				description='{{item.caption.text || item.bio}}'
				username='{{item.user.username || item.username}}'
				comments=''
				click='App.selectTile(item);'
				likes=''>
				</banjo-tile>
		</li>
	</ul>"
	link: (scope, element, attrs) ->
		
		#Hide all element
		$("#banjo-tiles li").each((i) ->
			$(this).hide()
		)
		
		#Show each one by one
		$("#banjo-tiles li").each((i) -> 
			$(this).delay(600 * i).slideDown()
		)
		
	)
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
					<img id='tile_{{index}}_img' class='pic active' src='http://placehold.it/330x330' ng-src='{{image}}'/>
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
					<a href='#commentsDetailModal' data-toggle='modal' ng-click='click()'>
						<img src='/assets/tile-comment.png'/>
					</a>
					<a href='#likesDetailModal' data-toggle='modal' ng-click='click()'>
						<img src='/assets/tile-heart.png'/>
					</a>
				</div>
			</div>
		</div>"
	link: (scope, element, attrs) ->
		oldValue = ''
		newValue = ''
		
		#Change the image value based on the timeout
		
		
			
		
		
		
		#element.text 'this is the BanjoTile directive'
		#console.log(element, attrs)
		
		#set the initial value of the textbox
		element.data('image', scope.image);
		#element.find('.pic').fadeOut()

		#detect outside changes and update our input
		scope.$watch('image', (value) ->
			oldValue = value
			console.log('old value = ' + oldValue)
		);
		
		
		
		#observe changes to interpolated attribute
		attrs.$observe('image', (value) ->
			newValue = value
			console.log('new value = ' + newValue)
			element.find('.pic').fadeIn()
		);
	)