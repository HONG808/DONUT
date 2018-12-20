package com.donut.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.donut.web.dto.CheerDTO;
import com.donut.web.dto.QnADTO;
import com.donut.web.service.QnAService;

@Controller
@RequestMapping("/qna")
public class QnAController {

	
	QnADTO qnaUpdateResult;
	
	@Autowired
	private QnAService qnaService;

	//기부자 QnA 등록
	@RequestMapping("qnaInsert")
	public String qnaInsert(QnADTO qnaDTO) {
		try {
			if(qnaService.qnaInsert(qnaDTO)==1) {
				return "redirect:/project/projectRead?projectNo="+qnaDTO.getProjectNo()+"#qna";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "qna/qnaInsert";
	}

	//기부단체 QnA 답글 등록 
	@RequestMapping("qnaReplyInsert")
	public String qnaReplyInsert() {
		System.out.println("qnaReplyInsert 호출");
		return "qna/qnaReplyInsert";
	}

	//댓글 수정하기 위해 번호 찾아옴
	@RequestMapping("/qnaUpdateForm")
	@ResponseBody
	public QnADTO qnaUpdateForm(@RequestParam("qnaNo") int qnaNo) {
		
		System.out.println(qnaNo);
		
		try {
			qnaUpdateResult = qnaService.qnaSelectByNo(qnaNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(qnaUpdateResult.getQnaNo()+"/"+qnaUpdateResult.getQnaContent());
		return qnaUpdateResult;
	}
	
	//QnA 수정
	@RequestMapping("qnaUpdate")
	@ResponseBody
	public Object qnaUpdate(@RequestParam("qnaContent") String qnaContent, QnADTO qnaDTO) {
		
		qnaDTO = qnaUpdateResult;
		System.out.println(qnaDTO.getQnaNo() + " / " +qnaDTO.getQnaParentNo() + " / " + qnaDTO.getQnaNotify());
		
		System.out.println(qnaContent);
		qnaDTO.setQnaContent(qnaContent);
		
		if(qnaDTO.getQnaParentNo()==0) {
			System.out.println("얘는 부모글이다.");
		}else {
			System.out.println("얘는 자식글이다.");
		}
		
		try {
			qnaService.qnaUpdate(qnaDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("수정 후");
		System.out.println(qnaDTO.getQnaNo());
		System.out.println(qnaDTO.getId());
		System.out.println(qnaDTO.getQnaContent());

		Map<String,Object> qnaUpdateResult = new HashMap<>();
		qnaUpdateResult.put("message", "수정되었습니다.");
		return qnaUpdateResult;
	}

	//QnA 삭제
	@RequestMapping("qnaDelete")
	@ResponseBody
	public Object qnaDelete(String id, @RequestParam("qnaNo") int qnaNo,  @RequestParam("qnaParentNo") int qnaParentNo,@RequestParam("projectNo") int projectNo) {
		Map <String, Object> deleteResult = new HashMap<>();
		id="test2"; // 이거 나중에 session 아이디 값 받아오세요. 
		System.out.println(qnaNo);
		int delete_success=0;
		try {
			delete_success = qnaService.qnaDelete(id, qnaNo, qnaParentNo);
			
			System.out.println(delete_success);
			if(delete_success != 0) {
				deleteResult.put("message", "삭제되었습니다.");
			} else {
				deleteResult.put("message", "본인 댓글만 삭제할 수 있습니다.");
			}
			
			} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(deleteResult);
		return deleteResult; 
				
}


	//수정 삭제 전 체크
	@RequestMapping("qnaCheck")
	public String qnaCheck() {
		System.out.println("qnaCheck 호출");
		return "qna/qnaCheck";
	}

}
