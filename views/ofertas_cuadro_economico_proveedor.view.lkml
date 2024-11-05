view: ofertas_cuadro_economico_proveedor {
  sql_table_name: bd_ic_cliente.ofertas_cuadro_economico_proveedor ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aa {
    type: string
    sql: ${TABLE}.AA ;;
  }
  dimension: ab {
    type: string
    sql: ${TABLE}.AB ;;
  }
  dimension: ac {
    type: string
    sql: ${TABLE}.AC ;;
  }
  dimension: ad {
    type: string
    sql: ${TABLE}.AD ;;
  }
  dimension: ae {
    type: string
    sql: ${TABLE}.AE ;;
  }
  dimension: af {
    type: string
    sql: ${TABLE}.AF ;;
  }
  dimension: ag {
    type: string
    sql: ${TABLE}.AG ;;
  }
  dimension: ah {
    type: string
    sql: ${TABLE}.AH ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: h {
    type: string
    sql: ${TABLE}.H ;;
  }
  dimension: i {
    type: string
    sql: ${TABLE}.I ;;
  }
  dimension: item_cliente_id {
    type: number
    sql: ${TABLE}.item_cliente_id ;;
  }
  dimension: j {
    type: string
    sql: ${TABLE}.J ;;
  }
  dimension: k {
    type: string
    sql: ${TABLE}.K ;;
  }
  dimension: l {
    type: string
    sql: ${TABLE}.L ;;
  }
  dimension: m {
    type: string
    sql: ${TABLE}.M ;;
  }
  dimension: n {
    type: string
    sql: ${TABLE}.N ;;
  }
  dimension: o {
    type: string
    sql: ${TABLE}.O ;;
  }
  dimension: p {
    type: string
    sql: ${TABLE}.P ;;
  }
  dimension: plantilla_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.plantilla_id ;;
  }
  dimension: q {
    type: string
    sql: ${TABLE}.Q ;;
  }
  dimension: r {
    type: string
    sql: ${TABLE}.R ;;
  }
  dimension: s {
    type: string
    sql: ${TABLE}.S ;;
  }
  dimension: t {
    type: string
    sql: ${TABLE}.T ;;
  }
  dimension: u {
    type: string
    sql: ${TABLE}.U ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: usuario_proveedor_id {
    type: number
    sql: ${TABLE}.usuario_proveedor_id ;;
  }
  dimension: v {
    type: string
    sql: ${TABLE}.V ;;
  }
  dimension: w {
    type: string
    sql: ${TABLE}.W ;;
  }
  dimension: x {
    type: string
    sql: ${TABLE}.X ;;
  }
  dimension: y {
    type: string
    sql: ${TABLE}.Y ;;
  }
  dimension: z {
    type: string
    sql: ${TABLE}.Z ;;
  }
  measure: count {
    type: count
    drill_fields: [id, plantillas.id]
  }
}
