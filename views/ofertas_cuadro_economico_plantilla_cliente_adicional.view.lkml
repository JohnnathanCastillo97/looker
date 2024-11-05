view: ofertas_cuadro_economico_plantilla_cliente_adicional {
  sql_table_name: bd_ic_cliente.ofertas_cuadro_economico_plantilla_cliente_adicional ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: oap1 {
    type: string
    sql: ${TABLE}.oap1 ;;
  }
  dimension: oap10 {
    type: string
    sql: ${TABLE}.oap10 ;;
  }
  dimension: oap2 {
    type: string
    sql: ${TABLE}.oap2 ;;
  }
  dimension: oap3 {
    type: string
    sql: ${TABLE}.oap3 ;;
  }
  dimension: oap4 {
    type: string
    sql: ${TABLE}.oap4 ;;
  }
  dimension: oap5 {
    type: string
    sql: ${TABLE}.oap5 ;;
  }
  dimension: oap6 {
    type: string
    sql: ${TABLE}.oap6 ;;
  }
  dimension: oap7 {
    type: string
    sql: ${TABLE}.oap7 ;;
  }
  dimension: oap8 {
    type: string
    sql: ${TABLE}.oap8 ;;
  }
  dimension: oap9 {
    type: string
    sql: ${TABLE}.oap9 ;;
  }
  dimension: ofertas_cuadro_economico_plantilla_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.ofertas_cuadro_economico_plantilla_id ;;
  }
  dimension: oip1 {
    type: string
    sql: ${TABLE}.oip1 ;;
  }
  dimension: oip10 {
    type: string
    sql: ${TABLE}.oip10 ;;
  }
  dimension: oip2 {
    type: string
    sql: ${TABLE}.oip2 ;;
  }
  dimension: oip3 {
    type: string
    sql: ${TABLE}.oip3 ;;
  }
  dimension: oip4 {
    type: string
    sql: ${TABLE}.oip4 ;;
  }
  dimension: oip5 {
    type: string
    sql: ${TABLE}.oip5 ;;
  }
  dimension: oip6 {
    type: string
    sql: ${TABLE}.oip6 ;;
  }
  dimension: oip7 {
    type: string
    sql: ${TABLE}.oip7 ;;
  }
  dimension: oip8 {
    type: string
    sql: ${TABLE}.oip8 ;;
  }
  dimension: oip9 {
    type: string
    sql: ${TABLE}.oip9 ;;
  }
  dimension: opnv1 {
    type: string
    sql: ${TABLE}.opnv1 ;;
  }
  dimension: opnv2 {
    type: string
    sql: ${TABLE}.opnv2 ;;
  }
  dimension: opnv3 {
    type: string
    sql: ${TABLE}.opnv3 ;;
  }
  dimension: opnv4 {
    type: string
    sql: ${TABLE}.opnv4 ;;
  }
  dimension: opnv5 {
    type: string
    sql: ${TABLE}.opnv5 ;;
  }
  measure: count {
    type: count
    drill_fields: [id, ofertas_cuadro_economico_plantilla.id]
  }
}
