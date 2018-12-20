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

	//만약 후원을 한 사람이면 댓글을 달 수 있게 조건 다는 것
	//ㄴ ~에서 지금 세션아이디랑 비교해서 존재하면? 댓글 못 달게. 그니까 존재하는 애가 duplicate구나 아하
	//한 번 댓글을 단 기부자와 기부단체는 더 이상 글을 쓸 수 없게
	//세션 아이디 체크하는 거

	CheerDTO result;
	int parentNo;
	

	@Autowired
	private CheerService cheerService;
	
	// 세션 아이디 받아오는거 해야해~~~~~~~~~~~~~~~~~~~~~~~~~~!!!!!!!!
		// 댓글 등록
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


	 //대댓글 폼띄워준다.+응원댓글 번호 찾아준다.(누르면 textarea나오는 부분은 아직 구현 안 함)
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
		// 대댓글 DB에 등록
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

		// 댓글 수정하기 위해 번호 찾아옴
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

		// 댓글 수정
		@RequestMapping("cheerUpdate")
		@ResponseBody
		public Object cheerUpdate(@RequestParam("cheerContent") String cheerContent, CheerDTO cheerDTO) {

			cheerDTO = result;
			System.out.println(cheerDTO.getCheerNo() + " / " +cheerDTO.getCheerParentNo() + " / " + cheerDTO.getCheerNotify());
			
			System.out.println(cheerContent);
			cheerDTO.setCheerContent(cheerContent);
			
			if(cheerDTO.getCheerParentNo()==0) {
				System.out.println("얘는 부모글이다.");
			}else {
				System.out.println("얘는 자식글이다.");
			}
			
			
			try {
				cheerService.cheerUpdate(cheerDTO);
			} catch (Exception e) {
				e.printStackTrace();
			}

			System.out.println("수정 후");
			System.out.println(cheerDTO.getCheerNo());
			System.out.println(cheerDTO.getId());
			System.out.println(cheerDTO.getCheerContent());

			//return "redirect:/project/projectRead?projectNo="+cheerDTO.getProjectNo()+"#cheer";
			Map<String,Object> updateResult = new HashMap<>();
			updateResult.put("message", "수정되었습니다.");
			return updateResult;//왜안돼ㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐ
		}

		// 댓글삭제
		@RequestMapping("cheerDelete")
		@ResponseBody
		public Object cheerDelete(String id, @RequestParam("cheerNo") int cheerNo,  @RequestParam("cheerParentNo") int cheerParentNo,@RequestParam("projectNo") int projectNo) {
			Map <String, Object> deleteResult = new HashMap<>();
			id="test2"; // 이거 나중에 session 아이디 값 받아오세요. 
			System.out.println(cheerNo);
			int delete_success=0;
			try {
				delete_success = cheerService.cheerDelete(id, cheerNo, cheerParentNo);
				
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
					
					//"redirect:/project/projectRead?projectNo="+projectNo+"#cheer";
	}


		// 이미 댓글에 해당 아이디가 존재하는지 확인
		public int cheerDuplicatedById(String id, int projectNo) { // id에 session 아이디 넣으면 된다.(함수 부를 때)

			boolean duplicatedResult;
			try {
				duplicatedResult = cheerService.cheerDuplicatedById(id, projectNo);

				if(duplicatedResult==false) System.out.println("이 프로젝트에 등록된 댓글이 없습니다.");
				else System.out.println("이 프로젝트에 이미 등록한 댓글이 있습니다.");

			} catch (Exception e) {
				e.printStackTrace();
			}
			// ★
			// else의 경우에 댓글 막는 것 설정
			// 이 함수 insert할 때 써야함~

			return 0;
		}	
}
