var doughnutData;	

function drawDonut(NationalTeamPageDTO){
	 doughnutData = [ {
			value :  NationalTeamPageDTO.donorAmount ,
			color : "#5082BC"
			}, {
			value :  NationalTeamPageDTO.sponsorAmount ,
			color : "#BF504E"
			}, {
			value :  NationalTeamPageDTO.retailSalesAmount ,
			color : "#9ABA58"
			}, {
			value :  NationalTeamPageDTO.unmetAmount ,
			color : "#C0C0C0"
		} ];
	 
	    draw();
	 
}

function draw() {
        // draw a circle in the center of the canvas
    var canvas = document.getElementById('fundraisedCanvas');
    var relative = document.getElementById('relative');
    canvas.width = $(relative).width();
    canvas.height = $(relative).width();
    var w = canvas.width;
    var h = canvas.height;
    var size = (w > h) ? h : w; // set the radius of the circle to be the lesser of the width or height;
    var ctx = canvas.getContext('2d');
    ctx.beginPath();
    ctx.arc(w / 2, w / 2, size/2, 0, Math.PI * 2, false);
    ctx.closePath();
    ctx.fill();
	
	var myDoughnut = new Chart(ctx).Doughnut(doughnutData);
}
