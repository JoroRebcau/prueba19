public class AnswerItems {
	List<List<Integer>> bestCombination;
    List<List<Integer>> notUsedItems;
    Integer valueBestCombinations;
    Integer valueNotUsedItems;
    
    public AnswerItems(List<List<Integer>> bestCombinationI, List<List<Integer>> notUsedItemsI,
                    Integer valueBestCombinationsI, Integer valueNotUsedItemsI) {
                            this.bestCombination = bestCombinationI;
    						this.notUsedItems = notUsedItemsI;
    						this.valueBestCombinations = valueBestCombinationsI;
    						this.valueNotUsedItems = valueNotUsedItemsI;
                    }
    public List<List<Integer>> getBestCombinations() {
		return this.bestCombination;       	
    }
    
    public List<List<Integer>> getNotUsedItems() {
		return this.notUsedItems;       	
    }
    
    public Integer getValueBestCombinations() {
		return this.valueBestCombinations;       	
    }
    
    public Integer getValueNotUsedItems() {
		return this.valueNotUsedItems;       	
    }

    public void getGeneralReport() {
        
    }
}