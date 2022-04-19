# README

events_table

| Column                | Type    | Options                   |
| ------------------------------------------------------------|
| date                  | string  |                           |
| events_select_id      | integer | null: false               |
| met_person            | text    |                           |
| checkbox              | boolean |                           |

belongs_to user

users_table

| Column                | Type    | Options                   |
| ------------------------------------------------------------|
| nickname              | string  | null: false               |
| age_select_id         | integer | null: false               |
| sex_select_id         | integer | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |

has_many :events
