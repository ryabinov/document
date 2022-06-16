/*
DELETE
FROM documents;
DELETE
FROM nci_users;
DELETE
FROM documents_curators;
DELETE
FROM type_relation;
DELETE
FROM documents_relating_documents;
DELETE
FROM document_history_bpm;
DELETE
FROM nci_objects;
DELETE
FROM documents_objects;
DELETE
FROM nci_osts;
DELETE
FROM nci_pids;
DELETE
FROM nci_factory_numbers;
DELETE
FROM attachments;
DELETE
FROM documents_attachments;
DELETE
FROM nci_contractors;
DELETE
FROM nci_document_types;
*/
/*
INSERT INTO documents (id, type, date_of_creation, author_id, status, access, contract_id, lot,
                       specification_id, customer_id, supplier_id, amount, date_of_signing, document_registration_number, nci_ost_id)
VALUES ('123e4567-e89b-12d3-a456-100000000000', 'CONTRACT', '2020-01-20 10:00:00',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'COMMON', null, null,
        '123e4567-e89b-12d3-a456-300000000000', 'ORGANIZATION_1', 'FACTORY_1', '1000.01', '2020-01-21 10:00:00', 'registration_number_1',
        '123e4567-e89b-12d3-a456-000000001000'),
       ('123e4567-e89b-12d3-a456-200000000000', 'WAYBILL', '2020-01-21 10:00:00',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'COMMON', '123e4567-e89b-12d3-a456-100000000000', null,
        '123e4567-e89b-12d3-a456-400000000000', 'ORGANIZATION_2', 'FACTORY_2', '5000.00', null, null, null),
       ('123e4567-e89b-12d3-a456-300000000000', 'SPECIFICATION', '2020-01-22 10:00:00',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'COMMON', '123e4567-e89b-12d3-a456-100000000000', 'lot_1',
        '123e4567-e89b-12d3-a456-400000000000', 'ORGANIZATION_3', 'FACTORY_3', '3000.0002', null, null, null),
       ('123e4567-e89b-12d3-a456-400000000000', 'SPECIFICATION', '2020-02-23 10:00:00',
        '123e4567-e89b-12d3-a456-040000000000', 'REQUIRES_CLARIFICATION', 'FOR_INTERNAL_USE',
        null, 'lot_1', null, 'ORGANIZATION_1', 'FACTORY_1', '2000', null, null, null);*/


INSERT INTO documents (id, type_id, d_type, author_id, status, access, mtr_supply_contract_id, lot,
                       specification_id, customer_id, supplier_id, amount, date_of_signing,
                       document_registration_number, nci_ost_id, date_of_creation, serial_number)
VALUES ('123e4567-e89b-12d3-a456-100000000000', 'MTR_SUPPLY_CONTRACT', 'MTR_SUPPLY_CONTRACT',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', null, null,
        '123e4567-e89b-12d3-a456-300000000000', 'customer_1',
        'customer_2', '1000.01', '2020-01-31 10:00:00', 'registration_number_1',
        '123e4567-e89b-12d3-a456-000000001000', '2020-01-31 10:00:00', '1'),
       ('123e4567-e89b-12d3-a456-800000000000', 'MTR_SUPPLY_CONTRACT', 'MTR_SUPPLY_CONTRACT',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', null, null,
        '123e4567-e89b-12d3-a456-400000000000', 'customer_1',
        'customer_2', '1000.01', '2020-02-21 10:00:00', 'registration_number_1',
        '123e4567-e89b-12d3-a456-000000001000', '2020-02-21 10:00:00', '8'),
       ('123e4567-e89b-12d3-a456-200000000000', 'WAYBILL', 'WAYBILL',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', '123e4567-e89b-12d3-a456-100000000000',
        null,
        '123e4567-e89b-12d3-a456-400000000000', 'customer_3',
        'customer_4', '5000.00', null, null, null, '2020-02-02 10:00:00', '3'),
       ('123e4567-e89b-12d3-a456-300000000000', 'SPECIFICATION', 'SPECIFICATION',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', '123e4567-e89b-12d3-a456-100000000000',
        'lot_1',
        '123e4567-e89b-12d3-a456-400000000000', 'customer_5',
        'customer_6', '3000.0002', null, null, null, '2020-01-25 10:00:00', '2'),
       ('123e4567-e89b-12d3-a456-400000000000', 'SPECIFICATION', 'SPECIFICATION',
        '123e4567-e89b-12d3-a456-040000000000', 'REQUIRES_CLARIFICATION', 'CONFIDENTIALLY',
        null, 'lot_1', null, 'customer_7', 'customer_8', '2000',
        null, null, null, '2020-01-21 10:00:00', '4'),
       ('123e4567-e89b-12d3-a456-500000000000', 'QUALITY_DOCUMENTS', 'QUALITY_DOCUMENTS',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', '123e4567-e89b-12d3-a456-100000000000',
        null, '123e4567-e89b-12d3-a456-400000000000', 'customer_3',
        'customer_4', '5000.00', null, null, null, '2020-02-02 10:00:00', '5'),
       ('123e4567-e89b-12d3-a456-600000000000', 'MTR_INSURANCE_POLICY', 'MTR_INSURANCE_POLICY',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', '123e4567-e89b-12d3-a456-100000000000',
        null, '123e4567-e89b-12d3-a456-400000000000', 'customer_3',
        'customer_4', '5000.00', null, null, null, '2020-02-02 10:00:00', '7'),
       ('123e4567-e89b-12d3-a456-700000000000', 'PROGRESS_OF_PRODUCTION_AND_PREPARATION_FOR_SHIPMENT_OF_MTR', 'PROGRESS_OF_PRODUCTION_AND_PREPARATION_FOR_SHIPMENT_OF_MTR',
        '123e4567-e89b-12d3-a456-010000000000', 'IN_WORK', 'CONFIDENTIALLY', '123e4567-e89b-12d3-a456-100000000000',
        null, '123e4567-e89b-12d3-a456-400000000000', 'customer_3',
        'customer_4', '5000.00', null, null, null, '2020-02-02 10:00:00', '6');

