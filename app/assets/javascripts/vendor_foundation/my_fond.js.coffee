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