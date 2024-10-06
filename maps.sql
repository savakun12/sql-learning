create table longlat_detail (
id serial primary key,
longitude varchar(255),
latitude varchar(255),
provinsi varchar(255),
kota varchar(100),
kecamatan varchar(100),
kelurahan varchar(100),
kodepos varchar(100),
address varchar(1000)
)

select * from longlat_detail

ALTER TABLE longlat_detail 
ALTER COLUMN longitude TYPE DECIMAL(15, 10),
ALTER COLUMN latitude TYPE DECIMAL(15, 10);

CREATE TABLE location_details (
    id SERIAL PRIMARY KEY,
    company_id VARCHAR(255) NOT NULL,
    action VARCHAR(255),
    longitude VARCHAR(255) NULL,
    latitude VARCHAR(255) NULL,
    version VARCHAR(255) NULL,
    create_who VARCHAR(255) NOT NULL,
    create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    change_who VARCHAR(255),
    change_date TIMESTAMP,
    provinsi VARCHAR(255) NOT NULL,
    kota VARCHAR(255) NOT NULL,
    kecamatan VARCHAR(255) NOT NULL,
    kelurahan VARCHAR(255) NOT NULL,
    kodepos VARCHAR(255) NOT NULL,
    address TEXT NOT NULL
);

UPDATE location_details
SET
    provinsi = '',
    kota = '',
    kecamatan = '',
    kelurahan = '',
    kodepos = '',
    address = ''
WHERE
    provinsi IS NOT NULL OR
    kota IS NOT NULL OR
    kecamatan IS NOT NULL OR
    kelurahan IS NOT NULL OR
    kodepos IS NOT NULL OR
    address IS NOT NULL;