INSERT INTO nci_users (id, login, password, name, last_name, role, mail)
VALUES ('123e4567-e89b-12d3-a456-010000000000', 'user_1', '12345', 'user', 'A', 'user', 'user@gmail.com'),
       ('123e4567-e89b-12d3-a456-020000000000', 'user_2', '12345', 'user', 'B', 'user', 'user@gmail.com'),
       ('123e4567-e89b-12d3-a456-030000000000', 'user_3', '12345', 'user', 'C', 'user', 'user@gmail.com'),
       ('123e4567-e89b-12d3-a456-040000000000', 'admin', '12345', 'admin', 'D', 'admin', 'admin@gmail.com');

INSERT INTO documents_curators (document_id, curator_id)
VALUES ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-020000000000'),
       ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-030000000000'),
       ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-040000000000'),
       ('123e4567-e89b-12d3-a456-400000000000', '123e4567-e89b-12d3-a456-010000000000'),
       ('123e4567-e89b-12d3-a456-400000000000', '123e4567-e89b-12d3-a456-040000000000');

INSERT INTO type_relation (id, type)
VALUES ('123e4567-e89b-12d3-a456-001000000000', 'SINGLE'),
       ('123e4567-e89b-12d3-a456-002000000000', 'OPTIONAL'),
       ('123e4567-e89b-12d3-a456-003000000000', 'MANDATORY'),
       ('123e4567-e89b-12d3-a456-004000000000', 'KIT');

INSERT INTO documents_relating_documents (document_id, relating_document_id, type_relation_id,
                                          relating_document_serial_number)
VALUES ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-100000000000',
        '123e4567-e89b-12d3-a456-001000000000', '1'),
       ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-300000000000',
        '123e4567-e89b-12d3-a456-001000000000', '3'),
       ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-400000000000',
        '123e4567-e89b-12d3-a456-002000000000', '4'),
       ('123e4567-e89b-12d3-a456-400000000000', '123e4567-e89b-12d3-a456-100000000000',
        '123e4567-e89b-12d3-a456-003000000000', '1');

INSERT INTO document_history_bpm(id, serial_number, document_id, relating_document_id, type_relation)
VALUES ('123e4567-e89b-12d3-a456-000100000000', '1', '123e4567-e89b-12d3-a456-200000000000',
        '123e4567-e89b-12d3-a456-100000000000', 'MANDATORY'),
       ('123e4567-e89b-12d3-a456-000200000000', '2', '123e4567-e89b-12d3-a456-200000000000',
        '123e4567-e89b-12d3-a456-300000000000', 'MANDATORY'),
       ('123e4567-e89b-12d3-a456-000300000000', '3', '123e4567-e89b-12d3-a456-200000000000',
        '123e4567-e89b-12d3-a456-400000000000', 'MANDATORY');

INSERT INTO nci_objects (kis_up, kis_up_id)
VALUES ('object_code_1', '1'),
       ('object_code_2', '2'),
       ('object_code_3', '3'),
       ('object_code_4', '4');

