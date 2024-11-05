view: corona_solped_servicio {
  sql_table_name: bd_ic_cliente.corona_solped_servicio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: banfn {
    type: string
    sql: ${TABLE}.Banfn ;;
  }
  dimension: bnfpo {
    type: string
    sql: ${TABLE}.Bnfpo ;;
  }
  dimension: del {
    type: string
    sql: ${TABLE}.Del ;;
  }
  dimension: extrow {
    type: string
    sql: ${TABLE}.Extrow ;;
  }
  dimension: ktext {
    type: string
    sql: ${TABLE}.Ktext ;;
  }
  dimension: matkl {
    type: string
    sql: ${TABLE}.Matkl ;;
  }
  dimension: meins {
    type: string
    sql: ${TABLE}.Meins ;;
  }
  dimension: menge {
    type: number
    sql: ${TABLE}.Menge ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: srvpos {
    type: string
    sql: ${TABLE}.Srvpos ;;
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
