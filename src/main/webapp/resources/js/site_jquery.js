function connectJoinIdInputEvent() {
	$("#join_idinput").keyup(function() {
		var m_id = $(this).val();
		$.ajax({
			url : "member.get",
			data : {
				"m_id" : m_id
			},
			success : function(data) {
				console.log(data);
//				if (data.member.length == 1) {
				if (data == 1) {
					$("#join_idinput").css("color", "#F44336");
				} else {
					$("#join_idinput").css("color", "black");
				}
			}
		});
	});
}


$(function() {
	connectJoinIdInputEvent();	
});




