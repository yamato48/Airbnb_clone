# README

<!-- 宿泊施設の登録機能に必須テーブル -->
## housesテーブル

#### 宿泊施設の登録時保存するためのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|category  |string |null: false|
|house_type|string |null: false|
|room_type|string |null: false|
|is_this_room_using_guest_only|string |null: false|
|capacity|integer |null: false|
|num_bedroom|integer |null: false|
|num_bed|integer |null: false|
|country|string |null: false|
|postal_code|string |null: false|
|state|string |null: false|
|city|string |null: false|
|address_line_1|string ||
|address_line_2|string ||
|num_of_bath|float |null: false|
|house_discription|text |null: false|
|house_name|string |null: false|
|have_you_experienced_lending_a_room|string ||
|how_often_do_you_want_to_stay|string ||
|reservation_limit|integer |null: false|
|reception_limit|integer |null: false|
|from_night|integer |null: false|
|to_night|integer |null: false|
|charge_setting_type  |integer |null: false|
|min_charge|integer |null: false|
|max_charge|integer |null: false|
|basic_charge|integer |null: false|
|first_time_20percent_discount|boolean |default: false, null: false|
|discount_rate|string |null: false|
|weekly_discount_rate|integer |null: false|
|monthly_discount_rate|integer |null: false|
|profile_image|string ||

### Association

- has_many :bedrooms
- has_many :amenities, through: :houses_amenities
- has_many :houses_amenities
- has_many :safety_amenities, through: :houses__safety_amenities
- has_many :houses__safety_amenities
- has_many :available_spaces, through: :houses__available_spaces
- has_many :houses__available_spaces
- has_many :house_discription_checkboxies, through: :houses__house_discription_checkboxies
- has_many :houses__house_discription_checkboxies
- has_many :currencies, through: :houses_currencies
- has_many :houses_currencies
- has_many :house_rules, thtough: :houses__house_rules
- has_many :houses__house_rules
- has_many :add_house_rules, thtough: :houses__add_house_rules
- has_many :houses__add_house_rules
- has_many :notification_before_stays, thtough: :houses__notification_before_stays
- has_many :houses__notification_before_stays
- has_many :add_reservations_rules
- has_many :room_images


## bedroomsテーブル

####　ユーザーのベッドルーム情報に関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|num_bedroom|string |null: false, foreign_key: true|

### Association

- has_many :beds, through: :bedrooms_beds
- has_many :bedrooms_beds
- belongs_to :house


## bedsテーブル

####　ユーザーのベッドのタイプなどに関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|bed_name|integer |unique: true|

### Association

- has_many :bedrooms, through: :bedrooms_beds
- has_many :bedrooms_beds


## bedrooms_bedsテーブル

####　bedsテーブルとbedroomsを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|bedroom_id|references |null: false, foreign_key: true|
|bed_id|references |null: false, foreign_key: true|
|num_bed|integer ||

### Association

- belongs_to :bedroom
- belongs_to :bed


## amenitiesテーブル

####　宿泊施設のアメニティーに関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|amenity_name|string |unique: true|

### Association

- has_many :house, through: :houses_amenities
- has_many :houses_amenities


## houses_amenitiesテーブル

####　housesテーブルとamenitesテーブルを繋ぐ中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|amenity_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :amenity


## safety_amenitiesテーブル

####　なんだっけ？笑

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|safety_amenity_name|string |unique: true|

### Association

- has_many :house, through: :houses__safety_amenities
- has_many :houses__safety_amenities


## houses__safety_amenitiesテーブル

####　housesテーブルとsafety_amenitiesテーブルを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|safety_amenity_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :safety_amenity


## room_imagesテーブル

####　宿泊施設の内装などの写真を保存しておくためのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|room_image|string ||

### Association

- belongs_to :house


## available_spacesテーブル

####　宿泊施設ないにある、利用可能スペースなどテーブル（exプール、キッチン）

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|space_name|string |unique: true|

### Association

- has_many :houses, through: :houses__available_spaces
- has_many :houses__available_spaces


## houses__available_spacesテーブル

####　housesテーブルとavailable_spacesテーブルを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|available_space_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :available_space


## house_discription_checkboxies

####　宿泊施設の説明に関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|item  |string |unique: true|

### Association

- has_many :houses, through: :houses__house_discription_checkboxies
- has_many :houses__house_discription_checkboxies


## houses__house_discription_checkboxies

####　housesテーブルとhouse_discription_checkboxiesテーブルを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id  |string |null: false, foreign_key: true|
|house_discription_checkbox_id  |references |null: false, foreign_key: true|


### Association

- belongs_to :house
- belongs_to :house_discription_checkbox


## add_house_discription_checkboxies

####　なんだっけ？

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id  |references |null: false, foreign_key: true|
|item  |string |unique: true|

### Association

- belongs_to :house


## house_rulesテーブル

####　宿泊施設のルールに関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_rule|string ||

### Association

- has_many :houses, through: :houses__house_rules
- has_many :houses__house_rules


## houses__house_rulesテーブル

####　housesテーブルとhouse_rulesを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|house_rule_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :house_rule


## add_house_rulesテーブル

####　宿泊施設のルールに何か追加したいものがあった時に関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|add_house_rule|string |unique: true|

### Association

- has_many :houses, through: :houses__add_house_rules
- has_many :houses__add_house_rules

## houses__add_house_rulesテーブル

####　housesテーブルとadd_house_rulesテーブルを繋ぐ中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|add_house_rule_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :add_house_rule


## notification_before_staysテーブル

####　ユーザーが宿泊施設に泊まるにあたって事前に伝えなくてはいけないことに関してのテーブル <補足を加える>

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|notification|string |unique: true|

### Association

- has_many :houses, through: :houses__notification_before_stays
- has_many :houses__notification_before_stays


## houses__notification_before_staysテーブル

#### housesテーブルとnotification_before_staysテーブルを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|notification_before_stay_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :notification_before_stay


## add_reservations_rulesテーブル

####　なんだっけ？

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|guest_requirement|string ||

### Association

- belongs_to :house


## currenciesテーブル

####　宿泊施設を利用するにあたっての使用する通貨に関してのテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|currency|string |unique: true|

### Association

- has_many :house, through: :houses_currencies
- has_many :houses_currencies


## houses_currenciesテーブル

####　hosuesテーブルとcurrenciesテーブルを繋ぐための中間テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|currency_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :currency


## ※※※保留※※※予約受付日カレンダー


| Column   | Type  |           Options    |
|----------|-------|----------------------|


## ※※※保留※※※ 位置情報テーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|



<!-- ユーザー登録機能に必須テーブル -->

## Users Table
<!-- 必須項目 -->

####　ユーザー情報に関してのテーブル

| Column | type | Options |
|---------------------|-------|--------|
| first_name | string | null:false |
| last_name | string | null:false |
| sex | integer | null:false |
| birth | string | null:false |
| e-mail | string | null:false |
| phone_number | string | null:false |
| language | string | null:false |
| currency | string | null:false |
| identification | string | null:false |
| avatar | string | null:false |

<!-- 任意項目 -->
| Column | type | Options |
|---------|-------|--------|
| address | string | null:false |
| profile | text | null:false |
