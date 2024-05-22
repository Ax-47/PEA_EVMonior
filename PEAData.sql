CREATE DATABASE IF NOT EXISTS PEADatabase;
USE PEADatabase;
create table IF NOT EXISTS ElectricityData
(
    ID             int auto_increment primary key,
    CRSG           varchar(50)    null,
    RSG            varchar(50)    null,
    BP             varchar(50)    null,
    ContractAccM_I varchar(50)    null,
    Installation   varchar(50)    null,
    Period         date           null,
    KVA            int            null,
    TSIC           varchar(50)    null,
    RATECAT        varchar(50)    null,
    RATEBILL       decimal(18, 2) null,
    MRU            varchar(50)    null,
    MaterialNo     varchar(50)    null,
    KW_PK          int            null,
    KW_PP_OP       decimal(18, 2) null,
    KW_OP_H        int            null,
    KVAR_MAX       int            null,
    KWH_PK         int            null,
    KWH_PP_OP      decimal(18, 2) null,
    KWH_OP_H       int            null,
    KWH_TOT        int            null,
    KWH_PEA        int            null,
    AMT_KW_PK      decimal(18, 2) null,
    AMT_KW_PP      decimal(18, 2) null,
    AMT_PF         decimal(18, 2) null,
    AMT_KWH_PK     decimal(18, 2) null,
    AMT_KWH_OP     decimal(18, 2) null,
    AMT_KWH_TOT    decimal(18, 2) null,
    AMT_SERVICE    decimal(18, 2) null,
    AMT_FT         decimal(18, 2) null,
    AMT_BOI        decimal(18, 2) null,
    AMT_MIN        decimal(18, 2) null,
    AMT_BILL       decimal(18, 2) null,
    AMT_VAT        decimal(18, 2) null,
    AMT_INVOICE    decimal(18, 2) null,
    TRNLOSS        decimal(18, 2) null,
    CT             varchar(50)    null,
    VT             varchar(50)    null
);
create table Requests
(
    ID           int auto_increment primary key,
    PACode       varchar(6)   not null,
    CA           varchar(12)  not null,
    RequestID    varchar(20)  not null,
    TypeRequest  varchar(100) not null,
    ReceivedDate date         not null,
    Name         varchar(255) not null,
    Address      varchar(255) not null,
    Description  varchar(255) not null,
    Amount       int          not null
);

