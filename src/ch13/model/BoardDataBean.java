package ch13.model;

import java.sql.Timestamp;

import com.sun.xml.internal.ws.api.ha.StickyFeature;

//MVC (Model(외부연계 - DB연동 Filesystem연동.. 영상처리..) /
//외부연계
//Model
//DB connection -pool
//DB Access - DAO - CRUD (insert, delete, update, select)
//View / Controller(servlet 파일로 구성되고 화면전환에 사용됨 - forward())
//내부연계
//view(jsp)로 어떻게 전달하느냐..
//VO(Value Object) = DTO (Data Transfer Object) 똑같은거임 지금 jsp교재에서는 databean라고 해놨음
//오퍼레이션명 = 메소드명

/*void main() {
	//calculatePayroll(); 급여결과
	request_Generate_Invoice(calculatePayroll('201806R001'), 전표번호, 급여일자, 식별자); //'201806R001' = 급여코드
}

//오퍼레이션 개요 부분
InvoiceDTO request_Generate_Invoice(int calPayroll, int wjsvyqjsgh, String rmqdudlfwk, String tlrqufwk){
	InvoiceDTO returnInvoiceDTO = requestInvoice();
	return returnInvoiceDTO;
}*/

/*전표발생결과, 전표발생금액(검증용)
전표 일반 정보
전표 금액
차변 대변
거래처 정보*/

public class BoardDataBean {
    private int num; 
    private String writer;
    private String subject;
    private String email;
    private String content;
    private String passwd;
    private Timestamp reg_date;
    private int readcount;
    private String ip;
    private int ref;
    private int re_step;	
    private int re_level;
    private String fileName;
	
    public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getRe_step() {
		return re_step;
	}
	public void setRe_step(int re_step) {
		this.re_step = re_step;
	}
	public int getRe_level() {
		return re_level;
	}
	public void setRe_level(int re_level) {
		this.re_level = re_level;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
