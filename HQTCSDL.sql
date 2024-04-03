--Tạo các bảng
--Bảng Sách
CREATE TABLE SACH (
    MSSACH SMALLINT PRIMARY KEY, 
    TENSACH NVARCHAR(50), 
    NAMXB SMALLDATETIME, 
    SL TINYINT 
);
--Bảng Tác Giả
CREATE TABLE TACGIA (
    MATG SMALLINT PRIMARY KEY, 
    TENTACGIA NVARCHAR(50), 
    DIACHI NVARCHAR(100)
);
--Bảng Nhà Xuất Bản
CREATE TABLE NHAXB (
    MAXNB SMALLINT PRIMARY KEY, 
    TENNXB NVARCHAR(50), 
    DIACHI NVARCHAR(100)
);
--Bảng Loại Sách
CREATE TABLE MALOAI (
    MALOAI SMALLINT PRIMARY KEY, 
    TENLOAI NVARCHAR(50), 
   
);
--Bảng Ngôn ngữ
CREATE TABLE NGONNGU (
    MANN SMALLINT PRIMARY KEY, 
    TENNN NVARCHAR(20), 
);
--Bảng Kho
CREATE TABLE KHO (
    MAKHO SMALLINT PRIMARY KEY, 
    TENKHO NVARCHAR(20), 
	SUCCHUA SMALLINT
);
--Bảng Sinh Viên
CREATE TABLE SINHVIEN (
    MASV SMALLINT PRIMARY KEY, 
    TENSV NVARCHAR(50), 
	LOP VARCHAR(10),
	SODT VARCHAR(12),
	DIACHI NVARCHAR(100)
);
--Bảng Phiếu Mượn
CREATE TABLE PHIEUMUON (
    MAPM SMALLINT PRIMARY KEY, 
    NGAYMUON SMALLDATETIME,
	NGAYTRADUKIEN SMALLDATETIME
);
--Bảng SACH_TACGIA
CREATE TABLE SACH_TACGIA (
    MSSACH SMALLINT,
    MATG SMALLINT,
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH),
    FOREIGN KEY (MATG) REFERENCES TACGIA(MATG)
);
--. Bảng SACH_NHAXB
CREATE TABLE SACH_NHAXB (
    MSSACH SMALLINT,
    MAXNB SMALLINT,
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH),
    FOREIGN KEY (MAXNB) REFERENCES NHAXB(MAXNB)
);
--Bảng SACH_LOAISACH
CREATE TABLE SACH_LOAISACH (
    MSSACH SMALLINT,
    MALOAI SMALLINT,
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH),
    FOREIGN KEY (MALOAI) REFERENCES MALOAI(MALOAI)
);
--Bảng SACH_NGONNGU
CREATE TABLE SACH_NGONNGU (
    MSSACH SMALLINT,
    MANN SMALLINT,
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH),
    FOREIGN KEY (MANN) REFERENCES NGONNGU(MANN)
);
--Bảng KHO_SACH
CREATE TABLE KHO_SACH (
    MAKHO SMALLINT,
    MSSACH SMALLINT,
    FOREIGN KEY (MAKHO) REFERENCES KHO(MAKHO),
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH)
);
--SINHVIEN_SACH
CREATE TABLE SINHVIEN_SACH (
    MASV SMALLINT,
    MSSACH SMALLINT,
    FOREIGN KEY (MASV) REFERENCES SINHVIEN(MASV),
    FOREIGN KEY (MSSACH) REFERENCES SACH(MSSACH)
);
--SINHVIEN_PHIEUMUON
CREATE TABLE SINHVIEN_PHIEUMUON (
    MASV SMALLINT,
    MAPM SMALLINT,
    FOREIGN KEY (MASV) REFERENCES SINHVIEN(MASV),
    FOREIGN KEY (MAPM) REFERENCES PHIEUMUON(MAPM)
); 
--Nhập dữ liệu bảng SACH
INSERT INTO SACH (MSSACH, TENSACH, NAMXB, SL) VALUES
('11000', 'Code Complete 2', 2000, 5),
('11001', 'The Mythical Man-Month', 2001, 8),
('11002', 'Don’t Make Me Think', 2002, 3),
('11003', 'Peopleware', 2003, 6),
('11004', 'The Design of Everyday Things', 2004, 2),
('11005', 'Programming Pearls', 2005, 7),
('11006', 'The Pragmatic Programmer', 2006, 4),
('11007', 'Designing Web Usability', 2007, 9),
('11008', 'Yellow book – Rob Miles', 2001, 8),
('11009', 'C++ GUI Programming', 2002, 3),
('11010', 'Clean code', 2003, 6),
('11011', 'Core HTML5 Canvas', 2004, 2),
('11012', 'About Face 3.0', 2005, 7),
('11013', 'Mastering Regular Expressions', 2006, 4),
('11014', 'Advanced Linux Programing ', 2007, 9);

