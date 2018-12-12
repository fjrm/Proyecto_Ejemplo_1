import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;

public class BaseDatos {

	private Statement Stm;

	public static void main(String[] args) {
		BaseDatos m = new BaseDatos();
		m.buscarCoche("", ""); // El "" significa que no tiene que ordenar
	}
	
	public ArrayList<Object[]> buscarCoche(String busqueda, String ordenarPor) {
		JDatabase();
	//	String consulta = "select * from coches where marca like '%"+busqueda+"%'";
		String busqueda2 = "'%"+busqueda+"%'";
		String consulta = "select * from coches where marca like " + busqueda2 + " or modelo like " + busqueda2 + ordenarPor; // Para buscar por marca o por modelo
		System.out.println("consulta-->" + consulta);
		ArrayList<Object[]> coches = getCochesBD(consulta);
		System.out.println("datos de la bd: ");
		for (Object[] fila : coches) {
			System.out.println("columnas: "+fila.length+" - fila: " + Arrays.toString(fila));
		}
		
		return coches;
	}

	private void JDatabase() {
	
	    Connection cnn = null;
	    
	// ********** Conectar e imprimir *****************************************************
  	
	        try {
	        	Class.forName("com.mysql.jdbc.Driver"); // Lo primero que se debe realizar para poder conectarse a una base de datos es cargar el driver encargado de �sta funci�n. Para ello es utilizada la llamada Class.forName
	            cnn = DriverManager.getConnection("jdbc:mysql://localhost/japancarmm", "root", ""); // La direcci�n donde est� el fichero
	            Stm = cnn.createStatement();
	            if (cnn != null) {
	                System.out.println("�CONECTADOS!");
	            }

	        } catch (SQLException e) { // Fichero no encontrado
	            System.out.println(e);
	        } catch (ClassNotFoundException e) {
	            System.out.println(e);
	        }

	    }

    protected ArrayList<Object[]> getCochesBD(String sql) {

        ArrayList<Object[]> datos = new ArrayList<>();
    	ResultSet resultado;
        try {
            resultado = Stm.executeQuery(sql); // Execute Query es una utilidad de base de datos independiente del sistema operativo escrita completamente en Java. Utilizando la flexibilidad proporcionada por Java Database Connectivity (JDBC), Execute Query proporciona una forma sencilla de interactuar con casi cualquier base de datos desde consultas simples hasta creaci�n de tablas e importaci�n/exportaci�n de datos de un esquema completo
            while (resultado.next()) {
                Object[] fila = {resultado.getObject(1), resultado.getObject(2),
                    resultado.getObject(3), resultado.getObject(4), resultado.getObject(5), resultado.getObject(6), resultado.getObject(7), resultado.getObject(8), resultado.getObject(9), resultado.getObject(10), resultado.getObject(11), resultado.getObject(12), resultado.getObject(13), resultado.getObject(14), resultado.getObject(15), resultado.getObject(16)};
                
                datos.add(fila);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return datos;
    }
        
    
}
