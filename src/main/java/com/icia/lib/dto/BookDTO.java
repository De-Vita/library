package com.icia.lib.dto;

import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BookDTO {
    private Long id;
    private String bookName;
    private String bookPublisher;
    private String bookAuthor;
    private int bookPrice;
}
