/**
 * 
 */
$(document).ready(function(){
	
	checkCenter();
	
	// 클릭시 이벤트 발생
	$('.lunchSelect').click(function(){
		const decision=$(this).children().html();
		if(decision=='점심 메뉴') return false;
		//console.log(sel);
		$.ajax({
			type:'post',
			url:'decision.do',
			data:{decision:decision},
			dataType:'json',
			success:function(data){
				const nameArr=data.menuName;
				// 클릭단계별
				if(nameArr.length>1){
					let num=0;
					$('.lunchSelect').each(function(){
						$(this).html("<font>"+nameArr[num++]+"</font>");
					});
				}else{
					$('#fSel').val(nameArr[0]);
					$("#form").attr("action", "result.do");
					$('#form').submit();
				}
				checkCenter();
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

function checkCenter(){
	console.log('checkCenter');
	if($('#mc font').text()=='점심 메뉴') $('#mc').addClass('nMenu');
	else $('#mc').removeClass('nMenu');
}

