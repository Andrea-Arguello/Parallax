# Andrea Arguello 17801
# lab12-17801.py
# Laboratorio 12 de bases de datos
import psycopg2

read_only='BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED READ ONLY'
read_write='BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED READ WRITE'

    
def menu():
    op=(int(input('Que desea hacer?\n0. Salir\n1. Buscar un modelo de pc con cierto precio (o el precio mas cercano)\n2. Buscar un modelo de Laptop que cumpla con una velocidad, ram y disco minimo\n3. Buscar una combinacion de PC e impresora con un presupuesto maximo y una velocidad minima\n4. Ingresar un modelo de PC con especificaciones\n5. Ingresar un precio, y ver la cantidad de productos con un precio mayor a este\n>>> ')))
    return op
            

def findProducto(modelo):
    #verificar que no exista el modelo
    #esta transaccion es read only
    #https://pynative.com/python-postgresql-transaction-management-using-commit-and-rollback/
    cursor.execute(read_only)
    query_search="select * from producto where modelo='"+str(modelo)+"'"
    cursor.execute(query_search)
    mobile_records = cursor.fetchall()
    connection.commit()
    return len(mobile_records)

    

try:
    connection = psycopg2.connect(user = "postgres",
                                      password = "gay123",
                                      host = "127.0.0.1",
                                      port = "5432",
                                      database = "lab12-17801")
    cursor=connection.cursor()
    print(connection.get_dsn_parameters(),"\n")
    cursor.execute("SELECT version();")
    record=cursor.fetchone()
    print("####Esta conectado a - ", record, "####\n")
    opcion=menu()
    while opcion!=0:
        if opcion==1:
            #esta transaccion es read only
            #https://pynative.com/python-postgresql-transaction-management-using-commit-and-rollback/
            precio_a=float(input("Ingrese el precio que desea buscar\n>>> "))
            cursor.execute(read_only)
            query_a = "select * from closest_price("+str(precio_a)+")"
            cursor.execute(query_a)
            print("Seleccionando tuplas de pc (cursor.fetchall())")
            mobile_records = cursor.fetchall() 
            #print("Print each row and it's columns values")
            print('|\tmodelo\t\t|\tvelocidad\t|\tram\t|\tdisco\t|\tprecio\t\t|')
            print('|-----------------------|-----------------------|---------------|---------------|-----------------------|')
            for row in mobile_records:
                print("|\t", row[0],"\t\t|\t",row[1],"\t\t|\t",row[2],"\t|\t",row[3],"\t|\t",row[4],"\t|")
            print("\n")
            connection.commit()
            print("####Subiendo cambios####")
        elif opcion==2:    
            velocidad_b=int(input("Ingrese un minimo de velocidad\n>>> "))
            ram_b=int(input("Ingrese un minimo de ram\n>>> "))
            disco_b=int(input("Ingrese un minimo de tamanio de disco\n>>> "))
            cursor.execute(read_only)
            query_b="SELECT * FROM min_specs("+str(velocidad_b)+","+str(ram_b)+","+str(disco_b)+")"
            cursor.execute(query_b)
            mobile_records = cursor.fetchall()
            print('|\tmodelo\t\t|\tvelocidad\t|\tram\t|\tdisco\t|\tpantalla\t|\tprecio\t\t|\tfabricante\t|')
            print('|-----------------------|-----------------------|---------------|---------------|-----------------------|-----------------------|-----------------------|')
            for row in mobile_records:
                print("|\t", row[0],"\t\t|\t",row[1],"\t\t|\t",row[2],"\t|\t",row[3],"\t|\t",row[4],"\t\t|\t",row[5],"\t|\t",row[6],"\t\t|")
            print("\n")
            connection.commit()
            print("####Subiendo cambios####")
        elif opcion==3:
            #En mi modelo de bases de datos, el atributo 'color' de la impresora corresponde a 0 o 1, siendo 0 false y 1 true
            #Si, ademas de los datos que ya se piden, se quisiera evaluar el atributo 'color,' simplemente se evaluaria con un where
            #donde este atributo sea igual a 1
            cursor.execute(read_only)
            precio_c=float(input("Ingrese el presupuesto maximo disponible >>> "))
            velmin_c=float(input("Ingrese la velocidad minima que debe tener la PC >>> "))
            query_c="select * from pc_printer_combo("+str(precio_c)+","+str(velmin_c)+")"
            cursor.execute(read_only)
            cursor.execute(query_c)
            mobile_records=cursor.fetchall()
            connection.commit()
            print('\tpc\t|\timpresora\t|\tprecio\t')
            print('----------------|-----------------------|----------------')
            for row in mobile_records:
                print('\t'+str(row[0])+'\t|\t'+str(row[1])+'\t\t|\t'+str(row[2]))
            connection.commit()
            print("####Subiendo cambios####")
        elif opcion==4:
            cursor.execute(read_write)
            modelo_d=int(input("Ingrese el modelo de PC que desea ingresar >>> "))
            while modelo_d<=0:
                print("ERROR: No se puede ingresar un numero de modelo negativo")
                modelo_d=int(input("Ingrese el modelo de PC que desea ingresar >>> "))
            resultadosM=findProducto(modelo_d)
            if resultadosM!=0:
                print("AVISO: Ya existe un modelo con este numero, generando otro...")
            while resultadosM!=0:
                modelo_d+=1
                resultadosM=findProducto(modelo_d)
            print("Su nuevo numero de modelo es: ",modelo_d)
            fabricante_d=input("Ingrese el fabricante que desea asociar con el modelo de PC "+str(modelo_d) +">>> ")
            ram_d = int(input("Ingrese el tamanio de RAM asociado >>> "))
            velocidad_d = float(input("Ingrese la velocidad asociada >>> "))
            disco_d= int(input("Ingrese el tamanio de disco duro asociado >>> "))
            precio_d = float(input("Ingrese el precio asociado >>> "))
            cursor.execute(read_write)
            insert_producto="insert into producto(modelo,fabricante,tipo) values ('"+str(modelo_d)+"','"+fabricante_d+"','pc')"
            cursor.execute(insert_producto)
            insert_pc="insert into pc(modelo,ram,velocidad,disco,precio) values ('"+str(modelo_d)+"','"+str(ram_d)+"','"+str(velocidad_d)+"','"+str(disco_d)+"','"+str(precio_d)+"')"
            cursor.execute(insert_pc)
            print("###Se ha insertado el nuevo modelo en ambas tablas###")
            connection.commit()
            print("####Subiendo cambios####")
        elif opcion==5:
            precio_e=int(input("Ingrese un precio minimo\n>>> "))
            cursor.execute(read_only)
            query_e="SELECT * FROM min_price("+str(precio_e)+")"
            cursor.execute(query_e)
            mobile_records = cursor.fetchall()
            print('\tcantidad\t|\ttipo\t\t')
            print('------------------------|-----------------------')
            for row in mobile_records:
                print("\t", row[0],"\t\t|\t",row[1],"\t")
            print("\n")
            connection.commit()
            print("####Subiendo cambios####")
            
                
                
        opcion=menu()


except (Exception,psycopg2.Error) as error:
    print("Error al conectar a PostgreSQL,\nERROR: ", error)
    print("####Ejecutando Rollback####")
    connection.rollback()
except (KeyboardInterrupt,SystemExit):
    print("KeyboardInterrupt detectado")
    print("####Ejecutando Rollback####")
    connection.rollback()
finally:
    if opcion==0:
        connection.commit()
        print("####Subiendo cambios####")
        if (connection):
            cursor.close()
            connection.close()
            print("####Se ha cerrado la conexion con PostgreSQL####")
        
