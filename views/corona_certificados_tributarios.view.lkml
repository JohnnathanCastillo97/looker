view: corona_certificados_tributarios {
  sql_table_name: bd_ic_cliente.Corona_certificados_tributarios ;;
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
  dimension: city_code {
    type: string
    sql: ${TABLE}.City_Code ;;
  }
  dimension: gjahr {
    type: string
    sql: ${TABLE}.Gjahr ;;
  }
  dimension: migrated {
    type: number
    sql: ${TABLE}.migrated ;;
  }
  dimension: mrko {
    type: number
    sql: ${TABLE}.Mrko ;;
  }
  dimension: obj_type {
    type: string
    sql: ${TABLE}.Obj_type ;;
  }
  dimension: pdf_version {
    type: string
    sql: ${TABLE}.Pdf_Version ;;
  }
  dimension: periv {
    type: string
    sql: ${TABLE}.Periv ;;
  }
  dimension: stcd {
    type: string
    sql: ${TABLE}.Stcd ;;
  }
  dimension: stlect {
    type: number
    sql: ${TABLE}.stlect ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
