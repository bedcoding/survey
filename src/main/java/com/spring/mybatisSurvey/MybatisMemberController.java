package com.spring.mybatisSurvey;

import java.util.ArrayList;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.mybatisSurvey.model.MybatisMember;
import com.spring.mybatisSurvey.model.MybatisMemberMapper;
import com.spring.mybatisSurvey.model.Q;

@Controller
@SessionAttributes("mybatisMember")
public class MybatisMemberController {	
	@Autowired
	MybatisMemberMapper mybatisMemberService;
	
	@RequestMapping("/inputForm")
	public void insertMember(Model model){
		model.addAttribute("mybatisMember", new MybatisMember());
		
		// 질문 리스트 출력
		ArrayList<Q> mybatisMembers2 = (ArrayList<Q>)mybatisMemberService.getAllMembers2();
		model.addAttribute("mybatisMembers2", mybatisMembers2);
	}//insertMember()
	
	
	@RequestMapping("/insertOk")
	public String insertOk(@Valid MybatisMember mybatisMember, BindingResult result){		
		if(result.hasErrors()){
			System.out.println("삽입 오류 발생");
//			return "redirect:inputForm";
			return "inputForm"; //forward 방식
		} else {
			// 에러가 없으면 DB에 저장
			mybatisMemberService.insertMember(mybatisMember);
			return "redirect:list";
		}
	}//insertOk()
	
	@RequestMapping("/modifyMember/{answernum}") //get방식 대신에 스프링에서 지원하는 방식 사용
	public String modifyMember(@PathVariable int answernum, Model model){
		model.addAttribute("mybatisMember", mybatisMemberService.getMember(answernum));
		return "modifyForm";
	}
	
	@RequestMapping("/modifyOk")
	public String modifyOk(@Valid MybatisMember mybatisMember, BindingResult result ){
		
		if(result.hasErrors()){
			System.out.println("수정 오류 발생");
			return "modifyForm";
		}else{
			mybatisMemberService.updateMember(mybatisMember);
			return "redirect:list";
		}
	}//modifyOk()
	
	@RequestMapping("/delMember")
	public void delMember(Model model){
		model.addAttribute("mybatisMember", new MybatisMember());
	}
	
	@RequestMapping("/delMember/{answernum}")
	public String delMember(@PathVariable int answernum, Model model){		
//		model.addAttribute("mybatisMember", new MybatisMember());
		
		//id 존재 여부 체크
		if(mybatisMemberService.getMember(answernum) != null){ //id 존재하는 경우			
			model.addAttribute("mybatisMember", mybatisMemberService.getMember(answernum));
			return "delMember";
			
		} else { //id null인 경우
			return "delFail";
		}

	}//delMember
	
	
	@RequestMapping("/deleteOk")
	public String deleteOk(@Valid MybatisMember mybatisMember, BindingResult result){
		if(result.hasErrors()){
			System.out.println("삭제 오류 발생");
			return "delMember";
		} else {
			mybatisMemberService.deleteMember(mybatisMember.getAnswernum());
			return "redirect:list";
		}//if
	}//deleteOk()
	
	
	@RequestMapping("/list")
	public void list(Model model){
		ArrayList<MybatisMember> mybatisMembers = (ArrayList<MybatisMember>)mybatisMemberService.getAllMembers();
		model.addAttribute("mybatisMembers", mybatisMembers);
	}
}