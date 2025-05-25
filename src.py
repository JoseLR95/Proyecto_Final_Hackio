import pandas as pd
from rapidfuzz import process, fuzz
import numpy as np
import requests
import psycopg2

def normalizacion_nombres(lista1, lista2):
    
    lista_1 = lista1
    lista_2 = lista2

    # Copia para gestionar descartes
    lista_2_disponibles = lista_2.copy()
    clubes_unificados = {}

    # Primera pasada (umbral más alto)
    for nombre1 in lista_1:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_sort_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 95:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Segunda pasada (umbral medio)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.partial_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 90:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Tercera pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 85:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Cuarta pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 80:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Quinta pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 75:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None


    # Sexta pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 70:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None


    # Octava pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 65:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Novena pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 60:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Decima pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 55:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None

    # Undecima pasada (umbral más bajo)
    for nombre1 in [k for k, v in clubes_unificados.items() if v is None]:
        if not lista_2_disponibles:
            clubes_unificados[nombre1] = None
            continue
        resultado = process.extractOne(nombre1, lista_2_disponibles, scorer=fuzz.token_set_ratio)
        if resultado:
            match, score, _ = resultado
            if score > 50:
                clubes_unificados[nombre1] = match
                lista_2_disponibles.remove(match)
            else:
                clubes_unificados[nombre1] = None
        else:
            clubes_unificados[nombre1] = None



    # Resultado final
    df_clubes = pd.DataFrame(list(clubes_unificados.items()), columns=["Nombre_original", "Nombre_unificado"])

    return df_clubes

def extraer_coordenadas_manual(coord_str):
    if pd.isna(coord_str):
        return None, None, None
    try:
        # Asegurarnos de que es un string
        s = str(coord_str)

        # Quitar corchetes de los extremos
        if s.startswith('[') and s.endswith(']'):
            s = s[1:-1]
        else:
            # Si es nan se devuelve nan
            return None, None, None
        # Dividir por la coma
        partes = s.split(',')
        if len(partes) == 2:
            # Quitar espacios extra de cada parte y convertir a float
            x = float(partes[0].strip())
            y = float(partes[1].strip())
            return x, y, None
        elif len(partes) == 3:
            x = float(partes[0].strip())
            y = float(partes[1].strip())
            z = float(partes[2].strip())
            return x, y, z
        else:
            # Si no se encuentran dos partes después de dividir por la coma
            return None, None, None
    except ValueError:
        # Si la conversión a float falla (e.g., si las partes no son números)
        return None, None, None
    except Exception:
        # Para cualquier otro error inesperado
        return None, None, None
    
def conexion_postgres(dbname, user, password):
    """
    Establece una conexión con la base de datos PostgreSQL.

    Parámetros:

    dbname (str): Nombre de la base de datos.

    user (str): Usuario de la base de datos.

    password (str): Contraseña del usuario.

    host (str): Dirección del servidor.

    port (int): Puerto de conexión.

    Retorno:

    conn: Objeto de conexión.

    cur: Cursor de la base de datos.

    Uso: conexion_postgres(dbname, user, password, host, port)

    """
    conn = psycopg2.connect(
        dbname = dbname,
        user = user,
        password = password)
    cur = conn.cursor()
# Confirmar conexion
    cur.execute("SELECT version();")
    print(cur.fetchone())
    return conn, cur


def insertar_datos_automatico(df, tabla, cursor, conn):
    """
    Inserta automáticamente los datos de un DataFrame en una tabla PostgreSQL.

    Parámetros:

    df (pd.DataFrame): DataFrame con los datos a insertar.

    tabla (str): Nombre de la tabla de destino.

    cursor (psycopg2.cursor): Cursor de la base de datos.

    Uso: insertar_datos_automatico(df, tabla, cursor)
    
    """
    columnas = df.columns.tolist()  # Extraer nombres de columnas
    columnas_str = ", ".join(columnas) # Poner comas para separar los nombres de las columnas
    placeholders = ", ".join(["%s"] * len(columnas))  # Generar los %s en función del nº de columnas

    # Generar la query automáticamente
    insert_query = f"""
        INSERT INTO {tabla} ({columnas_str})
        VALUES ({placeholders})
    """

    # Convertir los datos del DataFrame en una lista de listas
    data_to_insert = df.values.tolist()

    # Ejecutar la inserción
    cursor.executemany(insert_query, data_to_insert)
    conn.commit()

def convertir_fechaeventos(dataframe):
    """
    Convierte las columnas que contengan la palabra "fecha" en objetos de fecha (datetime).

    Parámetros:

    dataframe (df): DataFrame con las fechas a convertir.

    Retorno:

    dataframe: DataFrame con fechas convertidas a objetos datetime.
    
    Uso: df = convertir_fechaeventos(df)

    """
    for col in dataframe.filter(like="fecha", axis=1):
        dataframe[col] = pd.to_datetime(dataframe[col])
    return dataframe

def combinar(val1, val2):
    try:
        # Si ambos son NaN
        if pd.isna(val1) and pd.isna(val2):
            return np.nan
        # Si uno es NaN, usar el otro
        if pd.isna(val1):
            return val2
        if pd.isna(val2):
            return val1
        # Si ambos son iguales
        if val1 == val2:
            return val1
        # Si ambos son numéricos, sumarlos
        if isinstance(val1, (int, float, np.number)) and isinstance(val2, (int, float, np.number)):
            return val1 + val2
        # Si son diferentes y no numéricos, devolver el valor actual (val1)
        return val1
    except Exception:
        # Si hay un error (por ejemplo, en la comparación), priorizar val1
        return val1