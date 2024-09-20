package repository;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class FileSystem {
    private final File FILE;

    public FileSystem(String path) {
        this.FILE = new File(path);
    }

    public List<String> read() {
        try (InputStream inputStream = getClass().getClassLoader().getResourceAsStream("Accounts.txt");
             BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {

            if (inputStream == null) {
                throw new FileNotFoundException("Resource 'Accounts.txt' not found in resources.");
            }

            List<String> accounts = new ArrayList<>();
            String line;
            while ((line = reader.readLine()) != null) {
                accounts.add(line);
            }

            return accounts;

        } catch (FileNotFoundException fnf) {
            System.out.println("Resource 'Accounts.txt' not found.");
        } catch (IOException ioe) {
            System.out.println("Could not read the resource file.");
        }

        return new ArrayList<>();
    }
}
