SET AUTOCOMMIT = 0;
START TRANSACTION;
BEGIN;

/* DataPropertyTypes */



INSERT INTO DataPropertyType ( name ) VALUES ( 'text' );
INSERT INTO DataPropertyType ( name ) VALUES ( 'url' );
INSERT INTO DataPropertyType ( name ) VALUES ( 'date' );
INSERT INTO DataPropertyType ( name ) VALUES ( 'number' );


/* ObjectPropertyTypes */



INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'Brand', 'schema.org/Brand' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'Organization', 'schema.org/Organization' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'Distance', 'schema.org/Distance' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'QuantitativeValue', 'schema.org/QuantitativeValue' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'Product', 'schema.org/Product' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'OfferItemCondition', 'schema.org/OfferItemCondition' );
INSERT INTO ObjectPropertyType ( name, url ) VALUES ( 'ProductModel', 'schema.org/ProductModel' );


/* DataProperties */




INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'alternateName', 'schema.org/alternateName', ( SELECT id FROM DataPropertyType WHERE name = 'text' ) );
INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'description', 'schema.org/description', ( SELECT id FROM DataPropertyType WHERE name = 'text' ) );
INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'name', 'schema.org/name', ( SELECT id FROM DataPropertyType WHERE name = 'text' ) );
INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'color', 'schema.org/color', ( SELECT id FROM DataPropertyType WHERE name = 'text' ) );
INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'model', 'schema.org/model', ( SELECT id FROM DataPropertyType WHERE name = 'text' ) );
INSERT INTO DataProperty ( name, url, typeId ) VALUES ( 'value', 'schema.org/value', ( SELECT id FROM DataPropertyType WHERE name = 'number' ) );


/* ObjectProperties */



INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'brand', 'schema.org/brand', ( SELECT id FROM ObjectPropertyType WHERE name = 'Brand' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'brand', 'schema.org/brand', ( SELECT id FROM ObjectPropertyType WHERE name = 'Organization' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'depth', 'schema.org/depth', ( SELECT id FROM ObjectPropertyType WHERE name = 'Distance' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'depth', 'schema.org/depth', ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'height', 'schema.org/height', ( SELECT id FROM ObjectPropertyType WHERE name = 'Distance' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'height', 'schema.org/height', ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'isAccessoryOrSparePartFor', 'schema.org/isAccessoryOrSparePartFor', ( SELECT id FROM ObjectPropertyType WHERE name = 'Product' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'isConsumableFor', 'schema.org/isConsumableFor', ( SELECT id FROM ObjectPropertyType WHERE name = 'Product' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'isRelatedTo', 'schema.org/isRelatedTo', ( SELECT id FROM ObjectPropertyType WHERE name = 'Product' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'isSimilarTo', 'schema.org/isSimilarTo', ( SELECT id FROM ObjectPropertyType WHERE name = 'Product' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'itemCondition', 'schema.org/itemCondition', ( SELECT id FROM ObjectPropertyType WHERE name = 'Product' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'model', 'schema.org/model', ( SELECT id FROM ObjectPropertyType WHERE name = 'ProductModel' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'manufacturer', 'schema.org/manufacturer', ( SELECT id FROM ObjectPropertyType WHERE name = 'Organization' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'weight', 'schema.org/weight', ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'width', 'schema.org/width', ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) );
INSERT INTO ObjectProperty ( name, url, typeId ) VALUES ( 'width', 'schema.org/width', ( SELECT id FROM ObjectPropertyType WHERE name = 'Distance' ) );


/* Object Instances */




INSERT INTO ObjectInstance ( typeId, name ) VALUES ( ( SELECT id from ObjectPropertyType WHERE name = 'Product' ), 'Nokia 2610 Phone' );
INSERT INTO ObjectInstance ( typeId, name ) VALUES ( ( SELECT id from ObjectPropertyType WHERE name = 'QuantitativeValue' ), '4.1 inches' );
INSERT INTO ObjectInstance ( typeId, name ) VALUES ( ( SELECT id from ObjectPropertyType WHERE name = 'QuantitativeValue' ), '1.7 inches' );
INSERT INTO ObjectInstance ( typeId, name ) VALUES ( ( SELECT id from ObjectPropertyType WHERE name = 'QuantitativeValue' ), '0.7 inches' );


/* Data Tuples */



INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM DataProperty WHERE name = 'alternateName' ), 'Nokia 2610' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM DataProperty WHERE name = 'description' ), 'The Nokia 2610 is an easy to use device that combines multiple messaging options including email, instant messaging, and more. You can even download MP3 ringtones, graphics, and games straight to the phone, or surf the Internet with Cingular\'s MEdia Net service. It\'s the perfect complement to Cingular service for those even remotely interested in mobile Web capabilities in an affordable handset.  Design Compact and stylish, the 2610 features a candybar design sporting a bright 128 x 128 pixel display capable of displaying over 65,000 colors. Most of the phone\'s features and on-screen menus are controlled by a center toggle on the control pad. A standard hands-free headphone jack is provided, as are volume control keys, and there\'s even a "Go-To" button that can be assigned by the user for quick access to favorite applications. Lastly, the included speakerphone allows you to talk handsfree, and because the phone sports an internal antenna, there\'s nothing to snag or break off.|Integrated camera with video recorder to capture those special moments Enriched data connections for complete mobile access via Email, MMS, and MEdia Net Personalize with downloadable MP3 and polyphonic Ring tones, Games, and Graphics Use AIM, Yahoo! and MSN Messenger to stay in touch on the go Mobile Internet browser and email|Nokia 2610, cell, phone,|The words "entry level" no longer mean "low-end," especially when it comes to the Nokia 2610. Offering advanced media and calling features without breaking the bank' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM DataProperty WHERE name = 'name' ), 'Nokia 2610 Phone' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM DataProperty WHERE name = 'color' ), 'black' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM DataProperty WHERE name = 'model' ), '2160' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '4.1 inches' ), ( SELECT id FROM DataProperty WHERE name = 'name' ), 'inches' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '4.1 inches' ), ( SELECT id FROM DataProperty WHERE name = 'value' ), '4.1' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '1.7 inches' ), ( SELECT id FROM DataProperty WHERE name = 'name' ), 'inches' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '1.7 inches' ), ( SELECT id FROM DataProperty WHERE name = 'value' ), '1.7' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '0.7 inches' ), ( SELECT id FROM DataProperty WHERE name = 'name' ), 'inches' );

INSERT INTO DataTuple ( ObjectInstanceId, DataPropertyId, value ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = '0.7 inches' ), ( SELECT id FROM DataProperty WHERE name = 'value' ), '0.7' );



/* Object Tuples */

INSERT INTO ObjectTuple ( ObjectInstanceId, ObjectPropertyId, objectValueId ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM ObjectProperty WHERE name = 'height' AND typeId = ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) ), ( SELECT id FROM ObjectInstance WHERE name = '4.1 inches' ) );

INSERT INTO ObjectTuple ( ObjectInstanceId, ObjectPropertyId, objectValueId ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM ObjectProperty WHERE name = 'width' AND typeId = ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) ), ( SELECT id FROM ObjectInstance WHERE name = '1.7 inches' ) );

INSERT INTO ObjectTuple ( ObjectInstanceId, ObjectPropertyId, objectValueId ) VALUES ( ( SELECT id FROM ObjectInstance WHERE name = 'Nokia 2610 Phone' ), ( SELECT id FROM ObjectProperty WHERE name = 'depth' AND typeId = ( SELECT id FROM ObjectPropertyType WHERE name = 'QuantitativeValue' ) ), ( SELECT id FROM ObjectInstance WHERE name = '0.7 inches' ) );

COMMIT;
