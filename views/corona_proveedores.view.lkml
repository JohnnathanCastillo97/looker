view: corona_proveedores {
  sql_table_name: bd_ic_cliente.corona_proveedores ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bukrs {
    type: string
    sql: ${TABLE}.Bukrs ;;
  }
  dimension: ekorg {
    type: string
    sql: ${TABLE}.Ekorg ;;
  }
  dimension: kurztext {
    type: string
    sql: ${TABLE}.Kurztext ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: loevm_b {
    type: string
    sql: ${TABLE}.Loevm_b ;;
  }
  dimension: loevm_m {
    type: string
    sql: ${TABLE}.Loevm_m ;;
  }
  dimension: loevm_x {
    type: string
    sql: ${TABLE}.Loevm_x ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.Migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: sperm_m {
    type: string
    sql: ${TABLE}.Sperm_m ;;
  }
  dimension: sperm_x {
    type: string
    sql: ${TABLE}.Sperm_x ;;
  }
  dimension: sperq {
    type: string
    sql: ${TABLE}.Sperq ;;
  }
  dimension: sperr_b {
    type: string
    sql: ${TABLE}.Sperr_b ;;
  }
  dimension: sperr_x {
    type: string
    sql: ${TABLE}.Sperr_x ;;
  }
  dimension: stcd {
    type: string
    sql: ${TABLE}.Stcd ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
