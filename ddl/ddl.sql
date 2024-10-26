CREATE TABLE ecms_data (
    accessed_date TIMESTAMP,
    duration_secs INT,
    network_protocol VARCHAR(10),
    ip VARCHAR(15),
    bytes INT,
    accessed_from VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    country VARCHAR(5),
    membership VARCHAR(10),
    language VARCHAR(20),
    sales DECIMAL(10, 4),
    returned VARCHAR(5),
    returned_amount DECIMAL(10, 2),
    pay_method VARCHAR(20)
);
COMMENT ON TABLE ecms_data IS 'A particular E-commerce website dataset';
COMMENT ON COLUMN ecms_data.accessed_date IS 'The timestamp when the item was accessed';
COMMENT ON COLUMN ecms_data.duration_secs IS 'Duration of the access in seconds';
COMMENT ON COLUMN ecms_data.network_protocol IS 'Network protocol used during the access';
COMMENT ON COLUMN ecms_data.ip IS 'IP address of the accessing device';
COMMENT ON COLUMN ecms_data.bytes IS 'Amount of data transferred during the access';
COMMENT ON COLUMN ecms_data.accessed_from IS 'Description of the accessing source';
COMMENT ON COLUMN ecms_data.age IS 'Age of the user accessing';
COMMENT ON COLUMN ecms_data.gender IS 'Gender of the user accessing';
COMMENT ON COLUMN ecms_data.country IS 'Country code of the user';
COMMENT ON COLUMN ecms_data.membership IS 'Type of membership';
COMMENT ON COLUMN ecms_data.language IS 'Preferred language of the user';
COMMENT ON COLUMN ecms_data.sales IS 'Total sales during the session';
COMMENT ON COLUMN ecms_data.returned IS 'Whether the item was returned';
COMMENT ON COLUMN ecms_data.returned_amount IS 'Amount refunded upon return';
COMMENT ON COLUMN ecms_data.pay_method IS 'The payment method used during the transaction' AND 'pay_method has static variables: "Credit Card", "Debit Card", "Net Banking", "Cash on Delivery", "E-Wallet"';
