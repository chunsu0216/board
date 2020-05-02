$(function(){
	//회원가입 제약사항
	$("a#send").click(function(){
		if($("input#id").val()==""){
			alert("아이디 입력하세요");
			$("input#id").focus();
			return false;
		}
		if(($("input#password1").val() != $("input#password2").val())){
			alert("비밀번호가 일치하지않습니다");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		if(($("input#password2").val().length < 10)){
			alert("형식에 맞춰 비밀번호를 작성해주세요");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		$("input#password").val($("input#password2").val());
		document.login.submit();
	});
	//로그인
	$("a#signin").click(function(){
		alert('test');
	});
});