-- Insert fake data into ElectricityData table
INSERT INTO ElectricityData (CRSG, RSG, BP, ContractAccM_I, Installation, Period, KVA, TSIC, RATECAT, RATEBILL, MRU, MaterialNo, KW_PK, KW_PP_OP, KW_OP_H, KVAR_MAX, KWH_PK, KWH_PP_OP, KWH_OP_H, KWH_TOT, KWH_PEA, AMT_KW_PK, AMT_KW_PP, AMT_PF, AMT_KWH_PK, AMT_KWH_OP, AMT_KWH_TOT, AMT_SERVICE, AMT_FT, AMT_BOI, AMT_MIN, AMT_BILL, AMT_VAT, AMT_INVOICE, TRNLOSS, CT, VT)
VALUES
    ('CRSG001', 'RSG001', 'BP001', 'AccM001', 'Install001', '2023-01-01', 100, 'TSIC001', 'CAT1', 100.50, 'MRU001', 'Mat001', 50, 75.25, 120, 30, 500, 625.75, 150, 1300, 1200, 200.75, 150.50, 50.00, 75.75, 100.25, 276.50, 20.00, 10.00, 5.00, 3.50, 300.00, 21.00, 321.00, 5.25, 'CT001', 'VT001'),
    ('CRSG002', 'RSG002', 'BP002', 'AccM002', 'Install002', '2023-02-01', 150, 'TSIC002', 'CAT2', 120.75, 'MRU002', 'Mat002', 75, 95.50, 150, 35, 600, 725.50, 170, 1400, 1300, 220.75, 170.50, 60.00, 85.75, 110.25, 296.50, 30.00, 20.00, 15.00, 6.50, 320.00, 23.00, 343.00, 6.50, 'CT002', 'VT002'),
    ('CRSG003', 'RSG003', 'BP003', 'AccM003', 'Install003', '2023-03-01', 200, 'TSIC003', 'CAT3', 140.00, 'MRU003', 'Mat003', 100, 115.00, 180, 40, 700, 825.00, 190, 1500, 1400, 240.75, 190.50, 70.00, 95.75, 120.25, 316.50, 40.00, 30.00, 25.00, 9.50, 340.00, 25.00, 365.00, 7.75, 'CT003', 'VT003'),
    ('CRSG004', 'RSG004', 'BP004', 'AccM004', 'Install004', '2023-04-01', 250, 'TSIC004', 'CAT4', 160.25, 'MRU004', 'Mat004', 125, 135.25, 210, 45, 800, 925.25, 210, 1600, 1500, 260.75, 210.50, 80.00, 105.75, 130.25, 336.50, 50.00, 40.00, 35.00, 12.50, 360.00, 27.00, 387.00, 9.00, 'CT004', 'VT004'),
    ('CRSG005', 'RSG005', 'BP005', 'AccM005', 'Install005', '2023-05-01', 300, 'TSIC005', 'CAT5', 180.50, 'MRU005', 'Mat005', 150, 155.50, 240, 50, 900, 1025.50, 230, 1700, 1600, 280.75, 230.50, 90.00, 115.75, 140.25, 356.50, 60.00, 50.00, 45.00, 15.50, 380.00, 29.00, 409.00, 10.25, 'CT005', 'VT005'),
    ('CRSG006', 'RSG006', 'BP006', 'AccM006', 'Install006', '2023-06-01', 350, 'TSIC006', 'CAT6', 200.75, 'MRU006', 'Mat006', 175, 175.75, 270, 55, 1000, 1125.75, 250, 1800, 1700, 300.75, 250.50, 100.00, 125.75, 150.25, 376.50, 70.00, 60.00, 55.00, 18.50, 400.00, 31.00, 431.00, 11.50, 'CT006', 'VT006'),
    ('CRSG007', 'RSG007', 'BP007', 'AccM007', 'Install007', '2023-07-01', 400, 'TSIC007', 'CAT7', 220.00, 'MRU007', 'Mat007', 200, 196.00, 300, 60, 1100, 1226.00, 270, 1900, 1800, 320.75, 270.50, 110.00, 135.75, 160.25, 396.50, 80.00, 70.00, 65.00, 21.50, 420.00, 33.00, 453.00, 12.75, 'CT007', 'VT007'),
    ('CRSG008', 'RSG008', 'BP008', 'AccM008', 'Install008', '2023-08-01', 450, 'TSIC008', 'CAT8', 240.25, 'MRU008', 'Mat008', 225, 216.25, 330, 65, 1200, 1326.25, 290, 2000, 1900, 340.75, 290.50, 120.00, 145.75, 170.25, 416.50, 90.00, 80.00, 75.00, 24.50, 440.00, 35.00, 475.00, 14.00, 'CT008', 'VT008'),
    ('CRSG009', 'RSG009', 'BP009', 'AccM009', 'Install009', '2023-09-01', 500, 'TSIC009', 'CAT9', 260.50, 'MRU009', 'Mat009', 250, 236.50, 360, 70, 1300, 1426.50, 310, 2100, 2000, 360.75, 310.50, 130.00, 155.75, 180.25, 436.50, 100.00, 90.00, 85.00, 27.50, 460.00, 37.00, 497.00, 15.25, 'CT009', 'VT009'),
    ('CRSG010', 'RSG010', 'BP010', 'AccM010', 'Install010', '2023-10-01', 550, 'TSIC010', 'CAT10', 280.75, 'MRU010', 'Mat010', 275, 256.75, 390, 75, 1400, 1526.75, 330, 2200, 2100, 380.75, 330.50, 140.00, 165.75, 190.25, 456.50, 110.00, 100.00, 95.00, 30.50, 480.00, 39.00, 519.00, 16.50, 'CT010', 'VT010');

INSERT INTO Requests (PACode, CA, RequestID, TypeRequest, ReceivedDate, Name, Address, Description, Amount)
VALUES
    ('ABC001', 'CA123456', 'REQ001', 'Maintenance', '2024-05-01', 'John Doe', '123 Main St', 'Repair request', 500),
    ('DEF002', 'CA654321', 'REQ002', 'Upgrade', '2024-05-02', 'Jane Smith', '456 Elm St', 'System upgrade', 1000),
    ('GHI003', 'CA987654', 'REQ003', 'Service', '2024-05-03', 'James Brown', '789 Oak St', 'Network setup', 750),
    ('JKL004', 'CA246813', 'REQ004', 'Support', '2024-05-04', 'Emily Davis', '101 Pine St', 'Tech support', 200),
    ('MNO005', 'CA369258', 'REQ005', 'Installation', '2024-05-05', 'Michael Johnson', '202 Cedar St', 'Software installation', 300),
    ('PQR006', 'CA481516', 'REQ006', 'Consulting', '2024-05-06', 'Sarah Wilson', '303 Maple St', 'IT consulting', 1500),
    ('STU007', 'CA753159', 'REQ007', 'Training', '2024-05-07', 'Robert Lee', '404 Birch St', 'Employee training', 1200),
    ('VWX008', 'CA852963', 'REQ008', 'Development', '2024-05-08', 'Laura Martinez', '505 Walnut St', 'App development', 2000),
    ('YZA009', 'CA946728', 'REQ009', 'Testing', '2024-05-09', 'Christopher Brown', '606 Pineapple St', 'Software testing', 400),
    ('BCD010', 'CA159487', 'REQ010', 'Analysis', '2024-05-10', 'Amanda Taylor', '707 Cherry St', 'Data analysis', 800);
