###
 This is a tile collection directive for the Banjo Tiles
###
angular.module('App')
.directive('banjoTileContainer', () ->
  replace: true
  transclude: true
  scope:
    ngModel: '='
    items: "@"
    click: "&"
  restrict: 'E'
  template: "
          <ul class='thumbnails tiles'>
            <li class='span3 tile' ng-repeat='item in items' id='tile_{{$index}}'>
              <banjo-tile id='{{item.id}}'
              index='{{$index}}'
              image='{{item.images.thumbnail.url}}'
              description='{{item.caption.text}}'
              username='{{item.user.username}}'
              comments=''
              click='click(item);'
              likes=''></banjo-tile>
              <!---->
            </li>
          </ul>
  "
  link: (scope, element, attrs) ->
    oldValue = ''
    newValue = ''
    
   
    console.log(element, attrs)
    
    #set the initial value of the textbox
    angular.element(element).data('items', scope.image);

    #detect outside changes and update our input
    scope.$watch('items', (value) ->
      oldValue = value
      console.log('old value = ' + oldValue)
    );
    
    #observe changes to interpolated attribute
    attrs.$observe('items', (value) ->
      newValue = value
      console.log('new value = ' + newValue)
      #element.find('img').fadeOut().fadeIn();
    );
  )

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
		
		#element.text 'this is the BanjoTile directive'
		#console.log(element, attrs)
		
		#set the initial value of the textbox
		angular.element(element).data('image', scope.image);

		#detect outside changes and update our input
		scope.$watch('image', (value) ->
			oldValue = value
			#console.log('old value = ' + oldValue)
		);
		
		#observe changes to interpolated attribute
		attrs.$observe('image', (value) ->
			newValue = value
			#console.log('new value = ' + newValue)
			element.find('img').fadeOut().fadeIn();
		);
	)