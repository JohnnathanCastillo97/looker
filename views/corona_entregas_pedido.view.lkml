view: corona_entregas_pedido {
  sql_table_name: bd_ic_cliente.Corona_entregas_pedido ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: lfart {
    type: string
    sql: ${TABLE}.Lfart ;;
  }
  dimension: lfimg {
    type: number
    sql: ${TABLE}.Lfimg ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: netpr {
    type: number
    sql: ${TABLE}.Netpr ;;
  }
  dimension: vbeln {
    type: string
    sql: ${TABLE}.Vbeln ;;
  }
  dimension: vgbel {
    type: string
    sql: ${TABLE}.Vgbel ;;
  }
  dimension: vgpos {
    type: string
    sql: ${TABLE}.Vgpos ;;
  }
  dimension: wadat_ist {
    type: string
    sql: ${TABLE}.Wadat_ist ;;
  }
  dimension: waers {
    type: string
    sql: ${TABLE}.Waers ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
