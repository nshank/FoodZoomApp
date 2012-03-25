$( function () { 
	
	var map;
	var markers = {};
	var infoWindows = [];
	var mapOpts = {
	    mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	var maxZoom = 15;
	
	map = new google.maps.Map(document.getElementById('map_canvas'), mapOpts);  
	            map.setCenter(new google.maps.LatLng(41.960558,-87.698719));
	            map.setZoom(10);
	
  $('a[data-role=location]').each( function(i,elem) {
		//1.  Create a new marker
		var marker = new google.maps.Marker({
	    position: new google.maps.LatLng($(elem).data('options').lat, $(elem).data('options').lon),
	    map: map,
	    title: $(elem).data('options').title
	  });

		//2.  Create a new info window
		var infoWindow = new google.maps.InfoWindow({
	    content: $(elem).data('options').title 
	  });
	
		//3.  Store a copy of the link data with the marker
		$(marker).data('options', $(elem).data('options'));
		
		//4.  Store the info window with the marker
		$(marker).data('infowindow', infoWindow);
		
		//5.  Store the marker with the link
		$(elem).data('marker', marker);
			
		google.maps.event.addListener(marker, 'click', function() {
			closeInfoWindows();    
			infoWindow.open(map,marker);
		 });
	});
	
	function closeInfoWindows() {
		$('a[data-role=location]').each( function(i,elem) {
			var marker = $(elem).data('marker');
			$(marker).data('infowindow').close();
		});
	}
	
	$('a[data-role=location]').click( function(e) {
		var marker = $(this).data('marker');
		closeInfoWindows();
		$(marker).data('infowindow').open(map, marker);
		e.preventDefault();
	});
	  
});
