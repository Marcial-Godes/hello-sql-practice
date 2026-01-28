##  5:47:55 | - 19.1 CONECTORES
#       https://www.youtube.com/watch?v=OuJerKzV5T0&t=20875s

# Importa el módulo mysql.connector
# Este módulo permite a Python conectarse a una base de datos MySQL
import os
import mysql.connector
from dotenv import load_dotenv


# Carga variables de entorno desde un archivo .env (si existe)
load_dotenv()


def get_db_config():
    """
    Lee la configuración desde variables de entorno.
    Esto evita tener contraseñas dentro del código (nunca deben ir en GitHub).
    """

    config = {
        "host": os.getenv("DB_HOST", "127.0.0.1"),
        "port": int(os.getenv("DB_PORT", "3306")),
        "database": os.getenv("DB_NAME", "hello_mysql"),
        "user": os.getenv("DB_USER", "root"),
        "password": os.getenv("DB_PASSWORD"),
    }

    # Seguridad mínima: no permitas conectar si falta password
    if not config["password"]:
        raise ValueError(
            "Falta DB_PASSWORD. Crea un archivo .env con DB_PASSWORD=tu_password"
        )

    return config


def print_user(user):
    # Obtiene configuración segura (desde .env)
    config = get_db_config()

    # Establece la conexión con la base de datos usando los parámetros de config
    # **config expande el diccionario en argumentos con nombre
    connection = mysql.connector.connect(**config)

    # Crea un cursor para ejecutar consultas SQL
    cursor = connection.cursor()

    # Construye la consulta SQL usando un marcador de posición (%s)
    # Esta forma es SEGURA frente a inyección SQL
    query = "SELECT * FROM users WHERE name = %s;"

    # Ejecuta la consulta SQL pasando los valores por separado
    cursor.execute(query, (user,))

    # Recupera todos los registros devueltos por la consulta
    result = cursor.fetchall()

    # Recorre cada fila obtenida
    for row in result:
        print(row)

    # Cierra recursos SIEMPRE
    cursor.close()
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
