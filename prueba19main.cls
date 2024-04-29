public class Main {
    public static void saveItems() {
        List<List<Integer>> items = new List<List<Integer>>();
        items.add(new List<Integer>{2,3});
        items.add(new List<Integer>{3,4});
        items.add(new List<Integer>{4,5});
        items.add(new List<Integer>{5,6});
        Integer maximumW = 10; 
        
        BackPack Back1 = new BackPack(maximumW, items);
        system.debug(Back1.getAnswer().getBestCombinations());
        system.debug(Back1.getAnswer().getNotUsedItems());
        system.debug(Back1.getAnswer().getValueBestCombinations());
        system.debug(Back1.getAnswer().getValueNotUsedItems());
    }
}
