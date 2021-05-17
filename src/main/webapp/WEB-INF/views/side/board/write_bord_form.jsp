<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="was-validated">

  <div class="form-row">
    <div class="col-md-12 mb-3">
      <label for="boardTitle">제목</label>
      <input type="text" class="form-control is-valid" id="boardTitle" name="boardTitle" required>
      <div class="invalid-feedback">
       욕설, 비방글은 동의없이 삭제될 수 있습니다.
      </div>
    </div>
   </div>

  <div class="mb-3">
    <label for="boardContent">내용</label>
    <textarea class="form-control is-invalid" id="boardContent" name="boardContent" cols="79%" placeholder="내용을 입력해주세요." required></textarea>
    <div class="invalid-feedback">
      욕설, 비방글은 동의없이 삭제될 수 있습니다.
    </div>
  </div>


  <div class="custom-file mb-3">
    <input type="file" id="validatedCustomFile" required>
    <label class="custom-file-label" for="validatedCustomFile">클릭해주세요.</label>
  </div>

  <div class="custom-control custom-checkbox mb-3">
    <input type="checkbox" class="custom-control-input" id="isLock" name="isLock" value="Y">
    <label class="custom-control-label" for="isLock">비밀글 여부</label>
    <div class="valid-feedback">비밀글은 관리자만 볼 수 있습니다.</div>
  </div>
    <button class="btn btn-primary" type="submit" onclick="location.href='/board/writeFreeBoard';">작성 완료</button>
</form>
</body>
</html>