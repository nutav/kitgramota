$(function(){
    $('.raty-div').raty({ starType: 'i', scoreName: 'comment[raty]' });
		$('.raty-div-readonly').raty({
			starType: 'i',
		  score: function() {
		    return $(this).attr('data-score');
		  },
			readOnly: true
		});
		
	$('#new_education_claim').motionCaptcha({
		    errorMsg: 'Пожалуйста, попробуйте снова.',
		    successMsg: 'Верно!'
		});
})