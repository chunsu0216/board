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
		if(($("input#password2").val().length < 9)){
			alert("형식에 맞춰 비밀번호를 작성해주세요");
			$("input#password1").val("");
			$("input#password2").val("");
			$("input#password1").focus();
			return false;
		}
		$("input#password").val($("input#password2").val());
		document.join.submit();
	});
	//로그인 처리
	$("a#signin").click(function(){
		if($("input#id").val()==""){
			alert("아이디 입력하세요");
			$("input#id").focus();
			return false;
		}else if($("input#password").val()==""){
			alert("비밀번호 입력하세요");
			$("input#password").focus();
			return false;
		}
		document.login.submit();
	});
	//글쓰기 처리
	$("button#submitPost").click(function(){
		if($("input#boardPassword").val()==""){
			alert("비밀번호입력하세요");
			$("input#password").focus();
			return false;
		}else if($("input#title").val()==""){
			alert("제목을 입력하세요");
			$("input#title").focus();
			return false;
		}else if($("textarea#contents").val()==""){
			alert("내용을 입력하세요");
			$("textarea#contents").focus();
			return false;
		}
		document.boardFrm.submit();
	});
});