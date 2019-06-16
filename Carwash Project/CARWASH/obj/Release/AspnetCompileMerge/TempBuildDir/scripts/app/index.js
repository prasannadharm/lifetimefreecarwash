$(document).ready(function () {
    $('#loader').hide();
    $(".navbar-nav li a").click(function (event) {
        $(".navbar-collapse").collapse('hide');
    });
});


$(function () {
		$('#btnContactus').on('click',function(){
			$('#btnContactusCarDealer').show();
			$('#btnContactusCarwashOp').show();
			$('#btnContactusCarDealer').addClass('animateToRight');
            $('#btnContactusCarwashOp').addClass('animateToLeft');
            $('#btnContactus').addClass('hide');
			
		});
		
		$('#btnContactusCarDealer').on('click',function(){
		    //document.location.href = '../Pages/CarDealerRegistration.aspx';
		    parent.open('http://lifetimefreecarwash.com/Pages/CarDealerRegistration.aspx');
		});
		
		$('#btnContactusCarwashOp').on('click',function(){
		    //document.location.href = '../Pages/CarWashOperatorRegistration.aspx';
		    parent.open('http://lifetimefreecarwash.com/Pages/CarWashOperatorRegistration.aspx');
		});
	});
	
$(function () {
    $('a.more').on('click', function () {
        var $parent = $(this).parent();
        if ($parent.data('visible')) {
            $parent.data('visible', false).find('.ellipsis').show()
            .end().find('.moreText').hide()
            .end().find('a.more').text('Read more.');
            $('#imgsecondiv-1-3').css('max-height', '370px');
        } else {
            $parent.data('visible', true).find('.ellipsis').hide()
            .end().find('.moreText').show()
            .end().find('a.more').text('Read less.');
            $('#imgsecondiv-1-3').css('max-height', '');
        }
    });
});