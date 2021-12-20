import java.sql.*;
import java.util.Scanner;

// used code from https://mkyong.com/jdbc/how-do-connect-to-postgresql-with-jdbc-driver-java/
// to get database connection started

public class JDBC {

    private static String courseId;
    static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        try (Connection conn = DriverManager.getConnection(
                "jdbc:postgresql://127.0.0.1:5432/COMP3005A", "postgres", "super")) {

            if (conn != null) {
                System.out.println("Connected to the database!");
            } else {
                System.out.println("Failed to make connection!");
            }

            System.out.println("Input the course id to find out the prereqs:");
            courseId = input.nextLine();

            // referenced https://docs.oracle.com/javase/tutorial/jdbc/basics/processingsqlstatements.html
            // to double check syntax

            Statement statement = conn.createStatement();
            ResultSet rs = statement.executeQuery(
                    "SELECT prereq_id FROM course NATURAL JOIN prereq WHERE course_id LIKE" + "'" + courseId + "'");

            while (rs.next()) {
                String preReq = rs.getString("prereq_id");
                System.out.println(preReq);
                rs = statement.executeQuery(
                        "SELECT prereq_id FROM course NATURAL JOIN prereq WHERE course_id LIKE" + "'" + preReq + "'");
            }

        } catch (SQLException e) {
            System.err.format("SQL State: %s\n%s", e.getSQLState(), e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}