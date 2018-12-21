package com.donut.web.controller;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.donut.web.dto.MemberDTO;
import com.donut.web.dto.ProjectDTO;
import com.donut.web.dto.ReviewDTO;
import com.donut.web.service.ProjectService;
import com.donut.web.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
    private String path = "C:\\edu\\finalPhoto";
    @Autowired
    private ReviewService reviewService;
    @Autowired
    private ProjectService projectService;

    @RequestMapping("/reviewRead/{projectNo}")
    public String reviewRead(@PathVariable int projectNo, Model model, String id) {

        ReviewDTO reviewDTO;
        ProjectDTO projectDTO;
        try {

            MemberDTO memberDTO = new MemberDTO();
            memberDTO.setId("company3");
            reviewDTO = reviewService.reviewRead(projectNo);
            reviewDTO.setId("company3");
            projectDTO = projectService.projectSelectByNo(projectNo);
            model.addAttribute("projectDTO", projectDTO);
            model.addAttribute("memberDTO",memberDTO);
            model.addAttribute("review", reviewDTO);
           
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return "review/reviewRead";
    }

    @RequestMapping("/reviewInsertForm")
    public String reviewInsertForm(ReviewDTO reviewDTO, Model model, String id) {

        reviewDTO.setId(id);
        model.addAttribute("review", reviewDTO);

        return "review/reviewInsertForm";
    }

    @RequestMapping(value = "/reviewInsert", method = RequestMethod.POST)
    @ResponseBody
    public int reviewInsert(String id, int projectNo, ReviewDTO reviewDTO) {
        int result = 0;
        try {
             
         /*    MultipartFile file = reviewDTO.getFile(); 
             if(file.getSize()>0) {
               String fileName = file.getOriginalFilename();
               long fileSize = file.getSize();
               file.transferTo(new File(path+"/"+fileName));
               reviewDTO.setReviewImg(fileName);*/
            reviewDTO.setProjectNo(projectNo);
            reviewDTO.setId(id);
            result = reviewService.reviewInsert(reviewDTO);
             
      

        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

     
        return result;
    }

    @RequestMapping(value = "/reviewUpdateForm/{projectNo}", method = RequestMethod.POST)
    public String reviewUpdateForm(@PathVariable int projectNo, Model model, String id) {

        try {

            ReviewDTO reviewDTO = reviewService.reviewRead(projectNo);
            reviewDTO.setId(id);

            model.addAttribute("review", reviewDTO);
        } catch (Exception e) {

            e.printStackTrace();
        }

        return "review/reviewUpdateForm";
    }

    @RequestMapping(value = "/reviewUpdate", method = RequestMethod.POST)
    @ResponseBody
    public int reviewUpdate(ReviewDTO reviewDTO, String id, int projectNo) {
        int result = 0;
        try {
            result = reviewService.reviewUpdate(reviewDTO);
            }

        catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/reviewDelete")
    public String reviewDelete(int projectNo) {
        System.out.println("reviewDelete 출력");
        try {
            reviewService.reviewDelete(projectNo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/project/projectRead?projectNo=" + projectNo;
    }

    @RequestMapping("/reviewCheck")
    public String reviewCheck() {
        System.out.println("reviewCheck 출력");
        return "review/reviewCheck";
    }
    
	
}
