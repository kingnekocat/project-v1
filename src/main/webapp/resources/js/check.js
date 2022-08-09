function joinCheck() {
	var idInput = document.joinForm.m_id;
	var pwInput = document.joinForm.m_pw;
	var nameInput = document.joinForm.m_name;
	var nicknameInput = document.joinForm.m_nickname;
	var photoInput = document.joinForm.m_photo;
	
	
	if(isEmpty(idInput) || containsHS(idInput)){
		alert("ID를 제대로 입력해주세요");
		idInput.value = "";
		idInput.focus();
		return false;
	}else if (isEmpty(pwInput)) {
		alert("PW를 입력해주세요");
		pwInput.value = "";
		pwInput.focus();
		return false;
	}else if (isEmpty(nameInput)) {
		alert("이름을 입력해주세요");
		nameInput.value = "";
		nameInput.focus();
		return false;
	}else if (isEmpty(nicknameInput)) {
		alert("닉네임을 입력해주세요");
		nicknameInput.value = "";
		nicknameInput.focus();
		return false;
	} else if (isEmpty(photoInput)
			|| (isNotType(photoInput, "png") && isNotType(photoInput, "gif")
					&& isNotType(photoInput, "jpg") && isNotType(photoInput,
					"bmp"))) {
		alert("사진을 제대로 선택해주세요");
		return false;
	}
	return true;
	
}

function loginCheck() {
	var idInput = document.loginForm.m_id;
	var pwInput = document.loginForm.m_pw;
	
	if(isEmpty(idInput) || containsHS(idInput)){
		alert("ID를 입력해주세요");
		idInput.value = "";
		idInput.focus();
		return false;
	}else if (isEmpty(pwInput)) {
		alert("PW를 입력해주세요");
		pwInput.value = "";
		pwInput.focus();
		return false;
	}
	return true;
	
}





























