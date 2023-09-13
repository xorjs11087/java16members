//예시로 하나 넣은 샘플 데이터.
var userInfo = {
    name: "홍길동",
    phone: "010-1234-5678",
    email: "korea@gmail.com",
    area: "서울",
    nickname: "김날쎈",
};

// 사용자 정보를 양식 필드에 로드.
//나의 정보에서 취소 버튼을 클릭하면 userInfo 내용으로 초기화.(이름, 전화번호, 이메일, 지역)
function loadUserInformation() {
    document.getElementById("name").value = userInfo.name;
    document.getElementById("phone").value = userInfo.phone;
    document.getElementById("email").value = userInfo.email;
    document.getElementById("area").value = userInfo.area;
    document.getElementById("nickname").value = userInfo.nickname;
}

//프로필 닉네임 로드.
//나의 프로필 정보에서 취소 버튼을 클릭하면 userInfo 내용으로 초기화.(닉네임)
function loadUserNickname() {
    document.getElementById("nickname").value = userInfo.nickname;
}

//취소 버튼 누를 때 userInfo 내용으로 초기화.
function resetForm(formId) {
    loadUserInformation();
}

//등록 버튼 클릭하면 정보 수정되도록.
//어떻게 정보가 수정되어야 하는지는, 백엔드 작업 시 추가로 작업 예정.
function submitForm(formId) {
    alert("정보가 수정되었습니다.");
}
