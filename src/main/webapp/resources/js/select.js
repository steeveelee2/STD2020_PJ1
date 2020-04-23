/**
 * 
 */
$(document).ready(function(){
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
					$('#tl').html("<font>"+nameArr[0]+"</font>");
					$('#tc').html("<font>"+nameArr[1]+"</font>");
					$('#tr').html("<font>"+nameArr[2]+"</font>");
					$('#ml').html("<font>"+nameArr[3]+"</font>");
					$('#mc').html("<font>"+nameArr[4]+"</font>");
					$('#mr').html("<font>"+nameArr[5]+"</font>");
					$('#bl').html("<font>"+nameArr[6]+"</font>");
					$('#bc').html("<font>"+nameArr[7]+"</font>");
					$('#br').html("<font>"+nameArr[8]+"</font>");
				}else{
					$('#fSel').val(nameArr[0]);
					$("#form").attr("action", "result.do");
					$('#form').submit();
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

