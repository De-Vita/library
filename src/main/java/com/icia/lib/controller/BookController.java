package com.icia.lib.controller;

import com.icia.lib.dto.BookDTO;
import com.icia.lib.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class BookController {
    // BookService 의존성 주입(필드 주입)
    @Autowired
    private BookService bookService;


    // 도서 등록 화면
    @GetMapping("/save")
    public String saveForm() {
        return "save";
    }


    //도서 등록 처리
    @PostMapping("/save")
    public String save(@ModelAttribute BookDTO bookDTO, Model model) {
        int saveResult = bookService.save(bookDTO);
        model.addAttribute("result", saveResult);
        return "saveResult";
//        if (saveResult > 0) {
//            System.out.println("등록성공");
//            model.addAttribute("result", saveResult);
//            return "saveResult";
//        } else {
//            System.out.println("등록실패");
//            model.addAttribute("result", saveResult);
//            return "saveResult";
//        }
    }
    
    @GetMapping("/list")
    public String findAll(Model model) {
        List<BookDTO> bookDTOList = bookService.findAll();
        for (BookDTO bookDTO: bookDTOList) {
            System.out.println("bookDTO = " + bookDTO);
        }
        model.addAttribute("bookList", bookDTOList);
        return "list";
    }

    @GetMapping("/detail")
    public String detail(@RequestParam("id") Long id, Model model) {
        BookDTO bookDTO = bookService.detail(id);
        model.addAttribute("bookDetail", bookDTO);
        return "detail";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") Long id, Model model) {
        int i = bookService.delete(id);
        model.addAttribute("delete", id);
        return "deleteOk";
    }
    
}
