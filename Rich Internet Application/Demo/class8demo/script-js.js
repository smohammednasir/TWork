document.addEventListener("DOMContentLoaded", function(event) {
    console.log("DOM fully loaded and parsed");

    var count = 0;

    var addbtn = document.getElementById('add-btn');
    var clearbtn = document.getElementById('clear-btn');
    var results = document.getElementById('container');

    addbtn.addEventListener('click', function(){
    	var item = document.createElement('div');
    	item.className = 'result-container';
    	item.id = 'result' + count;
    	item.innerHTML = '<h2>This is a result ' + count + '</h2>';

    	// hover code. To add or remove classes you would need regular expressions
    	item.addEventListener('mouseover', function(){
    		item.style.backgroundColor = 'blue';
    	});
    	item.addEventListener('mouseout', function(){
    		item.style.backgroundColor = '#e7a8a8';
    	});

    	var closebtn = document.createElement('button');
    	closebtn.innerHTML = 'Remove Me';
    	closebtn.addEventListener('click', function(){
    		//console.log(this.parentNode);
    		this.parentNode.parentNode.removeChild(this.parentNode);
    	});
    	item.appendChild(closebtn);

    	results.appendChild(item);
    	count++;
    });

    clearbtn.addEventListener('click', function(){
    	//code to animate css properties to make fade up
    	results.innerHTML = '';
    });

 });