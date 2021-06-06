const form = document.getElementById('form');
const username = document.getElementById('username');
const email = document.getElementById('email');
const password = document.getElementById('password');
const password2 = document.getElementById('password2');
const tel = document.getElementById('tel');
const school = document.getElementById('school');
const classroom = document.getElementById('classroom');

form1.addEventListener('submit', e => {
	e.preventDefault();
	
	checkInputs();
});
function checkInputs() {
	const usernameValue = username.value.trim();
	const emailValue = email.value.trim();
	const passwordValue = password.value.trim();
	const password2Value = password2.value.trim();
	const telValue = tel.value.trim();
	const schoolValue = school.value.trim();
	const classValue = classroom.value.trim();
	
	if(usernameValue === '') {
		setErrorFor(username, 'Họ tên không được bỏ trống');
	} else {
		setSuccessFor(username);
	}
	
	if(emailValue === '') {
		setErrorFor(email, 'Email không được bỏ trống');
	} else if (!isEmail(emailValue)) {
		setErrorFor(email, 'Not a valid email');
	} else {
		setSuccessFor(email);
	}
	
	if(passwordValue === '') {
		setErrorFor(password, 'Mật khẩu không được bỏ trống');
	} else {
		setSuccessFor(password);
	}
	
	if(password2Value === '') {
		setErrorFor(password2, 'Mật khẩu không được bỏ trống');
	} else if(passwordValue !== password2Value) {
		setErrorFor(password2, 'Mật khẩu không đúng');
	} else{
		setSuccessFor(password2);
	}
	
	if(telValue === '') {
		setErrorFor(tel, 'Điện thoại không được bỏ trống');
	} else if (telValue.length<10||telValue.length>10) {
		setErrorFor(tel, 'Số điện thoại có định dạng không đúng');
	} else {
		setSuccessFor(tel);
	}
	
	if(schoolValue === '') {
		setErrorFor(school, 'Trường không được bỏ trống');
	} else {
		setSuccessFor(school);
	}
	
	if(classValue === '') {
		setErrorFor(classroom, 'Lớp không được bỏ trống');
	} else {
		setSuccessFor(classroom);
	}
}

function setErrorFor(input, message) {
	const formControl = input.parentElement;
	const small = formControl.querySelector('small');
	formControl.className = 'form-control error';
	small.innerText = message;
}

function setSuccessFor(input) {
	const formControl = input.parentElement;
	formControl.className = 'form-control success';
}
	
function isEmail(email) {
	return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
}