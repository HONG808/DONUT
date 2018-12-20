package com.donut.web.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.donut.web.dto.CheerDTO;
import com.donut.web.service.CheerService;



@Controller
@RequestMapping("/cheer")
public class CheerController {

	//���� �Ŀ��� �� ����̸� ����� �� �� �ְ� ���� �ٴ� ��
	//�� ~���� ���� ���Ǿ��̵�� ���ؼ� �����ϸ�? ��� �� �ް�. �״ϱ� �����ϴ� �ְ� duplicate���� ����
	//�� �� ����� �� ����ڿ� ��δ�ü�� �� �̻� ���� �� �� ����
	//���� ���̵� üũ�ϴ� ��

	CheerDTO result;
	int parentNo;
	

	@Autowired
	private CheerService cheerService;
	
	// ���� ���̵� �޾ƿ��°� �ؾ���~~~~~~~~~~~~~~~~~~~~~~~~~~!!!!!!!!
		// ��� ���
		@RequestMapping("cheerInsert")
		public String cheerInsert(CheerDTO cheerDTO) {
			//System.out.println(cheerDTO.getCheerContent()+"/"+cheerDTO.getId()+"/"+cheerDTO.getProjectNo());
			try {
				if(cheerService.cheerInsert(cheerDTO)==1) {

					return "redirect:/project/projectRead?projectNo="+cheerDTO.getProjectNo()+"#cheer";
				}
			} catch (Exception e) {

				e.printStackTrace();
			}

			return "cheer/cheerInsertForm"; 
		}


	 //���� ������ش�.+������� ��ȣ ã���ش�.(������ textarea������ �κ��� ���� ���� �� ��)
/*		@RequestMapping("/cheerReplyForm")
		@ResponseBody
		public CheerDTO cheerReplyForm(@RequestParam("cheerParentNo") int cheerParentNo) {
			System.out.println(cheerParentNo);
			parentNo = cheerParentNo;
			try {
				replyresult = cheerService.cheerSelectByNo(cheerParentNo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return replyresult;
		}	
*/
		// ���� DB�� ���
		@RequestMapping("cheerReplyInsert")
		public String cheerReplyInsert(CheerDTO cheerDTO) {
			//parentNo = cheerParentNo;
			cheerDTO.setCheerParentNo(cheerDTO.getCheerNo());
			
			System.out.println("sss??? : " +cheerDTO.getProjectNo());
			System.out.println("sss??? : " +cheerDTO.getCheerContent());
			System.out.println("sss??? : " +cheerDTO.getCheerNo());
			System.out.println("sss??? : " +cheerDTO.getCheerParentNo());
			try {
				if(cheerService.cheerReplyInsert(cheerDTO)==1)
					
					return "redirect:/project/projectRead?projectNo="+cheerDTO.getProjectNo()+"#cheer";
			
			} catch (Exception e) {
				e.printStackTrace();
			}

			return "cheer/cheerInsertForm"; 
		}	

		// ��� �����ϱ� ���� ��ȣ ã�ƿ�
		@RequestMapping("/cheerUpdateForm")	
		@ResponseBody
		public CheerDTO cheerUpdateForm(@RequestParam("cheerNo") int cheerNo) {
			
			System.out.println(cheerNo);
			
			try {
				result = cheerService.cheerSelectByNo(cheerNo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return result;
		}

		// ��� ����
		@RequestMapping("cheerUpdate")
		@ResponseBody
		public Object cheerUpdate(@RequestParam("cheerContent") String cheerContent, CheerDTO cheerDTO) {

			cheerDTO = result;
			System.out.println(cheerDTO.getCheerNo() + " / " +cheerDTO.getCheerParentNo() + " / " + cheerDTO.getCheerNotify());
			
			System.out.println(cheerContent);
			cheerDTO.setCheerContent(cheerContent);
			
			if(cheerDTO.getCheerParentNo()==0) {
				System.out.println("��� �θ���̴�.");
			}else {
				System.out.println("��� �ڽı��̴�.");
			}
			
			
			try {
				cheerService.cheerUpdate(cheerDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}

			System.out.println("���� ��");
			System.out.println(cheerDTO.getCheerNo());
			System.out.println(cheerDTO.getId());
			System.out.println(cheerDTO.getCheerContent());

			//return "redirect:/project/projectRead?projectNo="+cheerDTO.getProjectNo()+"#cheer";
			Map<String,Object> updateResult = new HashMap<>();
			updateResult.put("message", "�����Ǿ����ϴ�.");
			return updateResult;//�־ȵŤ�������������������������������������������������������
		}

		// ��ۻ���
		@RequestMapping("cheerDelete")
		@ResponseBody
		public Object cheerDelete(String id, @RequestParam("cheerNo") int cheerNo,  @RequestParam("cheerParentNo") int cheerParentNo,@RequestParam("projectNo") int projectNo) {
			Map <String, Object> deleteResult = new HashMap<>();
			id="test2"; // �̰� ���߿� session ���̵� �� �޾ƿ�����. 
			System.out.println(cheerNo);
			int delete_success=0;
			try {
				delete_success = cheerService.cheerDelete(id, cheerNo, cheerParentNo);
				
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
					
					//"redirect:/project/projectRead?projectNo="+projectNo+"#cheer";
	}


		// �̹� ��ۿ� �ش� ���̵� �����ϴ��� Ȯ��
		public int cheerDuplicatedById(String id, int projectNo) { // id�� session ���̵� ������ �ȴ�.(�Լ� �θ� ��)

			boolean duplicatedResult;
			try {
				duplicatedResult = cheerService.cheerDuplicatedById(id, projectNo);

				if(duplicatedResult==false) System.out.println("�� ������Ʈ�� ��ϵ� ����� �����ϴ�.");
				else System.out.println("�� ������Ʈ�� �̹� ����� ����� �ֽ��ϴ�.");

			} catch (Exception e) {
				e.printStackTrace();
			}
			// ��
			// else�� ��쿡 ��� ���� �� ����
			// �� �Լ� insert�� �� �����~

			return 0;
		}	
}
