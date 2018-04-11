# README

<!-- 宿泊施設の登録機能に必須テーブル -->
## housesテーブル

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
- has_many :amenities, through: :amenity_details
- has_many :amenities_details
- has_many :safety_amenities, thtough: :amenity_details
- has_many :safety_amenities_details
- has_many :available_spaces, through: :available_space_details
- has_many :available_space_details
- has_many :house_discription_checkboxies, through: :house_discription_checkbox_details
- has_many :house_discription_checkbox_details
- has_many :currencies, through: :currency_details
- has_many :currency_details
- has_many :house_rules, thtough: :house_rule_details
- has_many :house_rule_details
- has_many :add_house_rules, thtough: :add_house_rule_details
- has_many :add_house_rule_details
- has_many :notification_before_stays, thtough: :notification_before_stay_details
- has_many :notification_before_stay_details
- has_many :add_reservations_rules
- has_many :room_images


## bedroomsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|num_bedroom|string |null: false, foreign_key: true|

### Association

- has_many :beds, through: :bed_details
- has_many :bed_details_
- belongs_to :houses


## bedsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|bed_name|integer |unique: true|

### Association

- has_many :bedrooms, through: :bed_details
- has_many :bed_details


## bed_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|bedroom_id|references |null: false, foreign_key: true|
|bed_id|references |null: false, foreign_key: true|
|num_bed|integer ||

### Association

- belongs_to :bedroom
- belongs_to :bed


## amenitiesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|amenity_name|string |unique: true|

### Association

- has_many :house, through: :amenity_details
- has_many :amenity_details


## amenity_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|amenity_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :amenity


## safety_amenitiesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|safety_amenity_name|string |unique: true|

### Association

- has_many :house, through: :safety_amenity_details
- has_many :safety_amenity_details


## safety_amenity_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|safety_amenity_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :safety_amenity


## room_imagesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|room_image|string ||

### Association

- belongs_to :houses


## available_spacesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|space_name|string |unique: true|

### Association

- has_many :houses, through: :available_space_detail
- has_many :available_space_detail


## available_space_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|available_space_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :available_space


## house_discription_checkboxies

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|item  |string |unique: true|

### Association

- has_many :houses, through: :house_discription_checkbox_details- has_many :house_discription_checkbox_details


## house_discription_checkbox_details

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id  |string |null: false, foreign_key: true|
|house_discription_checkbox_id  |references |null: false, foreign_key: true|


## add_house_discription_checkboxies

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id  |references |null: false, foreign_key: true|
|item  |string |unique: true|

### Association

- belongs_to :house


## house_rulesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_rule|string ||

### Association

- has_many :houses, through: :house_rule_details
- has_many :house_rule_details


## house_rule_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|house_rule_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :house_rule


## add_house_rulesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|add_house_rule|string |unique: true|

### Association

- has_many :houses, through: :add_house_rule_details
- has_many :add_house_rule_details

## add_house_rule_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|add_house_rule_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :add_house_rule


## notification_before_staysテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|notification|string |unique: true|

### Association

- has_many :houses, through: :notification_before_stay_details
- has_many :notification_before_stay_details


## notification_before_stay_detailsテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|house_id|references |null: false, foreign_key: true|
|notification_before_stay_id|references |null: false, foreign_key: true|

### Association

- belongs_to :house
- belongs_to :notification_before_stay


## add_reservations_rulesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|guest_requirement|string ||

### Association

- belongs_to :house


## currenciesテーブル

| Column   | Type  |           Options    |
|----------|-------|----------------------|
|currency|string |unique: true|

### Association

- has_many :house, through: :currency_details
- has_many :currency_details


## currency_detailsテーブル

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