INSERT INTO location_details (
    company_id, action, longitude, latitude, version,
    create_who, create_date, change_who, change_date, 
    provinsi, kota, kecamatan, kelurahan, kodepos, address
) VALUES
    ('13773043', 'SIGN_IN', '110.4630988', '-7.0219813', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.8832166', '-6.1416408', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10722043', 'SIGN_IN', '112.7580598', '-7.2680233', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13922043', 'SIGN_IN', '106.8832268', '-6.1416355', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13926043', 'SIGN_IN', '106.6098482', '-6.2950092', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12211043', 'SIGN_IN', '106.8492883', '-6.5485803', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13926043', 'SIGN_IN', '106.6098412', '-6.2950001', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13922043', 'SIGN_IN', '106.8832152', '-6.1416249', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('7942043', 'SIGN_IN', '106.8076979', '-6.6129974', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13922043', 'SIGN_IN', '106.8832221', '-6.1416321', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13985043', 'SIGN_IN', '107.8955691', '-7.0945744', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13985043', 'SIGN_IN', '107.8955691', '-7.0945744', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('8533043', 'SIGN_IN', '106.8338844', '-6.1616842', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13987043', 'SIGN_IN', '113.4837626', '-7.159176', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13987043', 'SIGN_IN', '113.4837626', '-7.159176', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.883212', '-6.1416175', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13390043', 'SIGN_IN', '106.6388981', '-6.2733291', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13986043', 'SIGN_IN', '106.9351091', '-6.2246359', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3691043', 'SIGN_IN', '112.7671677', '-7.3451654', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4319712', '-7.0061852', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat');

INSERT INTO location_details (
    company_id, action, longitude, latitude, version,
    create_who, create_date, change_who, change_date, 
    provinsi, kota, kecamatan, kelurahan, kodepos, address
) VALUES
    ('3836043', 'SIGN_IN', '106.8832229', '-6.1416278', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10872043', 'SIGN_IN', '106.9496305', '-6.2051882', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13638043', 'SIGN_IN', '106.9351074', '-6.2246313', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13726043', 'SIGN_IN', '107.3027832', '-6.3090071', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13737043', 'SIGN_IN', '108.5601372', '-6.7525059', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13638043', 'SIGN_IN', '106.9351106', '-6.2246221', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13986043', 'SIGN_IN', '106.9351079', '-6.2246214', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13491043', 'SIGN_IN', '112.4396484', '-7.4655342', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13653043', 'SIGN_IN', '106.7620536', '-6.3201378', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('11919043', 'SIGN_IN', '105.589235', '-5.7306744', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('7811043', 'SIGN_IN', '106.8426982', '-6.1543563', '2.8.20',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.8832637', '-6.1416537', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12936043', 'SIGN_IN', '106.821754', '-6.5892594', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13918043', 'SIGN_IN', '110.4588561', '-7.0293188', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13432043', 'SIGN_IN', '103.1608317', '-0.3218177', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13638043', 'SIGN_IN', '106.9351075', '-6.2246223', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13773043', 'SIGN_IN', '110.4077272', '-6.959345', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.431935', '-7.0061459', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12723043', 'SIGN_IN', '106.592881', '-6.1584993', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat');


INSERT INTO location_details (
    company_id, action, longitude, latitude, version,
    create_who, create_date, change_who, change_date, 
    provinsi, kota, kecamatan, kelurahan, kodepos, address
) VALUES
    ('13922043', 'SIGN_IN', '106.883231', '-6.1416412', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13185043', 'SIGN_IN', '106.7958746', '-6.4820282', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13638043', 'SIGN_IN', '106.9347303', '-6.2246118', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.8832179', '-6.1416279', '3.0.0-sandbox',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13864043', 'SIGN_IN', '104.7627449', '-2.9631512', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13773043', 'SIGN_IN', '110.4630831', '-7.021993', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10736043', 'SIGN_IN', '106.8031912', '-6.1827004', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12770043', 'SIGN_IN', '119.4529646', '-5.1426584', '2.7.32',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13422043', 'SIGN_IN', '106.7962493', '-6.1530322', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13876043', 'SIGN_IN', '119.8705544', '-0.8873864', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13026043', 'SIGN_IN', '119.4540793', '-5.1666202', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13468043', 'SIGN_IN', '119.421567', '-5.1429975', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13911043', 'SIGN_IN', '107.062461', '-6.3142294', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13911043', 'SIGN_IN', '107.0473089', '-6.2830081', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12211043', 'SIGN_IN', '106.8492171', '-6.5486145', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13113043', 'SIGN_IN', '106.6565444', '-6.1258868', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13501043', 'SIGN_IN', '119.3972117', '-5.1496435', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13918043', 'SIGN_IN', '110.4588623', '-7.0293225', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('8240043', 'SIGN_IN', '106.7106562', '-6.1243324', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('11878043', 'SIGN_IN', '115.4610117', '-2.3360067', '2.9.10',
     'system', CURRENT_TIMESTAMP, NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat');

INSERT INTO location_details (
    company_id, action, longitude, latitude, version,
    create_who, create_date, change_who, change_date, 
    provinsi, kota, kecamatan, kelurahan, kodepos, address
) VALUES
    ('13876043', 'SIGN_IN', '119.8705524', '-0.8873869', '2.9.10',
     'system', '2024-10-02 16:26:31.7', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('11878043', 'SIGN_IN', '115.4610122', '-2.3360237', '2.9.10',
     'system', '2024-10-02 16:25:14', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12723043', 'SIGN_IN', '106.5928753', '-6.1584883', '2.9.10',
     'system', '2024-10-02 16:05:00.15', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13922043', 'SIGN_IN', '106.883218', '-6.1416305', '3.0.0-sandbox',
     'system', '2024-10-02 15:58:26.61', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13439043', 'SIGN_IN', '103.5282895', '-1.6138495', '2.9.10',
     'system', '2024-10-02 15:52:24.39', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13984043', 'SIGN_IN', '106.7321254', '-6.0861044', '2.9.10',
     'system', '2024-10-02 15:23:16.52', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10736043', 'SIGN_IN', '106.8032021', '-6.1826883', '2.9.10',
     'system', '2024-10-02 15:17:11.33', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13439043', 'SIGN_IN', '103.5282884', '-1.6138498', '2.9.10',
     'system', '2024-10-02 15:16:29.33', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13773043', 'SIGN_IN', '110.4630972', '-7.0219827', '2.9.10',
     'system', '2024-10-02 15:02:43.57', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3691043', 'SIGN_IN', '106.7392921', '-6.0942003', '2.9.10',
     'system', '2024-10-02 14:54:22.35', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.8832284', '-6.141635', '2.9.10',
     'system', '2024-10-02 14:51:08.67', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13759043', 'SIGN_IN', '106.643163', '-6.2807107', '2.9.10',
     'system', '2024-10-02 14:19:05.81', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('7942043', 'SIGN_IN', '106.8075096', '-6.6131195', '2.9.10',
     'system', '2024-10-02 14:17:26.17', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12211043', 'SIGN_IN', '106.8492608', '-6.5486165', '2.9.10',
     'system', '2024-10-02 14:13:08.61', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13390043', 'SIGN_IN', '106.6388936', '-6.2733819', '2.9.10',
     'system', '2024-10-02 12:05:02.63', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3691043', 'SIGN_IN', '106.8832253', '-6.1416346', '2.9.6',
     'system', '2024-10-02 11:33:02.01', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('1208043', 'SIGN_IN', '106.9160194', '-6.3063894', '2.9.10',
     'system', '2024-10-02 11:30:43.07', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13726043', 'SIGN_IN', '107.302769', '-6.3090075', '2.9.10',
     'system', '2024-10-02 11:08:57.98', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10872043', 'SIGN_IN', '106.9496507', '-6.2051599', '2.9.10',
     'system', '2024-10-02 11:04:46.54', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13491043', 'SIGN_IN', '112.4396431', '-7.4655331', '2.9.10',
     'system', '2024-10-02 10:57:47.73', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat');

INSERT INTO location_details (
    company_id, action, longitude, latitude, version,
    create_who, create_date, change_who, change_date, 
    provinsi, kota, kecamatan, kelurahan, kodepos, address
) VALUES
    ('13983043', 'SIGN_IN', '106.9160226', '-6.3063857', '2.9.10',
     'system', '2024-10-02 10:37:39.64', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4319955', '-7.0061213', '2.9.10',
     'system', '2024-10-02 10:33:58.58', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4319955', '-7.0061213', '2.9.10',
     'system', '2024-10-02 10:33:15.53', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('12723043', 'SIGN_IN', '106.5928804', '-6.1585006', '2.9.10',
     'system', '2024-10-02 10:25:24.37', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4319634', '-7.006075', '2.9.10',
     'system', '2024-10-02 10:24:24.5', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4319634', '-7.006075', '2.9.10',
     'system', '2024-10-02 10:24:18.38', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13836043', 'SIGN_IN', '110.4318553', '-7.006196', '2.9.10',
     'system', '2024-10-02 10:23:50.92', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13839043', 'SIGN_IN', '107.0424654', '-6.4548101', '2.9.10',
     'system', '2024-10-02 10:23:24.58', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13432043', 'SIGN_IN', '103.1608475', '-0.321838', '2.9.10',
     'system', '2024-10-02 10:19:45.4', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('1302043', 'SIGN_IN', '110.3862022', '-7.0089903', '2.9.10',
     'system', '2024-10-02 10:17:25.32', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13918043', 'SIGN_IN', '110.4588624', '-7.029325', '2.9.10',
     'system', '2024-10-02 10:09:23.53', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('11919043', 'SIGN_IN', '105.5892279', '-5.7306799', '2.9.10',
     'system', '2024-10-02 10:06:40.45', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13982043', 'SIGN_IN', '112.7672585', '-7.3452234', '3.0.0-sandbox',
     'system', '2024-10-02 09:59:56.59', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13922043', 'SIGN_IN', '106.8832198', '-6.1416364', '3.0.0-sandbox',
     'system', '2024-10-02 09:49:11.49', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('3836043', 'SIGN_IN', '106.8832175', '-6.1416198', '2.9.10',
     'system', '2024-10-02 09:40:33.39', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('8240043', 'SIGN_IN', '106.7106294', '-6.1243513', '2.9.10',
     'system', '2024-10-02 09:37:54.95', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('7811043', 'SIGN_IN', '106.8426999', '-6.1543564', '2.8.20',
     'system', '2024-10-02 09:09:40.26', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13876043', 'SIGN_IN', '119.8705657', '-0.8873891', '2.9.10',
     'system', '2024-10-02 09:08:54.79', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('10736043', 'SIGN_IN', '106.8032021', '-6.1826883', '2.9.10',
     'system', '2024-10-02 09:06:33.46', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13961043', 'SIGN_IN', '110.3861991', '-7.0089932', '3.0.0-sandbox',
     'system', '2024-10-02 09:03:07.18', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat'),

    ('13468043', 'SIGN_IN', '119.4215512', '-5.1429853', '2.9.10',
     'system', '2024-10-02 08:58:50.91', NULL, NULL, 'NamaProvinsi', 'NamaKota',
     'NamaKecamatan', 'NamaKelurahan', 'KodePos', 'Alamat');
