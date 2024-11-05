view: corona_registro_info_centro {
  sql_table_name: bd_ic_cliente.corona_registro_info_centro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: ekorg {
    type: string
    sql: ${TABLE}.Ekorg ;;
  }
  dimension: esokz {
    type: string
    sql: ${TABLE}.Esokz ;;
  }
  dimension: infnr {
    type: string
    sql: ${TABLE}.Infnr ;;
  }
  dimension: kbetr {
    type: string
    sql: ${TABLE}.Kbetr ;;
  }
  dimension: klfn {
    type: string
    sql: ${TABLE}.Klfn ;;
  }
  dimension: kstbm {
    type: number
    sql: ${TABLE}.Kstbm ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: werks {
    type: string
    sql: ${TABLE}.Werks ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