INSERT INTO documents_objects (document_id, object_kis_up)
VALUES ('123e4567-e89b-12d3-a456-100000000000', 'object_code_2'),
       ('123e4567-e89b-12d3-a456-100000000000', 'object_code_4'),
       ('123e4567-e89b-12d3-a456-200000000000', 'object_code_4'),
       ('123e4567-e89b-12d3-a456-200000000000', 'object_code_1');

INSERT INTO nci_osts (id, display_value, internal_id)
VALUES ('123e4567-e89b-12d3-a456-000000001000', 'ost_1', '1'),
       ('123e4567-e89b-12d3-a456-000000002000', 'ost_2', '2'),
       ('123e4567-e89b-12d3-a456-000000003000', 'ost_3', '3'),
       ('123e4567-e89b-12d3-a456-000000004000', 'ost_4', '4');

INSERT INTO nci_pids (id, pid, document_id)
VALUES ('123e4567-e89b-12d3-a456-000000000100', '123e4567-e89b-12d3-a456-000000100000',
        '123e4567-e89b-12d3-a456-100000000000'),
       ('123e4567-e89b-12d3-a456-000000000200', '123e4567-e89b-12d3-a456-000000200000',
        '123e4567-e89b-12d3-a456-100000000000'),
       ('123e4567-e89b-12d3-a456-000000000300', '123e4567-e89b-12d3-a456-000000300000',
        '123e4567-e89b-12d3-a456-200000000000'),
       ('123e4567-e89b-12d3-a456-000000000400', '123e4567-e89b-12d3-a456-000000400000',
        '123e4567-e89b-12d3-a456-100000000000');

INSERT INTO nci_factory_numbers (id, factory_number, document_id)
VALUES ('123e4567-e89b-12d3-a456-000000000010', '123e4567-e89b-12d3-a456-000000010000',
        '123e4567-e89b-12d3-a456-100000000000'),
       ('123e4567-e89b-12d3-a456-000000000020', '123e4567-e89b-12d3-a456-000000020000',
        '123e4567-e89b-12d3-a456-100000000000'),
       ('123e4567-e89b-12d3-a456-000000000030', '123e4567-e89b-12d3-a456-000000030000',
        '123e4567-e89b-12d3-a456-200000000000'),
       ('123e4567-e89b-12d3-a456-000000000040', '123e4567-e89b-12d3-a456-000000040000',
        '123e4567-e89b-12d3-a456-100000000000');

INSERT INTO attachments (id, serial_number, address)
VALUES ('123e4567-e89b-12d3-a456-000000000001', '1', 'address_1'),
       ('123e4567-e89b-12d3-a456-000000000002', '2', 'address_2'),
       ('123e4567-e89b-12d3-a456-000000000003', '3', 'address_3');

INSERT INTO documents_attachments (document_id, attachment_id)
VALUES ('123e4567-e89b-12d3-a456-100000000000', '123e4567-e89b-12d3-a456-000000000001'),
       ('123e4567-e89b-12d3-a456-100000000000', '123e4567-e89b-12d3-a456-000000000002'),
       ('123e4567-e89b-12d3-a456-300000000000', '123e4567-e89b-12d3-a456-000000000002'),
       ('123e4567-e89b-12d3-a456-200000000000', '123e4567-e89b-12d3-a456-000000000002');

INSERT INTO nci_customers (name, name_rus)
VALUES ('customer_1', 'Организация_1'),
       ('customer_2', 'Организация_2'),
       ('customer_3', 'Организация_3'),
       ('customer_4', 'Организация_4'),
       ('customer_5', 'Организация_5'),
       ('customer_6', 'Организация_6'),
       ('customer_7', 'Организация_7'),
       ('customer_8', 'Организация_8');

INSERT INTO nci_mtr_groups (id, name, name_rus)
VALUES ('123e4567-e89b-12d3-a456-210000000000', 'mtr_group_1',  'мтр_группа_1'),
       ('123e4567-e89b-12d3-a456-220000000000', 'mtr_group_2',  'мтр_группа_2'),
       ('123e4567-e89b-12d3-a456-230000000000', 'mtr_group_3',  'мтр_группа_3'),
       ('123e4567-e89b-12d3-a456-240000000000', 'mtr_group_4',  'мтр_группа_4'),
       ('123e4567-e89b-12d3-a456-250000000000', 'mtr_group_5',  'мтр_группа_5');

