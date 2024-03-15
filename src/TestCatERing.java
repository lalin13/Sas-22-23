import businesslogic.CatERing;
import businesslogic.UseCaseLogicException;
import businesslogic.event.Event;
import businesslogic.event.Service;
import businesslogic.menu.Menu;
import businesslogic.menu.Section;
import businesslogic.recipe.Recipe;
import javafx.collections.ObservableList;

import java.util.Arrays;
import java.util.Map;

public class TestCatERing {
    public static void main(String[] args) {
        try {
            /* System.out.println("TEST DATABASE CONNECTION");
            PersistenceManager.testSQLConnection();*/
            System.out.println("TEST FAKE LOGIN");
            CatERing.getInstance().getUserManager().fakeLogin("Lidia");
            System.out.println(CatERing.getInstance().getUserManager().getCurrentUser());

            System.out.println("\nTEST CREATE MENU");
            Menu m = CatERing.getInstance().getMenuManager().createMenu("Menu Pinco Pallino");

            System.out.println("\nTEST DEFINE SECTION");
            Section sec = CatERing.getInstance().getMenuManager().defineSection("Antipasti");
            System.out.println(m.testString());

            System.out.println("\nTEST GET EVENT INFO");
            ObservableList<Event> events = CatERing.getInstance().getEventManager().getEvents();
            for (Event e: events) {
                System.out.println(e);
                for (Service s: e.getServices()) {
                    System.out.println("\t" + s);
                }
            }
            System.out.println("");

            System.out.println("\nTEST INSERT ITEM IN SECTION");
            ObservableList<Recipe> recipes = CatERing.getInstance().getRecipeManager().getRecipes();
            for (int i = 0; i < 4 && i < recipes.size(); i++) {
                try {
                    // Annuncio del tentativo di inserimento
                    System.out.println("Tentativo di inserire la ricetta: " + recipes.get(i).getName());

                    // Chiamata al metodo di inserimento
                    CatERing.getInstance().getMenuManager().insertItem(recipes.get(i), sec);

                    // Conferma dell'inserimento riuscito
                    System.out.println("Ricetta inserita con successo: " + recipes.get(i).getName());
                } catch (UseCaseLogicException e) {
                    // Cattura e stampa di eventuali eccezioni
                    System.out.println("Impossibile inserire la ricetta: " + recipes.get(i).getName() + " - Eccezione: " + e.getMessage());
                }
            }


            System.out.println("\nTEST INSERT FREE ITEM");
            for (int i=recipes.size()-1; i > recipes.size()-4 && i >= 0; i--) {
                CatERing.getInstance().getMenuManager().insertItem(recipes.get(i));
            }
            System.out.println(m.testString());

            System.out.println("\nTEST EDIT FEATURES");
            Map<String, Boolean> f = CatERing.getInstance().getMenuManager().getCurrentMenu().getFeatures();
            String[] fNames = f.keySet().toArray(new String[0]);
            boolean[] vals = new boolean[fNames.length];
            Arrays.fill(vals, true);
            CatERing.getInstance().getMenuManager().setAdditionalFeatures(fNames, vals);
            System.out.println(m.testString());

            System.out.println("\nTEST EDIT TITLE");
            CatERing.getInstance().getMenuManager().changeTitle("Obladì Obladà");
            System.out.println(m.testString());

            System.out.println("\nTEST PUBLISH");
            CatERing.getInstance().getMenuManager().publish();
            System.out.println(m.testString());

        } catch (UseCaseLogicException e) {
            System.out.println("Errore di logica nello use case");
        }
    }
}
