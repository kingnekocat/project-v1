function logoutgo(){
	var ok = confirm("로그아웃 하시겠습니까?");
	if (ok) {
		location.href = "logout.go";
	}
}
function deletemGo() {
	var ok = confirm("회원탈퇴를 하시겠습니까?");
	if (ok) {
		location.href = "deletem.go";
	}
}

function animationdeleteGO(n) {
	var ok = confirm("삭제 하시겠습니까?");
	if (ok) {
		location.href = "animationdelete.go?a_no="+n;
	}
}