INSERT INTO nci_mtrs (id, name, name_rus)
VALUES ('123e4567-e89b-12d3-a456-310000000000', 'mtr_1',  'мтр_1'),
       ('123e4567-e89b-12d3-a456-320000000000', 'mtr_2',  'мтр_2'),
       ('123e4567-e89b-12d3-a456-330000000000', 'mtr_3',  'мтр_3'),
       ('123e4567-e89b-12d3-a456-340000000000', 'mtr_4',  'мтр_4'),
       ('123e4567-e89b-12d3-a456-350000000000', 'mtr_5',  'мтр_5');

INSERT INTO nci_phases (id, name, name_rus)
VALUES ('123e4567-e89b-12d3-a456-410000000000', 'phase_1',  'этап_1'),
       ('123e4567-e89b-12d3-a456-420000000000', 'phase_2',  'этап_2'),
       ('123e4567-e89b-12d3-a456-430000000000', 'phase_3',  'этап_3'),
       ('123e4567-e89b-12d3-a456-440000000000', 'phase_4',  'этап_4'),
       ('123e4567-e89b-12d3-a456-450000000000', 'phase_5',  'этап_5');

INSERT INTO nci_class_contracts (id, class_agr, code)
VALUES ('123e4567-e89b-12d3-a456-510000000000', 'class_agr_1',  'code_1'),
       ('123e4567-e89b-12d3-a456-520000000000', 'class_agr_2',  'code_2'),
       ('123e4567-e89b-12d3-a456-530000000000', 'class_agr_3',  'code_3'),
       ('123e4567-e89b-12d3-a456-540000000000', 'class_agr_4',  'code_4'),
       ('123e4567-e89b-12d3-a456-550000000000', 'class_agr_5',  'code_5');

INSERT INTO nci_standard_forms (id, nci_standard_form, internal_id)
VALUES ('123e4567-e89b-12d3-a456-610000000000', 'standard_form_1',  '1'),
       ('123e4567-e89b-12d3-a456-620000000000', 'standard_form_2',  '2'),
       ('123e4567-e89b-12d3-a456-630000000000', 'standard_form_3',  '3'),
       ('123e4567-e89b-12d3-a456-640000000000', 'standard_form_4',  '4'),
       ('123e4567-e89b-12d3-a456-650000000000', 'standard_form_5',  '5');

INSERT INTO nci_termination_codes (id, cancellation_code, internal_id)
VALUES ('123e4567-e89b-12d3-a456-710000000000', 'cancellation_code_1',  '1'),
       ('123e4567-e89b-12d3-a456-720000000000', 'cancellation_code_2',  '2'),
       ('123e4567-e89b-12d3-a456-730000000000', 'cancellation_code_3',  '3'),
       ('123e4567-e89b-12d3-a456-740000000000', 'cancellation_code_4',  '4'),
       ('123e4567-e89b-12d3-a456-750000000000', 'cancellation_code_5',  '5');

-- select * from documents;
-- select * from nci_users;


