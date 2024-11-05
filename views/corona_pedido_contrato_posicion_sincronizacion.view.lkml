view: corona_pedido_contrato_posicion_sincronizacion {
  sql_table_name: bd_ic_cliente.Corona_pedido_contrato_posicion_sincronizacion ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aceptacion {
    type: string
    sql: ${TABLE}.aceptacion ;;
  }
  dimension: afnam {
    type: string
    sql: ${TABLE}.Afnam ;;
  }
  dimension: banfn {
    type: string
    sql: ${TABLE}.banfn ;;
  }
  dimension: bnfpo {
    type: string
    sql: ${TABLE}.Bnfpo ;;
  }
  dimension: ebeln {
    type: string
    sql: ${TABLE}.Ebeln ;;
  }
  dimension: ebelp {
    type: number
    sql: ${TABLE}.Ebelp ;;
  }
  dimension_group: eindt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Eindt ;;
  }
  dimension: elikz {
    type: string
    sql: ${TABLE}.Elikz ;;
  }
  dimension: entto {
    type: number
    sql: ${TABLE}.Entto ;;
  }
  dimension: infnr {
    type: string
    sql: ${TABLE}.Infnr ;;
  }
  dimension: knttp {
    type: string
    sql: ${TABLE}.Knttp ;;
  }
  dimension: konnr {
    type: string
    sql: ${TABLE}.Konnr ;;
  }
  dimension: ktpnr {
    type: string
    sql: ${TABLE}.Ktpnr ;;
  }
  dimension: lgort {
    type: string
    sql: ${TABLE}.Lgort ;;
  }
  dimension: loekz {
    type: string
    sql: ${TABLE}.Loekz ;;
  }
  dimension: matkl {
    type: string
    sql: ${TABLE}.Matkl ;;
  }
  dimension: matnr {
    type: string
    sql: ${TABLE}.Matnr ;;
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
  dimension: mwskz {
    type: string
    sql: ${TABLE}.Mwskz ;;
  }
  dimension: netpr {
    type: string
    sql: ${TABLE}.Netpr ;;
  }
  dimension: peinh {
    type: string
    sql: ${TABLE}.Peinh ;;
  }
  dimension: pstyp {
    type: string
    sql: ${TABLE}.Pstyp ;;
  }
  dimension: txz01 {
    type: string
    sql: ${TABLE}.Txz01 ;;
  }
  dimension: uebto {
    type: number
    sql: ${TABLE}.Uebto ;;
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
