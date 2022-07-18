package ru.sitronics.tn.document.dto;

import lombok.Data;

import java.util.UUID;

@Data
public class DocumentRelationDto {

    private UUID id;

    private String documentId;

    private String linkDocument;

    private String typeRelation;

}
