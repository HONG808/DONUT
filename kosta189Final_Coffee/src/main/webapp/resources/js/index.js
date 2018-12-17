$(function(){   
	$.datepicker.setDefaults({
        dateFormat: 'yy-mm-dd',
        prevText: '이전',
        nextText: '다음',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
    });
    
    //플로팅 메뉴
    var floatPosition = parseInt($("#floatMenu").css('top'));
	$(window).scroll(function() {
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

//	 애니메이션 없앨때
//		 $("#floatMenu").css('top', newPosition);

        $("#floatMenu").stop().animate({
			"top" : newPosition
		}, 1000);
        
        
	}).scroll();
    
    
    //스크롤 내릴때 메뉴 숨기기/ 올릴때 보이기
    var lastScroll = 0;
     $(window).scroll(function(event){
         
         var st = $(this).scrollTop();
         
         if(st<lastScroll && $(window).scrollTop()>145){
             $(".menu-wrap.none").css("display","flex");
             $(".menu-wrap.none").css("opacity",0.8);
         }else if(st>lastScroll && $(window).scrollTop()>145){
             $(".menu-wrap.none").css("display","none");
         }else if($(window).scrollTop()<145){
             $(".menu-wrap.none").css("display","none");
         }
         lastScroll=st;
     });
    
     
     
     $("a").on('click', function(event) {

    	    // Make sure this.hash has a value before overriding default behavior
    	    if (this.hash !== "") {
    	      // Prevent default anchor click behavior
    	      event.preventDefault();

    	      // Store hash
    	      var hash = this.hash;

    	      // Using jQuery's animate() method to add smooth page scroll
    	      // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
    	      $('html, body').animate({
    	        scrollTop: $(hash).offset().top
    	      }, 800, function(){
    	   
    	        // Add hash (#) to URL when done scrolling (default click behavior)
    	        window.location.hash = hash;
    	      });
    	  } // End if
     });
     
     
     
     
     	var progressbar = $(".progressbar"),
		max = progressbar.attr('max'),
//		time = (10/max)*5,
		initValue = 0,
     	value = progressbar.val();

     	var loading = function() {
    	 initValue += 1;
     	addValue = progressbar.val(initValue);

     	progressbar.next().children().html(initValue + '%');
//     $(".progress-value").html(initValue + '%');

     	if (initValue == value) {
     		clearInterval(animate);
     	}
     };

     var animate = setInterval(function() {
     loading();
     }, 10);
	});


       
       
    /*$(function(){
         var progressbar = $(".goods-progressbar"),
				max = progressbar.attr('max'),
//				time = (10/max)*5,
                initValue = 0,
		        value = progressbar.val();

		    var loading = function() {
		        initValue += 1;
		        addValue = progressbar.val(initValue);

		        progressbar.next().children().html(initValue + '%');
//                $(".progress-value").html(initValue + '%');

		        if (initValue == value) {
		            clearInterval(animate);
		        }
		    };

		    var animate = setInterval(function() {
		        loading();
		    }, 10);
    })*/


setTimeout(function(){
    $(".odometer.a").html(26);
   $(".odometer.b").html(3415);
    $(".odometer.c").html(52);
  }, 0);

