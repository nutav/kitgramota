$ ->	
	$(document).foundation({ 
		accordion: { 
			active_class: 'active', 
			multi_expand: false, 
			toggleable: true, 
			callback : (accordion) ->
                console.log(accordion)   
        }
    })

	$('.flexslider').flexslider({
	    animation: "slide",
	    animationLoop: true,
	    itemWidth: 180,
	    itemMargin: 5
	})