INSERT INTO nci_document_types (id, name, name_rus)
values ('123e4567-e89b-12d3-a456-111000000000', 'DOCUMENT', 'Документ'),
       ('123e4567-e89b-12d3-a456-112000000000', 'CONTRACT', 'Договор'),
       ('123e4567-e89b-12d3-a456-113000000000', 'MTR_SUPPLY_CONTRACT',
        'Договор на поставку МТР (включая дополнительные соглашения)'),
       ('123e4567-e89b-12d3-a456-114000000000', 'SPECIFICATION_TO_THE_MTR_CONTRACT', 'Спецификация к договору МТР'),
       ('123e4567-e89b-12d3-a456-115000000000', 'INFORMATION_ON_THE_SUPPLIERS_CHAIN_OF_OWNERSHIP',
        'Сведения о цепочке собственников Поставщика'),
       ('123e4567-e89b-12d3-a456-116000000000', 'MTP_INSURANCE_POLICY', 'Полис страхования МТР'),
       ('123e4567-e89b-12d3-a456-117000000000', 'MTR_PRODUCTION_AND_SHIPMENT_PLAN', 'План изготовления и отгрузки МТР'),
       ('123e4567-e89b-12d3-a456-118000000000',
        'INFORMATION_ON_THE_PROGRESS_OF_PRODUCTION_AND_PREPARATION_FOR_SHIPMENT_OF_MTR,',
        'Информация о ходе изготовления и подготовке к отгрузке МТР'),
       ('123e4567-e89b-12d3-a456-119000000000', 'DESIGN_DOCUMENTS_FOR_THE_SUPPLIER',
        'Конструкторская документация (для поставщика)'),
       ('123e4567-e89b-12d3-a456-120000000000', 'KMD_WORKING_DOCUMENTATION', 'Рабочая документация по КМД'),
       ('123e4567-e89b-12d3-a456-121000000000', 'ACT_OR_DOCUMENT_ON_KMD_APPROVAL', 'Акт/документ о согласовании КМД'),
       ('123e4567-e89b-12d3-a456-122000000000',
        'ACTS_OF_DETECTED_DEFECTS_OR_PRODUCT_FAILURES_WITHIN_THE_SCOPE_OF_THE_WARRANTY_CASE',
        'Акты о выявленных дефектах либо отказах продукции в рамках гарантийного случая'),
       ('123e4567-e89b-12d3-a456-123000000000', 'ACTS_OF_DEFECTS_OR_PRODUCT_FAILURES_WITHIN_THE_WARRANTY_PERIOD',
        'Акты о выявленных дефектах либо отказах продукции в рамках гарантийного случая(более 2 лет)'),
       ('123e4567-e89b-12d3-a456-124000000000', 'ACT_OF_INSPECTION_OF_PRODUCT_MANUFACTURING',
        'Акт проверки изготовления продукции'),
       ('123e4567-e89b-12d3-a456-125000000000', 'PROTOCOL_FOR_ACCEPTANCE_TESTS_OF_PRODUCTS',
        'Протокол приемо-сдаточных испытаний продукции'),
       ('123e4567-e89b-12d3-a456-126000000000', 'INFORMING_ABOUT_HAZARDOUS_SUBSTANCES',
        'Информирование об опасных веществах'),
       ('123e4567-e89b-12d3-a456-127000000000', 'NOTIFICATION_OF_CHANGE_OF_SHIPPING_DETAILS',
        'Уведомление о смене отгрузочных реквизитов'),
       ('123e4567-e89b-12d3-a456-128000000000',
        'AGREEMENT_ON_THE_SUPPLY_OF_PRODUCTS_IN_ACCOUNT_OF_WHICH_ADVANCE_PAYMENT',
        'Соглашение о поставке продукции, в счет которой уплачен аванс (пр. 6 к договору на поставку МТР)'),
       ('123e4567-e89b-12d3-a456-129000000000', 'RECONCILIATION_ACT_ON_THE_PART_OF_THE_SUPPLIER',
        'Акт сверки со стороны Поставщика'),
       ('123e4567-e89b-12d3-a456-130000000000', 'RECONCILIATION_ACT_ON_THE_PART_OF_OST', 'Акт сверки со стороны ОСТ'),
       ('123e4567-e89b-12d3-a456-131000000000', 'CARGO_CUSTOMS_DECLARATION', 'Грузовая таможенная декларация'),
       ('123e4567-e89b-12d3-a456-132000000000', 'WAYBILL', 'Транспортная накладная'),
       ('123e4567-e89b-12d3-a456-133000000000', 'SPECIFICATION', 'Спецификация'),
       ('123e4567-e89b-12d3-a456-134000000000', 'QUALITY_DOCUMENTS', 'Документы о качестве(проставление отметки ТН)');

