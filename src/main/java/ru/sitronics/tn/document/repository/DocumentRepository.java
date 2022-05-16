package ru.sitronics.tn.document.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;
import ru.sitronics.tn.document.model.Document;

import java.time.LocalDateTime;
import java.util.List;

@Repository                                                                //JpaSpecificationExecutor
public interface DocumentRepository extends JpaRepository<Document, String>, JpaSpecificationExecutor<Document>/*, QuerydslPredicateExecutor<Document> */{

  //  Document findByRsql(long number);

  List<Document> findBySerialNumber(Long serialNumber);

/*    List<Document> findBySerialNumberContaining(long serialNumber);

    List<Document> findBySerialNumberOrderByAuthor(long serialNumber);

    List<Document> findBySerialNumberOrderByCurators(long serialNumber);

    List<Document> findByDateOfCreationBetween(LocalDateTime startDate, LocalDateTime endDate);

    List<Document> findByDateOfCreationGreaterThanEqual(LocalDateTime startDate);

    List<Document> findByDateOfCreationLessThanEqual(LocalDateTime startDate);*/
}
