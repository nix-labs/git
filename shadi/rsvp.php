<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Prachi weds Tushar</title>

    <link rel="stylesheet" href="include/style.css" type="text/css">
    <link rel="stylesheet" href="include/simple-sidebar.css" type="text/css">
    <link rel="stylesheet" href="include/style(1).css" type="text/css">
    <link href="include/bootstrap.css" rel="stylesheet">
    <link href="include/carousel.css" rel="stylesheet">
    <link href="include/style(2).css" rel="stylesheet">
    <link href="include/bootstrap-datetimepicker.css" rel="stylesheet" media="screen">
    <link href="include/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="include/image-picker.css" type="text/css">
    <link href="include/css.css" rel="stylesheet" type="text/css">
    <link href="include/css(1).css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="include/favicon.png">

    

    <script src="include/jquery-1.10.2.js" type="text/javascript"></script><style type="text/css"></style>
    <style type="text/css">
    .bootstrap-timepicker-widget{
        z-index: 10000000;
    }
    .fb-like{
        overflow: hidden;
    }
    .bootstrap-datetimepicker-widget{
        z-index: 10000000;
    }

    </style>

    
    <meta name="layout" content="mainCelebration">
    
    <script type="text/javascript">
    $.urlParam = function(name){
    	var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		if(results != null) {
			return results[1] || 0;
		} else return 0;
    	
    }
        $(function(){
            $(".attend").click(function(){
                $(".attend").removeClass('active')
                $(this).addClass('active')
                var id = $(this).attr('id')
                if(id == "attending") {
                    $("#rsvpType").val(1)
                } if(id == "notAttending") {
                    $("#rsvpType").val(2)
                } if(id == "maybeAttending") {
                    $("#rsvpType").val(3)
                }
            })
        });

        $(document).ready(function(){
            var res = $.urlParam('s');
            if(res === '1') {
            	$(".alert-success").css({ display: "block" });
            }

		});
    </script>

</head>
<body>

<div id="wrapper" class="active" style="padding:0px;">

<div class="page-content">

	<div class="alert alert-dismissable alert-success" style="display: none">
		<button type="button" class="close" data-dismiss="alert">x</button>
		<strong>You successfully rsvp'd for the wedding</strong>
	</div>
    
    
    <div class="cover-area inner-h" id="cover">
        <div class="header-main">
            <div class="logo-area-celebration">
                <h1>Prachi &amp; Tushar</h1>
            </div>
        </div>
       
    </div>

    <div class="nav-area">
        <a href="wedding.php">Wedding</a>
        <a href="events.php">Events</a>
        <a href="gallery.php">Gallery</a>
        <a href="rsvp.php">Rsvp</a>
    </div>

    <div class="container" style="min-height: 600px">
        
<h2 class="headline">rsvp</h2>

<div class="rsvp-d">
    <h3>Let your friends know that you are going to be<br> part of their big day celebration.</h3>
</div>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <form role="form" method="post" action="rsvpSubmit.php">
            <fieldset>
                <div class="form-wrapper">
                    <div class="row rsvp-tab">
                        <div class="col-sm-4"><a href="javascript:void(0);" class="btn active attend" id="attending">I'M ATTENDING</a></div>
                        <div class="col-sm-4"><a href="javascript:void(0);" class="btn attend" id="notAttending">I'M NOT ATTENDING</a></div>
                        <div class="col-sm-4"><a href="javascript:void(0);" class="btn attend" id="maybeAttending">MAY BE</a></div>
                    </div>
                    <input type="hidden" name="type" value="1" id="rsvpType">
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="firstName" class="sr-only">Your Name</label>
                            <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Name" required="">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="phone" class="sr-only">Phone</label>
                            <input type="text" id="phone" name="phone" class="form-control" placeholder="Phone">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <label for="email" class="sr-only">Email </label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="Email">
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-sm-12">
                            <label for="description" class="sr-only">Desciption</label>
                            <textarea placeholder="Leave a comment, blessing or a wish" id="description" name="comment" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-primary" href="javascript:void(0);">RSVP</button>
                        </div>
                    </div>
                </div>
            </fieldset>
        </form>
    </div>

</div>

    </div>

</div>
</div>

<footer class="footer">
    <div class="container">
        <div class="copyright"> &copy;  Copyright 2016 <span><a href="http://www.tushargupta.com/" target="_blank" style="color: #e74c5e">tushargupta.com </a></span>- All Rights Reserved</div>
    </div>
</footer>
</body></html>