view: corona_seguimiento_factura_compra {
  sql_table_name: bd_ic_cliente.corona_seguimiento_factura_compra ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: augbl {
    type: string
    sql: ${TABLE}.Augbl ;;
  }
  dimension: augdt {
    type: string
    sql: ${TABLE}.Augdt ;;
  }
  dimension: bakurs {
    type: string
    sql: ${TABLE}.Bakurs ;;
  }
  dimension: dmbtr {
    type: number
    sql: ${TABLE}.Dmbtr ;;
  }
  dimension: invoice_date {
    type: string
    sql: ${TABLE}.Invoice_Date ;;
  }
  dimension: invoice_id {
    type: string
    sql: ${TABLE}.Invoice_Id ;;
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
  dimension: wrbtr {
    type: number
    sql: ${TABLE}.Wrbtr ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
