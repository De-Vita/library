package com.icia.lib.service;

import com.icia.lib.dto.BookDTO;
import com.icia.lib.repository.BookRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookService {
    @Autowired
    private BookRepository bookRepository;
    public int save(BookDTO bookDTO) {
        System.out.println("bookDTO = " + bookDTO);
        int result = bookRepository.save(bookDTO);
        return result;
    }

    public List<BookDTO> findAll() {
        List<BookDTO> bookDTOList = bookRepository.findAll();
        if (bookDTOList.size() == 0) {
            return null;
        } else {
            return bookDTOList;
        }
    }

    public BookDTO detail(Long id) {
        BookDTO bookDTO = bookRepository.detail(id);
        return bookDTO;
    }

    public int delete(Long id) {
        int i = bookRepository.delete(id);
        return i;
    }
}