--Nhập liệu bảng TACGIA
INSERT INTO TACGIA (MATG, TENTACGIA, DIACHI) VALUES
('12000', 'Steve McConnell', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12001', 'Fred Brooks', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12002', 'Steve Krug', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12003', 'Tom DeMarco, Timothy R. Lister', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12004', 'Donald Norman', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12005', 'Jon Bentley', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12006', 'Dave Thomas', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12007', 'Jakob Nielsen', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12008', 'Amitava Kumar', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12009', 'Jasmin Blanchette', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12010', 'Robert C. Martin ', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12011', 'David Geary', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12012', 'Cooper, Alan, Reimann, Robert, Cronin, David', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12013', 'Jeffrey EF Friedl', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('12014', 'Mark L.Mitchell, Alex Samual, Jeffey Oldham', N'371 đường Nguyễn Kiệm Quận Gò Vấp');

--Nhập liệu bảng NHAXB
INSERT INTO NHAXB (MAXNB, TENNXB, DIACHI) VALUES
('13000', N'Nhà xuất bản Đại học Oxford', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('13001', N'Nhà xuất bản Đại học Cambridge', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('13002', N'Nhà xuất bản Usborne', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
('13003', N'Nhà xuất bản DK', N'371 đường Nguyễn Kiệm Quận Gò Vấp');

--Nhập liệu bảng MALOAI
INSERT INTO MALOAI (MALOAI, TENLOAI) VALUES
('14000', N'CODE Cơ bản'),
('14001', N'Nâng cao');

--Nhập liệu bảng NGONNGU
INSERT INTO NGONNGU (MANN, TENNN) VALUES
(15000, N'Tiếng Anh'),
(15001, N'Tiếng Việt');

--Nhập liệu bảng SINHVIEN
INSERT INTO SINHVIEN (MASV, TENSV, LOP, SODT, DIACHI) VALUES
(16000, N'Trần Văn A', 'K15DCPM07', '0123456789', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
(16001, N'Nguyễn Thị B', 'K15DCPM07', '0987654321', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
(16002, N'Lê Minh C', 'K15DCPM07', '0369852147', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
(16003, N'Phạm Thị D', 'K15DCPM07', '0765432981', N'371 đường Nguyễn Kiệm Quận Gò Vấp'),
(16004, N'Huỳnh Văn E', 'K15DCPM07', '0932145678', N'371 đường Nguyễn Kiệm Quận Gò Vấp');

--Nhập liệu bảng KHO
INSERT INTO KHO (MAKHO, TENKHO, SUCCHUA) VALUES
(17000, N'Kho số 1', 300),
(17001, N'Kho số 2', 300);

--Nhập liệu bảng PHIEUMUON
INSERT INTO PHIEUMUON (MAPM, NGAYMUON, NGAYTRADUKIEN) VALUES
(18000, '2024-10-01', '2024-10-23'),
(18001, '2024-10-02', '2024-10-24'),
(18002, '2024-10-03', '2024-10-25'),
(18003, '2024-10-04', '2024-10-26'),
(18004, '2024-10-05', '2024-10-27'),
(18005, '2024-10-06', '2024-10-28'),
(18006, '2024-10-07', '2024-10-29');

--Nhập liệu bảng SACH_TACGIA
INSERT INTO SACH_TACGIA (MSSACH, MATG) VALUES
(11000, 12000),
(11001, 12001),
(11002, 12002),
(11003, 12003),
(11004, 12004),
(11005, 12005),
(11006, 12006),
(11007, 12007),
(11008, 12008),
(11009, 12009),
(11010, 12010),
(11011, 12011),
(11012, 12012),
(11013, 12013),
(11014, 12014);

--Nhập liệu bảng SACH_NHAXB
INSERT INTO SACH_NHAXB (MSSACH, MAXNB) VALUES
(11000, 13000),
(11001, 13001),
(11002, 13002),
(11003, 13003),
(11004, 13000),
(11005, 13001),
(11006, 13002),
(11007, 13003),
(11008, 13000),
(11009, 13001),
(11010, 13002),
(11011, 13003),
(11012, 13000),
(11013, 13001),
(11014, 13002);

--Nhập liệu bảng SACH_LOAISACH
INSERT INTO SACH_LOAISACH (MSSACH, MALOAI) VALUES
(11000, 14000),
(11001, 14001),
(11002, 14000),
(11003, 14001),
(11004, 14000),
(11005, 14001),
(11006, 14000),
(11007, 14001),
(11008, 14000),
(11009, 14001),
(11010, 14000),
(11011, 14001),
(11012, 14000),
(11013, 14001),
(11014, 14000);

--Nhập liệu bảng SACH_NGONNGU
INSERT INTO SACH_NGONNGU (MSSACH, MANN) VALUES
(11000, 15000),
(11001, 15001),
(11002, 15000),
(11003, 15001),
(11004, 15000),
(11005, 15001),
(11006, 15000),
(11007, 15001),
(11008, 15000),
(11009, 15001),
(11010, 15000),
(11011, 15001),
(11012, 15000),
(11013, 15001),
(11014, 15000);

--Nhập liệu bảng KHO_SACH
INSERT INTO KHO_SACH (MAKHO, MSSACH) VALUES
(17000, 11000),
(17001, 11001),
(17000, 11002),
(17001, 11003),
(17000, 11004),
(17001, 11005),
(17000, 11006),
(17001, 11007),
(17000, 11008),
(17001, 11009),
(17000, 11010),
(17001, 11011),
(17000, 11012),
(17001, 11013),
(17000, 11014);

--Nhập liệu bảng SINHVIEN_SACH
INSERT INTO SINHVIEN_SACH (MASV, MSSACH) VALUES
(16000, 11000),
(16001, 11001), 
(16002, 11002), 
(16003, 11003),
(16004, 11004), 
(16000, 11005), 
(16001, 11006), 
(16002, 11007), 
(16003, 11008), 
(16004, 11009), 
(16000, 11010), 
(16001, 11011), 
(16002, 11012), 
(16003, 11013), 
(16004, 11014);

--Nhập liệu bảng PHIEUMUON_SINHVIEN
INSERT INTO SINHVIEN_PHIEUMUON (MASV, MAPM) VALUES
(16000, 18000),
(16001, 18001),
(16002, 18002),
(16003, 18003),
(16004, 18004),
(16000, 18005);

--Tạo các câu lệnh truy vấn 
--Truy vấn để lấy thông tin về tất cả các sinh viên và số sách mà họ đã mượn:
SELECT SV.MASV, SV.TENSV, COUNT(SS.MSSACH) AS SO_SACH_MUON
FROM SINHVIEN SV
LEFT JOIN SINHVIEN_SACH SS ON SV.MASV = SS.MASV
GROUP BY SV.MASV, SV.TENSV;

--Truy vấn để lấy danh sách các cuốn sách và tác giả tương ứng:
SELECT S.TENSACH, TG.TENTACGIA
FROM SACH S
JOIN SACH_TACGIA ST ON S.MSSACH = ST.MSSACH
JOIN TACGIA TG ON ST.MATG = TG.MATG;

--Truy vấn để lấy thông tin về các cuốn sách mà nhà xuất bản có mã MAXNB = 13000 đã xuất bản:
SELECT S.*
FROM SACH S
JOIN SACH_NHAXB SN ON S.MSSACH = SN.MSSACH
WHERE SN.MAXNB = 13000;

--Liệt kê tất cả các sách có trong kho số 1:
SELECT S.* 
FROM SACH S
JOIN KHO_SACH KS ON S.MSSACH = KS.MSSACH
WHERE KS.MAKHO = 17000;

--Liệt kê số lượng sách của mỗi ngôn ngữ:
SELECT NN.TENNN, COUNT(SN.MSSACH) AS SO_LUONG_SACH
FROM NGONNGU NN
JOIN SACH_NGONNGU SN ON NN.MANN = SN.MANN
GROUP BY NN.TENNN;

--Tính tổng số sách mỗi sinh viên đã mượn:
SELECT SV.MASV, SV.TENSV, COUNT(SS.MSSACH) AS SO_SACH_MUON
FROM SINHVIEN SV
JOIN SINHVIEN_SACH SS ON SV.MASV = SS.MASV
GROUP BY SV.MASV, SV.TENSV;


--store procedures
--Stored Procedure để thêm sách mới:
GO
CREATE PROCEDURE ThemSach
    @TENSACH NVARCHAR(50),
    @NAMXB SMALLDATETIME,
    @SL TINYINT
AS
BEGIN
    INSERT INTO SACH (TENSACH, NAMXB, SL) VALUES (@TENSACH, @NAMXB, @SL);
END;

--Stored Procedure để cập nhật thông tin sách:
GO
CREATE PROCEDURE CapNhatThongTinSach
    @MSSACH SMALLINT,
    @TENSACH NVARCHAR(50),
    @NAMXB SMALLDATETIME,
    @SL TINYINT
AS
BEGIN
    UPDATE SACH
    SET TENSACH = @TENSACH, NAMXB = @NAMXB, SL = @SL
    WHERE MSSACH = @MSSACH;
END;

--Stored Procedure để xóa sách:
GO
CREATE PROCEDURE XoaSach
    @MSSACH SMALLINT
AS
BEGIN
    DELETE FROM SACH WHERE MSSACH = @MSSACH;
END;

--Stored Procedure để lấy thông tin chi tiết của một cuốn sách:
GO
CREATE PROCEDURE ThongTinChiTietSach
    @MSSACH SMALLINT
AS
BEGIN
    SELECT *
    FROM SACH
    WHERE MSSACH = @MSSACH;
END;

--Stored Procedure để lấy danh sách các sách trong một kho:
GO
CREATE PROCEDURE SachTrongKho
    @MAKHO SMALLINT
AS
BEGIN
    SELECT S.*
    FROM SACH S
    JOIN KHO_SACH KS ON S.MSSACH = KS.MSSACH
    WHERE KS.MAKHO = @MAKHO;
END;

--Stored Procedure để kiểm tra cho sinh viên mượn sách
GO
CREATE PROCEDURE MuonSach
    @MASV SMALLINT,
    @MAPM SMALLINT,
    @NGAYMUON SMALLDATETIME,
    @NGAYTRADUKIEN SMALLDATETIME
AS
BEGIN
    IF (SELECT COUNT(*) FROM SINHVIEN_PHIEUMUON WHERE MASV = @MASV AND MAPM = @MAPM) = 0
    BEGIN
        INSERT INTO SINHVIEN_PHIEUMUON (MASV, MAPM) VALUES (@MASV, @MAPM);
        PRINT 'Mượn sách thành công cho sinh viên có mã ' + CAST(@MASV AS NVARCHAR(10));
    END
    ELSE
    BEGIN
        PRINT 'Sinh viên đã mượn sách này.';
    END
END;

--Stored procedure có chức năng kiểm tra số lượng sách tồn kho trước khi mượn. Đối với mỗi cuốn sách cần mượn
GO
CREATE PROCEDURE KiemTraTonKhoTruocKhiMuon
    @MAKHO SMALLINT,
    @MSSACH SMALLINT,
    @SL_TON INT OUTPUT,
    @MESSAGE NVARCHAR(200) OUTPUT
AS
BEGIN
    DECLARE @SOLUONG INT;

    SELECT @SOLUONG = S.SL
    FROM SACH S
    INNER JOIN KHO_SACH KS ON S.MSSACH = KS.MSSACH
    WHERE KS.MAKHO = @MAKHO AND S.MSSACH = @MSSACH;

    IF @SOLUONG IS NULL
    BEGIN
        SET @MESSAGE = 'Sách không tồn tại trong kho!';
        SET @SL_TON = -1; 
    END
    ELSE IF @SOLUONG <= 0
    BEGIN
        SET @MESSAGE = 'Sách đã hết trong kho!';
        SET @SL_TON = 0;
    END
    ELSE
    BEGIN
        SET @MESSAGE = 'Sách còn tồn kho!';
        SET @SL_TON = @SOLUONG; 
    
    SELECT @SL_TON AS SL_TON, @MESSAGE AS MESSAGE;
END;

--Tạo các Trigger
--Trigger để kiểm tra số lượng sách khi thêm mới sách:
CREATE TRIGGER KiemTraSoLuongSach
ON SACH
AFTER INSERT
AS
BEGIN
    DECLARE @SoLuong INT;
    SELECT @SoLuong = SUM(SL) FROM SACH;

    IF @SoLuong > 1000
    BEGIN
        RAISERROR ('Số lượng sách trong kho đã vượt quá giới hạn.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
--Trigger để cập nhật số lượng sách khi thêm hoặc xóa sách:
CREATE TRIGGER CapNhatSoLuongSach
ON SACH
AFTER INSERT, DELETE
AS
BEGIN
    UPDATE KHO
    SET SUCCHUA = (SELECT SUM(SL) FROM SACH);
END;

--Trigger để kiểm tra ngày mượn sách:
CREATE OR ALTER TRIGGER KiemTraNgayMuonSach
ON SINHVIEN_PHIEUMUON
AFTER INSERT
AS
BEGIN
    DECLARE @NgayMuon SMALLDATETIME;
    SELECT @NgayMuon = NGAYMUON FROM PHIEUMUON WHERE MAPM = (SELECT MAPM FROM inserted);

    IF @NgayMuon < '2024-10-01' OR @NgayMuon > '2024-10-07'
    BEGIN
        RAISERROR ('Ngày mượn sách không hợp lệ.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
 
--Trigger tự động cập nhật thông tin về số lượng cuốn sách mỗi khi một cuốn sách mới được thêm vào hoặc một cuốn sách đã có được cập nhật.
CREATE TRIGGER CapNhatThongTinSach
ON SACH_TACGIA
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    DECLARE @MSSACH SMALLINT;
    DECLARE @TotalBookCount TINYINT;

    IF EXISTS (SELECT * FROM inserted)
    BEGIN
        SELECT @MSSACH = MSSACH FROM inserted;
    END
    ELSE
    BEGIN
        SELECT @MSSACH = MSSACH FROM deleted;
    END

    SELECT @TotalBookCount = COUNT(*) FROM SACH_TACGIA WHERE MSSACH = @MSSACH;

    UPDATE SACH
    SET SL = @TotalBookCount
    WHERE MSSACH = @MSSACH;
END;

--Trigger kiểm tra số lượng sách mượn:
CREATE OR ALTER TRIGGER KiemTraSoLuongSachMuon
ON SINHVIEN_SACH
AFTER INSERT
AS
BEGIN
    DECLARE @MASV SMALLINT;
    DECLARE @SoSachMuon INT;

    SELECT @MASV = MASV FROM inserted;
    
    SELECT @SoSachMuon = COUNT(*) FROM SINHVIEN_SACH WHERE MASV = @MASV;
    
    IF @SoSachMuon > 5 
    BEGIN
        RAISERROR ('Số lượng sách mượn đã đạt tối đa.', 16, 1);
        ROLLBACK TRANSACTION;
    END;
END;
 
--Trigger để kiểm tra ràng buộc là một cuốn sách không được mượn quá ba lần
CREATE TRIGGER KiemTraMuonSach
ON SINHVIEN_SACH
AFTER INSERT
AS
BEGIN
    DECLARE @MSSACH SMALLINT;
    DECLARE @SoLuongMuon INT;

    SELECT @MSSACH = MSSACH FROM inserted;

    SELECT @SoLuongMuon = COUNT(*) FROM SINHVIEN_SACH WHERE MSSACH = @MSSACH;

    IF @SoLuongMuon > 3
    BEGIN
        RAISERROR ('Sách này đã được mượn đến giới hạn. Mỗi cuốn sách chỉ được mượn tối đa ba lần.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

--Trigger để kiểm tra ràng buộc là một sinh viên không thể mượn quá năm cuốn sách
CREATE TRIGGER KiemTraSoSachMuon
ON SINHVIEN_SACH
AFTER INSERT
AS
BEGIN
    DECLARE @MASV SMALLINT;
    DECLARE @SoLuongSachMuon INT;

    SELECT @MASV = MASV FROM inserted;

    SELECT @SoLuongSachMuon = COUNT(*) FROM SINHVIEN_SACH WHERE MASV = @MASV;

    IF @SoLuongSachMuon > 5
    BEGIN
        RAISERROR ('Sinh viên này đã mượn quá năm cuốn sách. Mỗi sinh viên chỉ được mượn tối đa năm cuốn sách.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
 
