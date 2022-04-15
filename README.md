# README

events_table

| Column                | Type    | Options                   |
| ------------------------------------------------------------|
| date                  | integer |                           |
| events_select_id      | integer | null: false               |
| met_person            | text    |                           |

users_table

| Column                | Type    | Options                   |
| ------------------------------------------------------------|
| nickname              | string  | null: false               |
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |

has_many :open_records

open_records_table
| Column          | Type        | Options                        |
| ---------------------------------------------------------------|
| user            | references  | null: false, foreign_key: true |

belongs_to :users
