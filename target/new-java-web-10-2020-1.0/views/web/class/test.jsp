<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kiểm tra</title>
</head>
<body>

<div class="container" style="margin-right: 50px;margin-left: 50px;min-width: 1300px">
    <script>
        var pos = ${position};
        const questionId = ${model.idQuestion};
        var id = questionId[pos - 1];
        const startMinutes = ${time};
        let time = startMinutes * 60;

        function position_set(a) {
            if (pos > 1 && a === -1) {
                $('#position').val(${position}-1);
                $('#questionId').val(id - 1);
                $('#answer').val($("input[name='answ']:checked").val());
                $('#pos').val(pos);
                $('#time').val(time/60);
                $('#formQuestion').submit();
            } else if (pos >= 0 && a === 1 && pos < ${model.idQuestion.size()}) {
                $('#position').val(${position}+a);
                $('#questionId').val(id + 1);
                $('#answer').val($("input[name='answ']:checked").val());
                $('#pos').val(pos);
                $('#time').val(time/60);
                $('#formQuestion').submit();

            }

        };

        function submit_form() {
            $('#position').val(${position});
            $('#questionId').val(id);
            $('#answer').val($("input[name='answ']:checked").val());
            $('#pos').val(pos);
            $('#sub').val("submit");
            $('#formQuestion').submit();
        };

        var timeSet = setInterval(updateCountdown, 1000);

        function updateCountdown() {
            const minutes = Math.floor(time / 60);
            let seconds = time % 60;
            seconds = seconds < 10 ? '0' + seconds : seconds;
            countdown.innerHTML = minutes + ":" + seconds;
            time--;
            if (minutes <= 0 && seconds <= 0){
                stop();
                submit_form();
            }

        }

        function stop() {
            clearInterval(timeSet);
        }

    </script>
    <c:if test="${not empty result}">
        <div class="quiz-container" id="" style="min-width: 800px;min-height: 300px;">
            <h2 style="text-align: center;margin-left: 30px;line-height: 100px;">${result}</h2>
            <h3 style="text-align: center;margin-left: 30px;">Quay về lớp học <a href="<c:url value="/classroom?id=${classId}"/>">Tại đây!</a></h3>


        </div>

        <br>
        <br>
        <br>
    </c:if>
    <c:if test="${empty result}">


    <table style="border: 1px;width: 100%">
        <tr>
            <td>
                <%--Question--%>


                <input type="hidden" value="" id="testId" name="testId">
                <%--FORM--%>
                <form action="<c:url value='/test'/>" id="formQuestion" method="post" style="max-width: 700px">
                    <input type="hidden" value="" id="pos" name="pos">
                    <input type="hidden" value="" id="test" name="test">
                    <input type="hidden" value="" id="answer" name="answer">
                    <input type="hidden" value="" id="sub" name="sub">
                    <input type="hidden" value="" id="time" name="time">
                    <div class="quiz-container" id="quiz" style="min-width: 800px">


                        <div class="quiz-header" style="min-width: 700px;float: left">
                            <h2 <%--id="question"--%> style="text-align: left">${ques.content}</h2>
                            <ul>
                                <li><input type="radio" id="a" name="answ" class="answer" value="a"/>
                                    <label for="a">${ques.a}</label></li>
                                <li><input type="radio" id="b" name="answ" class="answer" value="b"/>
                                    <label for="b">${ques.b}</label></li>
                                <li><input type="radio" id="c" name="answ" class="answer" value="c"/>
                                    <label for="c">${ques.c}</label></li>
                                <li><input type="radio" id="d" name="answ" class="answer" value="d"/>
                                    <label for="d">${ques.d}</label></li>


                            </ul>
                        </div>
                        <input type="hidden" value="${position}" id="position" name="position">
                        <input type="hidden" value="${model.testId}" id="id" name="id">
                        <input type="hidden" value="" id="questionId" name="questionId">
                        <div class="next-prev">
                            <button type="button" class="prev" name="prev" onClick="position_set(-1)"
                                    style="float: left;max-width: 200px;margin-left: 20px;border:2px solid #0b2e13;">Câu
                                trước
                            </button>
                            <button type="button" id="next" class="next" name="next" onClick="position_set(1)"
                                    style="float: left;max-width: 200px;margin-left: 20px;border:2px solid #85c9ff;">Câu
                                sau
                            </button>
                        </div>
                    </div>
                </form>
            </td>
            <script>

            </script>
            <td>
                <%--Submit--%>
                <div class="quiz-container"
                     style="float: right;min-width: 200px;max-width: 400px;position: relative;right: 10px">


                    <div class="quiz-header" style="min-width: 300px;float: left">
                        <p id="countdown" class="time"
                           style="background-color:white;font-size:50px;    height:70px;    width:200px;    justify-content:center;    align-content:center;  display:inline-flex;"></p>
                        <br>
                        <div class="next-prev">
                            <button type="button" id="submit" class="next" name="submit" onClick="submit_form()"
                                    style="max-width: 200px;margin-left: 20px;border:2px solid #85c9ff;">Nộp
                                bài
                            </button>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
    </table>
    </c:if>
</div>
<script>
    $('#${answer}').prop("checked", true);
</script>
</body>
</html>