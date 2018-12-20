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

	//����� QnA ���
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

	//��δ�ü QnA ��� ��� 
	@RequestMapping("qnaReplyInsert")
	public String qnaReplyInsert() {
		System.out.println("qnaReplyInsert ȣ��");
		return "qna/qnaReplyInsert";
	}

	//��� �����ϱ� ���� ��ȣ ã�ƿ�
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
	
	//QnA ����
	@RequestMapping("qnaUpdate")
	@ResponseBody
	public Object qnaUpdate(@RequestParam("qnaContent") String qnaContent, QnADTO qnaDTO) {
		
		qnaDTO = qnaUpdateResult;
		System.out.println(qnaDTO.getQnaNo() + " / " +qnaDTO.getQnaParentNo() + " / " + qnaDTO.getQnaNotify());
		
		System.out.println(qnaContent);
		qnaDTO.setQnaContent(qnaContent);
		
		if(qnaDTO.getQnaParentNo()==0) {
			System.out.println("��� �θ���̴�.");
		}else {
			System.out.println("��� �ڽı��̴�.");
		}
		
		try {
			qnaService.qnaUpdate(qnaDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println("���� ��");
		System.out.println(qnaDTO.getQnaNo());
		System.out.println(qnaDTO.getId());
		System.out.println(qnaDTO.getQnaContent());

		Map<String,Object> qnaUpdateResult = new HashMap<>();
		qnaUpdateResult.put("message", "�����Ǿ����ϴ�.");
		return qnaUpdateResult;
	}

	//QnA ����
	@RequestMapping("qnaDelete")
	@ResponseBody
	public Object qnaDelete(String id, @RequestParam("qnaNo") int qnaNo,  @RequestParam("qnaParentNo") int qnaParentNo,@RequestParam("projectNo") int projectNo) {
		Map <String, Object> deleteResult = new HashMap<>();
		id="test2"; // �̰� ���߿� session ���̵� �� �޾ƿ�����. 
		System.out.println(qnaNo);
		int delete_success=0;
		try {
			delete_success = qnaService.qnaDelete(id, qnaNo, qnaParentNo);
			
			System.out.println(delete_success);
			if(delete_success != 0) {
				deleteResult.put("message", "�����Ǿ����ϴ�.");
			} else {
				deleteResult.put("message", "���� ��۸� ������ �� �ֽ��ϴ�.");
			}
			
			} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(deleteResult);
		return deleteResult; 
				
}


	//���� ���� �� üũ
	@RequestMapping("qnaCheck")
	public String qnaCheck() {
		System.out.println("qnaCheck ȣ��");
		return "qna/qnaCheck";
	}

}
