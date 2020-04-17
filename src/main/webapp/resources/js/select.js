/**
 * 
 */
$(document).ready(function(){
	// 클릭시 이벤트 발생
	$('.lunchSelect').click(function(){
		const decision=$(this).children().html();
		//console.log(sel);
		$.ajax({
			type:'post',
			url:'decision.do',
			data:{decision:decision},
			dataType:'json',
			success:function(data){
				const nameArr=data.menuName;
				const picArr=data.menuPic;
				alert(nameArr.length);
				if(nameArr.length>1){
					$('#tl').html("<font>"+nameArr[0]+"</font>");
				}
			},
			error:function(data){
				console.log(data);
				
			}
		});
	})
})

function retry(){
	window.location.reload();
}