/*
    RECEIPT_OF_CARGO_RECEPTION, //Квитанция о приеме груза
    AIR_WAYBILL, //Авиа-накладная
            RECEIPT_OF_POSTAL_ITEMS, //Квитанция о приеме почтовых отправлений
    INFORMATION_ABOUT_THE_COST_OF_ZIP_AND_INDIVIDUAL_UNITS_MTR, //Сведения о стоимости ЗИП и отдельных единиц МТР
    PASSPORT_OR_CERTIFICATE_OF_QUALITY_FOR_THE_SUPPLIER_FACTORY, //Паспорт или сертификат качества для завода поставщика
    ACT_ON_THE_RESULTS_OF_THE_INSPECTION_OF_PRODUCTS, //Акт о результатах проверки изделий
    ACT_ON_RECEIPT_OF_INVENTORY_OS_14_M_4, //Акт о приеме МТР (ОС-14, М-4)
    ACT_ON_THE_TRANSFER_OF_INVENTORY_OS_15_M_15,  //Акт о передаче МТР (ОС-15, М-15)
    ACT_OF_DETECTION_OF_DEFECTS_IN_MATERIALS_OR_EQUIPMENT_OS_16_M_7,  //Акт выявления дефектов материалов/оборудования (ОС-16, М-7)
    NOTIFICATION_OF_ACCEPTANCE_FOR_SAFE_CUSTODY,  //Уведомление о приемке на ответственное хранение
    ACT_OF_ACCEPTANCE_OF_SERVICES_RENDERED_FOR_RESPONSIBLE_STORAGE_OF_PRODUCTS_NOT_ACCEPTED_BY_THE_BUYER,  //Акт сдачи-приемки оказанных услуг по ответственному хранению не принятой Покупателем Продукции
    NOTIFICATION_SPECIFYING_THE_PLACE_AND_TIME_OF_THE_PNR_OR_SH_MR,  //Уведомление с указанием места и времени проведения ПНР/ШМР
    ACT_ON_THE_PNR_OR_SH_MR,  //Акт по ПНР/ШМР
    DEFECTIVE_ACT,  //Дефектный акт (письмо-уведомление и акт в свободной форме)
    PRICE_LIST_CONTRACT_WITH_APPENDICES_INCLUDING_APPLICATIONS_AND_SPECIFICATIONS,  //Прейскурантный договор с приложениями, включая заявки и спецификации
    APPLICATION_TO_THE_CONTRACT_AT_UNIT_RATES,  //Заявка (к договору по единичным расценкам)
            SPECIFICATION_TO_THE_CONTRACT_FOR_UNIT_RATES,  //Спецификация (к договору по единичным расценкам)

            ACT_ON_THE_RECOGNITION_OF_PRODUCTS_AS_DEFECTIVE,  //Акт о признании продукции дефектной (о признании продукции не соответствующей количеству и/или комплектности и/или марке)
    TN_SURVEILLANCE_CONTRACT,  //Договор ТН-Надзор
    OST_APPLICATION,  //Заявка ОСТ (план поставок, спецификация на поднадзорную продукцию, указанная в плане поставок)
    REPORT_ON_SUPERVISED_PRODUCTS_THAT_HAVE_UNDERGONE_TECHNICAL_SUPERVISION_AT_MANUFACTURING_ENTERPRISES,  //Отчет по поднадзорной продукции, прошедшей технический надзор на предприятиях-изготовителях
    TECHNICAL_ACT,  //Технический акт
    ACT_OF_ACCEPTANCE_OF_SERVICES_RENDERED,  //Акт сдачи-приёмки оказанных услуг
    CONTRACT_WITH_A_LOGISTICS_OPERATOR,  //Договор с логистическим оператором (перевозка и экспедирование груза)
    POWER_OF_ATTORNEY,  //Доверенность
            TNL_ORDER_PLUS_COST_APPROVAL_PROTOCOL,  //Поручение ТНЛ+Протокол согласования стоимости
    ACT_OF_SERVICES_RENDERED,  //Акт оказанных услуг
    PAYMENT_INVOICE,  //Счёт на оплату
    RAILWAY_WAYBILL,  //Транспортная железнодорожная накладная (копия) ГУ-27
    SPECIAL_PERMISSION_FOR_CTG,  //Спецразрешение на КТГ
    APPLICATION_FOR_CARGO_TRANSPORTATION_GU_12_FORM,  //Заявка на перевозку грузов (форма ГУ-12)
    INSTRUCTION_TO_ACCEPT_MTR_FOR_STORAGE,  //Поручение на прием МТР на хранение
    PROTOCOL_OF_AGREEMENT_OF_UNIT_RATES_FOR_THE_LIST_OF_SERVICES,  //Протокол согласования единичных расценок по перечню услуг
    ACT_OF_ACCEPTANCE_AND_DELIVERY_OF_SERVICES_RENDERED_BY_TNL,  //Акт приемки- сдачи оказанных услуг ТНЛ
    CONTRACT_FOR_THE_IMPLEMENTATION_OF_THE_CMR,  //Договор на выполнение СМР (включая дополнительные соглашения)
    MONTHLY_AND_DAILY_SCHEDULE_OF_WORK,  //Месячно-суточный график выполнения работ
    PROGRESS_REPORT_ON_THE_DELIVERY_OF_MATERIALS_AND_EQUIPMENT_BY_THE_CONTRACTOR,  //Отчет о ходе поставки материалов и оборудования Подрядчиком
    CONTRACTOR_S_CHAIN_OF_OWNERSHIP,  //Цепочка собственников Подрядчика
    PLAN_FOR_INVOLVING_CO_EXECUTORS_FROM_AMONG_SMALL_AND_MEDIUM_SIZED_BUSINESSES_IN_THE_EXECUTION_OF_THE_CONTRACT,  //План привлечения Соисполнителей из числа субъектов малого и среднего предпринимательства к исполнению контракта
    INFORMATION_ABOUT_THE_CONCLUSION_OF_THE_CONTRACT_WITH_THE_CO_EXECUTOR_FROM_AMONG_SMALL_AND_MEDIUM_SIZED_BUSINESSES,  //Сведения о заключении договора с Соисполнителем из числа субъектов малого и среднего предпринимательства
    INFORMATION_ON_CO_EXECUTORS,  //Информация по Соисполнителям
    BANK_GUARANTEE,  //Банковская гарантия
    CMR_INSURANCE_POLICY,  //Полис страхования СМР
    STATEMENT_OF_PROCESSING_OF_CUSTOMER_S_GOODS_MADE_ON_DELIVERY,  //Ведомость переработки давальческих материалов поставки заказчика
    REGISTER_OF_MOUNTED_EQUIPMENT_OF_THE_CUSTOMER_S_DELIVERY,  //Реестр смонтированного оборудования поставки Заказчика
    REGISTER_OF_MOUNTED_EQUIPMENT_OF_THE_CONTRACTOR_S_DELIVERY,  //Реестр смонтированного оборудования поставки Подрядчика
    STATEMENT_OF_THE_EQUIPMENT_INSTALLATION_OF_WHICH_IS_STARTED,  //Ведомость оборудования, монтаж которого начат
    STATEMENT_OF_ACCOUNTING_OF_EQUIPMENT_SUPPLIED_BY_THE_CONTRACTOR,  //Ведомость учета поставленных Подрядчиком оборудования,
        ACT_OF_RECEIPT_OF_TANGIBLE_ASSETS_RECEIVED_DURING_DISASSEMBLY_AND_DISMANTLING_OF_FIXED_ASSETS_M_35,  //Акт об оприходовании материальных ценностей, полученных при разборке и демонтаже основных средств (М-35)
    INVOICE,  //Счёт-фактура (в т.ч. корректировочный)
            INVOICE_FOR_PAYMENT,  //Счет на оплату
    TORG_12_BILL_OF_LADING,  //ТОРГ 12, товарная накладная
    KS_2_AN_ACT_OF_ACCEPTANCE_OF_WORK_PERFORMED,  //КС-2, акт о приемке выполненных работ (в т.ч. корректировочный)
    KC_3_CERTIFICATE_OF_THE_COST_OF_WORK_PERFORMED_AND_COSTS,  //КС-3, справка о стоимости выполненных работ и затрат (в т.ч. корректировочный)
    KS_6_A_LOG_OF_COMPLETED_WORK,  //КС-6а, журнал учета выполненных работ
    ACT_OF_ACCEPTANCE_TRANSFER_OF_MATERIAL_ASSETS_FOR_STORAGE,  //Акт о приеме-передаче товарно-материальных ценностей на хранение (Типовая форма № МХ-1)
    ACT_ON_THE_RETURN_OF_INVENTORY_ITEMS_DEPOSITED,  //Акт о возврате товарно-материальных ценностей, сданных на хранение (Типовая форма № МХ-3)
    AGREEMENT_ON_THE_DEFINITION_OF_WORK_FOR_WHICH_AN_ADVANCE_PAYMENT_WAS_MADE,  //Соглашение об определении работ (поставок материалов),в счет которых уплачен аванс (часть аванса)
    BILL_OF_SALE_OF_MATERIALS_TO_EXTERNAL_PARTIES,  //Накладная на отпуск материалов на сторону (Типовая форма М-15)
    FORM_KC_11_ACT_OF_ACCEPTANCE_OF_COMPLETED_CONSTRUCTION,  //Форма КС-11, акт приемки законченного строительством Объекта
    FORM_KS_14_ACT_OF_ACCEPTANCE_OF_THE_COMPLETED_CONSTRUCTION_OF_THE_FACILITY_BY_THE_ACCEPTANCE_COMMISSION,  //Форма КС-14, акт приемки законченного строительством Объекта приемочной комиссией
    FORM_F_36_THE_ACT_OF_ACCEPTANCE_INTO_OPERATION_OF_THE_COMPLETED_OVERHAUL_OF_THE_OBJECT,  //Форма Ф-36, акт приемки в эксплуатацию законченного капитальным ремонтом объекта
    FORM_OS_3_ACT_OF_ACCEPTANCE_OF_REPAIRED_RECONSTRUCTED_MODERNIZED_FIXED_ASSETS,  //Форма ОС-3, Акт о приеме-сдаче отремонтированных, реконструированных, модернизированных объектов основных средств
    LIST_OF_EQUIPMENT_TRANSFERRED_TO_PROVIDE_WORK_TO_THE_CONTRACTOR,  //Перечень оборудования, передаваемого для обеспечения работ подрядной организации
    TRANSFER_AND_ACCEPTANCE_ACT_OF_THE_EQUIPMENT_TRANSFERRED_TO_SUPPORT_THE_WORK,  //Акт приема-передачи Оборудования, передаваемого для обеспечения работ
    ACT_OF_SET_OFF_OF_MUTUAL_CLAIMS_ON_THE_PART_OF_THE_COUNTERPARTY,  //Акт зачета взаимных требований со стороны Контрагента
    ACT_OF_SET_OFF_OF_RECIPROCAL_CLAIMS_ON_THE_PART_OF_OST,  //Акт зачета взаимных требований со стороны ОСТ
    WORKING_DOCUMENTATION_FOR_KMD,  //Рабочая документация по КМД
    DESIGN_DOCUMENTATION_FOR_THE_CONTRACTOR,  //Конструкторская документация для контрагента
    REMARKS_ON_THE_WORKING_DOCUMENTATION_OF_KMD,  //Замечания к рабочей документации по КМД
    ACT_OR_DOCUMENT_ON_THE_APPROVAL_OF_KMD,  //Акт/документ о согласовании КМД
    PROJECT_OF_WORK_EXECUTION,  //Проект производства работ (ППР)
    CLAIM_OR_DEMAND_FOR_LIQUIDATED_DAMAGES_INITIATOR_OST,  //Претензия / требование об уплате неустойки (инициатор - ОСТ)
    CLAIM_OR_DEMAND_FOR_LIQUIDATED_DAMAGES_INITIATOR_CONTRACTOR,  //Претензия / требование об уплате неустойки (инициатор - Контрагент)
    PAYMENT_DOCUMENT_ON_PAYMENT_OF_PENALTIES,  //Платежный документ об оплате неустойки
    CLAIMS_SETTLEMENT_DOCUMENT,  //Документ об урегулировании претензионных требовании
    GENERAL_DOCUMENT_INFORMATION_ON_FORENSIC_ACTIVITIES,  //Общий документ -сведения о судебно-исковой деятельности (постановления, решения, определения суда и т.д.)
    ACT_ON_THE_NEED_TO_PERFORM_CERTIFICATION_OF_ADDITIONAL_OR_EXCLUDED_WORKS_KOR_01,  //Акт о необходимости выполнения (освидетельствования) дополнительных/исключаемых работ (КОР-01)
    STATEMENT_OF_DEFECTS_OR_DEFECTS_DETECTED_WITHIN_THE_WARRANTY_PERIOD,  //Акт о выявленных дефектах/недостатках в Гарантийный срок
    STATEMENT_OF_RECTIFICATION_OF_DEFECTS_OR_DEFECTS_WITHIN_THE_WARRANTY_PERIOD,  //Акт об устранении дефектов/недостатков в Гарантийный срок
    SCHEDULE_FOR_MOBILIZATION_OF_HUMAN_AND_TECHNICAL_RESOURCES_AT_THE_SITE_IN_ORDER_TO_ELIMINATE_DEFECTS_OR_DEFICIENCIES,  //График мобилизации людских и технических ресурсов на объект в целях устранения дефектов/недостатков
    SCHEDULE_OF_ELIMINATION_OF_DETECTED_DEFECTS_OR_DEFECTS_DURING_THE_WARRANTY_PERIOD,  //График устранения выявленных дефектов/недостатков в гарантийный срок
    WARNING_OR_RECOMMENDATION_OF_DETECTED_VIOLATIONS_OF_THE_SK,  //Предупреждение/предписание о выявленных нарушениях СК
    NOTIFICATION_OF_RECTIFICATION_OF_IDENTIFIED_VIOLATIONS_OF_THE_SK,  //Уведомление об устранении выявленных нарушений СК
    PASSPORT_OR_CERTIFICATE_OF_QUALITY_FOR_THE_COUNTERPARTY, //Паспорт или сертификат качества
    ACT_OF_INCOMING_INSPECTION_OF_MATERIALS_AND_EQUIPMENT,  //Акт входного контроля материалов и оборудования
    NOTICE_OF_OFFSET_OF_COLLATERAL_AMOUNT,  //Уведомление о зачете суммы обеспечения
    NOTIFICATION_OF_OFFSET_OF_AMOUNT_OF_ADVANCE_PAYMENT_ISSUED,  //Уведомление о зачете суммы выданного аванса
    NOTICE_OF_SECURITY_RETAINER_IN_LIEU_OF_CONTRACT_SECURITY,  //Уведомление о гарантийном удержании взамен обеспечения по контракту
    STATEMENT_OF_THE_COST_OF_WORK_AND_SERVICES_PERFORMED_MATERIALS_AND_EQUIPMENT_DELIVERED //Справка о стоимости выполненных работ и услуг, поставленных материалов и оборудования); */

