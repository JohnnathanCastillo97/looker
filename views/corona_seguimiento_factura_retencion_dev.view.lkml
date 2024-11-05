view: corona_seguimiento_factura_retencion_dev {
  sql_table_name: bd_ic_cliente.corona_seguimiento_factura_retencion_dev ;;
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
  dimension: invoice_date {
    type: string
    sql: ${TABLE}.Invoice_Date ;;
  }
  dimension: invoice_id {
    type: string
    sql: ${TABLE}.Invoice_Id ;;
  }
  dimension: land {
    type: string
    sql: ${TABLE}.Land ;;
  }
  dimension: lifnr {
    type: string
    sql: ${TABLE}.Lifnr ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: stlect {
    type: number
    sql: ${TABLE}.stlect ;;
  }
  dimension: witht {
    type: string
    sql: ${TABLE}.Witht ;;
  }
  dimension: wt_qbshb {
    type: number
    sql: ${TABLE}.Wt_Qbshb ;;
  }
  dimension: wt_qbshh {
    type: number
    sql: ${TABLE}.Wt_Qbshh ;;
  }
  dimension: wt_withcd {
    type: string
    sql: ${TABLE}.Wt_withcd ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
