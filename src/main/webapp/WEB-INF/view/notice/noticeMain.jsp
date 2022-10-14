<%@ page language='java' contentType='text/html; charset=utf-8' 
	pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<head>
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://code.jquery.com/jquery-3.6.0.js'></script>
<script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.js'></script>
<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.js'></script>
<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.css'/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.6.3/css/all.css' />
<meta charset="utf-8">

<script>
<%--
function isVal(field) {
	let isGood = false
	let errMsg
	
	if(!field.length) errMsg = '공지글을 선택하세요.'
	else {
		if(!field.val()) errMsg = ' 재확인 하세요.'
		else isGood = true
	}
	
	if(!isGood) {
		$('#modalMsg').text(errMsg).css('color', 'red')
		$('#modalBtn').hide()
		$('#modal').modal()
	}
	
	return isGood
}

function listNotices() {
	$('#notice_list').empty()
	
	$.ajax({
		url: 'notice/getNotices',
		dataType: 'json',
		success: notices => {
				if(notices.length) {
					const noticeArr = []					
					$.each(notices, (i, notice) => {
					    noticeArr.unshift(
					    	`<div id='noticeNumber' name='noticeNumber' value='\${notice.noticeNumber}'>
					    		<p class='title'>'\${notice.title}'</p>
					    	</div>
            				<div><p class='regDate'>관리자 '\${notice.regDate}'<p></div>
							<hr>`
					    )
					    <%-- 
					    div의 value는 어트리뷰트로 가져와야함
						>	$("#test").attr("value"); or 
						>	alert($("#test").attr("value")); 
					})
					$('#notices').append(noticeArr.join(''))
				} else $('#notices').append(
					'<div><p>공지글이 없습니다.</p></div>')
		}
	})
}

function init() {
	listNotices()
	
	$('#addNoticeBtn').click(() => {

		$.ajax({
			url: 'notice/addNotice',
			method: 'post',
			data: {
				 title: session.getParameter("title");
				 regDate: session.getParamger("regDate");
			}
		})
	})
		
	$('#fixNotices').click(() => {
		$.ajax({
			url: 'notice/fixNotice',
			method: 'put',
			contentType: 'application/json',
			data: JSON.stringify({
				noticeNumber: session.getParameter("noticeNumber")
				title: session.getParameter("title");
				regDate: session.getParamger("regDate");
			}),
			success: listNotices
		})
	})


	$('#delLaborerBtn').click(() => {
		if(isVal($('#laborerId:checked'))) {
			$('#modalMsg').text('노동자를 삭제하시겠습니까?')
			$('#modalBtn').show()
			$('#modal').modal()
		}
	})

	$('#delNoticesOkBtn').click(() => {		
		$.ajax({
			url: 'notice/delNotice/' + session.getParameter("noticeNumber"),
			method: 'delete',
			success: listNotices
		})		
		
		$('#modal').modal('hide')
		listNotices
	})

	$('#notice_list').on({
		change() {
			$('#title').val($(this).text())
			$('#regDate').val($(this).text())
		}
	}, '#laborerId')
}

$(init)
--%>
</script>

	<style>
		.header {
			position: fixed;
			top: 5;
			height: 200px;
			width: 100%;
			background-color: #BBDEFB;
		}
		
		.footer {
			position: fixed;
			width: 100%;
			height: 30px;
			bottom: 5;
			display: flex;
			justify-content: space-around;
		}
		
		.noticeService {
			display: flex;
			justify-content: end;
		}
		
		.title {
			font-weight: 600;
		}
		
		.regDate {
			font-weight: 100;
			width: 100%;
	    	color: #999;
    		font-size: 12px;
		}
		
		ol, ul {
			list-style: none;
		}
		
		.header_menu {
			float: left;
			margin-right: 5px;
		}
		
 		a:visited { color: black; text-decoration: none;}
 		a:hover { color: black; text-decoration: underline;}
 		
	</style>
</head>
<div class='container'>
	<!-- header - 배너 & 카테고리 -->
	<div class="header2"> <!-- <header> -->
		<div class='row mt-3'>
			<div class='col' style="float:left;">MILLKIT</div>
			<ul style="float:right;">
				<li class="header_menu">
					<a href="http://localhost/notice"> <!-- 검색 url 등록 -->
						<span class="material-symbols-outlined mr-1">search</span>
					</a>
				</li>
				<li class="header_menu">
					<a href="http://localhost/notice"> <!-- 마이페이지 url 등록 -->
						<span class="material-symbols-outlined mr-2">account_circle</span>
					</a>
				</li>
				<li class="header_menu">
					<a href="http://localhost/notice"> <!-- 장바구니 등록 -->
						<span class="material-symbols-outlined mr-2">shopping_cart</span>
					</a>
				</li>
				<li class="header_menu">
					<span class="material-symbols-outlined">menu</span>
				</li>
			</ul>
		</div>
		<div class='row'>
			<ul class='top_category' style="width: 100%;">
				<li class="header_menu"style="width: 20%;">
					<a href="http://localhost/notice">홈</a>
				</li>
				<li class="header_menu"style="width: 20%;">
					<a href="http://localhost/notice">이벤트</a>
				</li>
				<li class="header_menu"style="width: 20%;">
					<a href="http://localhost/notice">FAQ</a>
				</li>
			</ul>
		</div>
		<hr>
		<div class='row sub_top'>
			<p align='center'><a href='http://localhost/notice'>공지사항</a></p>
		</div>
		<hr>
	</div> <!-- </header> -->
	
	<div class="notices"> <!-- <body> -->
		<div class="notice_service d-flex" style="justify-content: end">
			<nav class='d-flex'>
            	<a href='../addNotice.jsp'>
            	<button type='button' class='btn mr-1' id='addNoticeBtn'>
                	<i class='fas fa-plus'></i>
                    <span class='label d-none d-sm-inline'>작성</span>
                </button>
                </a>
                <button type='button' class='btn' id='fixNoticeBtn'>
					<i class='fas fa-edit'></i><span class='label d-none d-sm-inline'>수정</span>
                </button>
	            <button type='button' class='btn' id='delNoticeBtn'>
	            	<i class='fas fa-trash-alt'></i><span class='label d-none d-sm-inline'>삭제</span>
	            </button>
			</nav>
		</div>	
		
		<hr>
		
		<div id="notice_list"> <!-- listNotices && addNotice 기능구현 -->
			<div><p class='title'>제목</p></div>
            <div><p class='regDate'>관리자 regDate<p></div>
			<hr>
			
			<div><p class='title'>마이셰프 오프라인 매장 안내</p></div>
            <div><p class='regDate'>관리자 2022-10-12 16:03:08</p></div>
            <hr>
			
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
			<div><p class='title'>마이셰프 취소(변경) 및 환불 안내 공지</p></div>
            <div><p class='regDate'>관리자 2022-10-11 14:21:25</p></div>
            <hr>
		</div>
	</div> <!-- </body> -->
	
	<div class="footer"> <!-- <footer> -->
		   	<span class="material-symbols-outlined">home</span>
			<span class="material-symbols-outlined">menu</span>
			<span class="material-symbols-outlined">account_circle</span>
	</div> <!-- </footer> -->
	
</div>

<!-- modal -->
<div class='modal fade' tabindex='-1' id='modal'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <button type='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body'>
                <p id='modalMsg'></p>
            </div>
            <div class='modal-footer' id='modalBtn'>
                <button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
                <button type='button' class='btn btn-primary' id='delNoticeOkBtn'>예</button>
            </div>
        </div>
    </div>
</div>