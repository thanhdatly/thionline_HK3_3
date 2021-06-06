const quizData = [
    {
        question: 'Những nước nào tham gia Hội nghị Ianta ?',
        a: 'Anh - Pháp - Mĩ.',
        b: 'Anh - Mĩ - Liên Xô.',
        c: 'Anh - Pháp - Đức.',
        d: 'Mĩ - Liên Xô - Trung Quốc.',
        correct: 'd',
    },{
        question: 'Một trong những nội dung quan trọng của Hội nghị Ianta là:',
        a: 'Đàm phán, kí kết các hiệp ước với các nước phát xít bại trận.',
        b: 'Các nước thắng trận thoả thuận việc phân chia Đức thành hai nước Đông Đức và Tây Đức.',
        c: 'Ba nước phe Đồng minh bàn bạc, thoả thuận khu vực đóng quân tại các nước nhằm giải giáp quân đội phát xít; phân chia phạm vi ảnh hưởng ở châu Âu và châu Á.',
        d: 'Các nước phát xít Đức, Italia kí văn kiện đầu hàng phe Đồng minh vô điều kiện.',
        correct: 'c',
    },{
        question: 'Hội nghị Ianta diễn ra từ:',
        a: 'Ngày 4 đến 11/2/1945.',
        b: 'Ngày 2 đến 14/2/1945.',
        c: 'Ngày 2 đến 12/4/1945.',
        d: 'Ngày 12 đến 22/4/ 1945.',
        correct:'a',
    },{
        question: 'Hội nghị Ianta đã họp ở đâu?',
        a: 'Nước Anh',
        b: 'Nước Pháp',
        c: 'Thụy Sĩ',
        d: 'Liên Xô',
        correct: 'd',
    },{
        question: 'Có bao nhiêu nước là thành viên sáng lập tổ chức Liên hợp quốc ?',
        a: '35',
        b: '48',
        c: '50',
        d: '55',
        correct: 'd',
    },
];
const quiz = document.getElementById("quiz");
const answerEls = document.querySelectorAll(".answer");
const questionEl = document.getElementById("question");
const a_text = document.getElementById("a_text");
const b_text = document.getElementById("b_text");
const c_text = document.getElementById("c_text");
const d_text = document.getElementById("d_text");
const submitBtn = document.getElementById("submit");

let currentQuiz = 0;
let score = 0;
var choose = [];
loadQuiz();

function loadQuiz() {
    deselectAnswers();

    const currentQuizData = quizData[currentQuiz];

    questionEl.innerText = currentQuizData.question;
    a_text.innerText = currentQuizData.a;
    b_text.innerText = currentQuizData.b;
    c_text.innerText = currentQuizData.c;
    d_text.innerText = currentQuizData.d;
}

function getSelected() {
    let answer = undefined;

    answerEls.forEach((answerEl) => {
        if (answerEl.checked) {
            answer = answerEl.id;
			
			
        }
    });

    return answer;
}

function deselectAnswers() {
    answerEls.forEach((answerEl) => {
        answerEl.checked = false;
    });
}

submitBtn.addEventListener("click", () => {
    // check to see the answer
    const  answer = getSelected();
	
	
	//choose[currentQuiz]=answer;
	choose[currentQuiz]=answer;

    if (answer) {
        if (answer === quizData[currentQuiz].correct) {
            score++;
        }

        currentQuiz++;
        if (currentQuiz < quizData.length) {
            loadQuiz();
			if(currentQuiz<choose.length)
				document.getElementById(choose[currentQuiz]).checked=true;
			
        } else {
		var result=0;
		for(var i=0;i<quizData.length;i++)
			if(choose[i]==quizData[i].correct)
				result++;
            quiz.innerHTML = `
                
                <h2>You answered correctly at ${result} questions.</h2>
                <button onclick="location.reload()">Reload</button>
            `;
        }
    }
});
function prev()
{
	
	if(currentQuiz>0)
	{
		var c=getSelected();
		if(c!=null)
		choose[currentQuiz]=c;
		currentQuiz--;
		loadQuiz();
		document.getElementById(choose[currentQuiz]).checked=true;	
		return;
	}
	
	
}