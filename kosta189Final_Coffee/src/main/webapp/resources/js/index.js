$(function(){   
	
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
    
    $(".login_nav").click(function(){
        $(".page-move").load('login.html');
    });
    
    $(".notice_menu").click(function(){
        $(".page-move").load('notice.html');
        
    });
    
    $(".project_menu").click(function(){
        $(".page-move").load('project.html');
        
    });
    
    $(".mypage_nav").click(function(){
        $(".page-move").load('mypage.html');
    });
    
    $(".signup_nav").click(function(){
        $(".page-move").load('signup_person.html');
    });

    $(".project_register_menu").click(function(){
        $(".page-move").load('project-register.html');
    })
    
    
    
//    var progressbar = $(".progressbar"),
//				max = progressbar.attr('max'),
////				time = (10/max)*5,
//                initValue = 0,
//		        value = progressbar.val();
//
//		    var loading = function() {
//		        initValue += 1;
//		        addValue = progressbar.val(initValue);
//
//		        $(".progress-value").html(initValue + '%');
//
//		        if (initValue == value) {
//		            clearInterval(animate);
//		        }
//		    };
//
//		    var animate = setInterval(function() {
//		        loading();
//		    }, 10);
    
})

setTimeout(function(){
    $(".odometer.a").html(26);
   $(".odometer.b").html(3415);
    $(".odometer.c").html(52);
  }, 0);

