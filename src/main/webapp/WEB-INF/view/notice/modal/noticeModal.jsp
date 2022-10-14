<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


<!-- Modal -->

<div class='modal fade' tabindex='-1' id='modal'>
    <div class='modal-dialog'>
        <div class='modal-content'>
            <div class='modal-header'>
                <button type='button' class='close' data-dismiss='modal'>
                    <span>&times;</span>
                </button>
            </div>
            <div class='modal-body'>
                <p id='modalMsg'>이미지 파일 올리기</p>
            </div>
            <div class='modal-footer' id='modalBtn'>
                <button type='button' class='btn btn-secondary' data-dismiss='modal'>아니오</button>
                <button type='button' class='btn btn-primary' id='delLaborerOkBtn'>예</button>
                오늘 하루 보이지 않음 <input type='checkbox' name='todayModalNoShow' id='todayModalNoShow'/>
            </div>
        </div>
    </div>
</div>

</body>
</html>

