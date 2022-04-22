# README

events_table

| Column                | Type       | Options                   |
| ---------------------------------------------------------------|
| date                  | string     |                           |
| events_select_id      | integer    | null: false               |
| met_person            | text       |                           |
| checkbox              | boolean    |                           |
| user                  | references | null: false foreign_key: true  |

belongs_to user
has_many likes

users_table

| Column                | Type    | Options                   |
| ------------------------------------------------------------|
| nickname              | string  | null: false               |
| age_select_id         | integer | null: false               |
| sex_select_id         | integer | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |

has_many :events
has_many :likes

likes_table

| Column                | Type       | Options                        |
| --------------------------------------------------------------------|
| user                  | references | null: false foreign_key: true  |
| event                 | references | null: false foreign_key: true  |

belong_to :user
belongs_to event