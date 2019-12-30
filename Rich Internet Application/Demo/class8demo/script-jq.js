$(document).ready(function(){
	console.log('script loaded');

	var count = 0;

	$('#add-btn').click(function(){
		var $item = $('<div><h2>This is a result ' + count + '</h2></div>');
		$item.addClass('result-container');
		$item.attr('id', 'result' + count);

		$item.hover(function(){
			$(this).addClass('hover');
			//console.log('over');
			//$(this).css('background-color', 'blue');
		}, function(){
			$(this).removeClass('hover');
			//console.log('out');
			//$(this).css('background-color', 'transparent');
		});
		
		var $closeButton = $('<button>Remove Me</button>');
		$closeButton.click(function(){
			$item.slideUp(600, function(){
				$item.remove();
			});
		});
		$item.append($closeButton);

		$('#container').append($item);
		count++;
	});

	$('#clear-btn').click(function(){
		$('#container div.result-container').each(function(){
			$(this).slideUp(600, function(){
				$('#container').empty();
			});
		});
	});
});