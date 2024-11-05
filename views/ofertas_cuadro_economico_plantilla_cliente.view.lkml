view: ofertas_cuadro_economico_plantilla_cliente {
  sql_table_name: bd_ic_cliente.ofertas_cuadro_economico_plantilla_cliente ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: a {
    type: string
    sql: ${TABLE}.A ;;
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
  dimension: b {
    type: string
    sql: ${TABLE}.B ;;
  }
  dimension: c {
    type: string
    sql: ${TABLE}.C ;;
  }
  dimension: cuadro_economico_plantilla_id {
    type: number
    sql: ${TABLE}.cuadro_economico_plantilla_id ;;
  }
  dimension: d {
    type: string
    sql: ${TABLE}.D ;;
  }
  dimension: e {
    type: string
    sql: ${TABLE}.E ;;
  }
  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }
  dimension: f {
    type: string
    sql: ${TABLE}.F ;;
  }
  dimension: g {
    type: string
    sql: ${TABLE}.G ;;
  }
  dimension: h {
    type: string
    sql: ${TABLE}.H ;;
  }
  dimension: i {
    type: string
    sql: ${TABLE}.I ;;
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
    drill_fields: [id]
  }
}
