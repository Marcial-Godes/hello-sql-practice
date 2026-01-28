##  5:47:55 | - 19.1 CONECTORES
#       https://www.youtube.com/watch?v=OuJerKzV5T0&t=20875s


# Importa el módulo mysql.connector
# Este módulo permite a Python conectarse a una base de datos MySQL
import mysql.connector


def print_user(user):
    # Diccionario de configuración de la conexión
    # Contiene los parámetros necesarios para conectarse al servidor MySQL
    config = {
        "host": "127.0.0.1",       # Dirección del servidor MySQL (localhost)
        "port": "3306",            # Puerto por defecto de MySQL
        "database": "hello_mysql", # Base de datos a la que se conecta
        "user": "root",            # Usuario de MySQL
        "password": ""     # Contraseña del usuario
    }

# def print_user(user):
    # Diccionario de configuración de la conexión
    # Contiene los parámetros necesarios para conectarse al servidor MySQL
#    config = {
#        "host": "b8196qgy9ppmtwznu4kt-mysql.services.clever-cloud.com",       # Dirección del servidor MySQL (localhost)
#        "port": "3306",            # Puerto por defecto de MySQL
#        "database": "b8196qgy9ppmtwznu4kt", # Base de datos a la que se conecta
#        "user": "ushmj9ycaxa1jtlg",            # Usuario de MySQL
#        "password": ""     # Contraseña del usuario
#    }


    # Establece la conexión con la base de datos usando los parámetros de config
    # **config expande el diccionario en argumentos con nombre
    connection = mysql.connector.connect(**config)


    # Crea un cursor para ejecutar consultas SQL
    cursor = connection.cursor()


    # Construye la consulta SQL usando un marcador de posición (%s)
    # Esta forma es SEGURA frente a inyección SQL,
    # ya que el valor se envía como dato, no como código SQL
    query = "SELECT * FROM users WHERE name = %s;"


    # Ejecuta la consulta SQL pasando los valores por separado
    # El conector se encarga de escapar y tratar correctamente el parámetro
    cursor.execute(query, (user,))


    # Recupera todos los registros devueltos por la consulta
    # El resultado es una lista de tuplas
    result = cursor.fetchall()


    # Recorre cada fila obtenida
    for row in result:
        # Imprime la fila completa (una tupla)
        print(row)


    # Cierra el cursor
    # Libera los recursos asociados a la ejecución de consultas
    cursor.close()


    # Cierra la conexión con la base de datos
    # Finaliza la sesión con MySQL y libera recursos
    connection.close()


print_user("Marcial")
# print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")


"""
    Apunte de viejo oficio
        1) connect() abre la conexión
        2) cursor() ejecuta SQL
        3) execute() lanza la consulta
        4) fetchall() trae los datos
        5) close() SIEMPRE al final
"""
