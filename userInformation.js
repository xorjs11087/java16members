var userInfo = {
    name: "홍길동",
    phone: "010-1234-5678",
    email: "korea@gmail.com",
    area: "서울",
    nickname: "김날쎈",
};

// 사용자 정보를 양식 필드에 로드.
function loadUserInformation() {
    document.getElementById("name").value = userInfo.name;
    document.getElementById("phone").value = userInfo.phone;
    document.getElementById("email").value = userInfo.email;
    document.getElementById("area").value = userInfo.area;
    document.getElementById("nickname").value = userInfo.nickname;
}

//프로필 닉네임 로드.
function loadUserNickname() {
    document.getElementById("nickname").value = userInfo.nickname;
}

//취소 버튼 누를 때 userInfo 내용으로 초기화.
function resetForm(formId) {
    loadUserInformation();
}

//등록 버튼 클릭하면 정보 수정되도록.
function submitForm(formId) {
    alert("정보가 수정되었습니다.");
}
