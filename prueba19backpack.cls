public class BackPack {
	Integer maximumWeight;
    List<List<Integer>> items;
    AnswerItems Answer;

    public BackPack(Integer maximumWeight, List<List<Integer>> items){
        this.maximumWeight = maximumWeight;
        this.items = items;
        this.Answer = getMoreValue(items, maximumWeight);
        
    }

    public AnswerItems getMoreValue(List<List<Integer>> listOfItems, Integer maximumW) {
        List<List<List<Integer>>> listOfCombinations = new List<List<List<Integer>>>();
        listOfCombinations.add(listOfItems);
        for(Integer i = 0; i < listOfItems.size(); i++) {
            List<List<Integer>> listItemAux2 = new List<List<Integer>>(listOfItems);
            listItemAux2.remove(listItemAux2.indexOf(listOfItems.get(i)));
            listItemAux2.add(listOfItems.get(i));
            for(Integer z = 0; z < (listOfItems.size()); z++) {
                for(Integer x = z+1; x < (listOfItems.size()); x++) {
                    List<List<Integer>> listItemAux3 = new List<List<Integer>>(listItemAux2);
                    List<List<Integer>> listItemAux4 = new List<List<Integer>>(listItemAux2);
                    List<List<Integer>> listItemAux5 = new List<List<Integer>>();
                    for(Integer m = z; m < x; m++){
                        listItemAux5.add(listItemAux4.get(m));
                    }
                    for(Integer r = 0; r < listItemAux5.size(); r++) {
                        listItemAux3.remove(listItemAux3.indexOf(listItemAux5[r]));
                    }
                    listOfCombinations.add(listItemAux3);
                }
    		}
		}
        
        List<List<List<Integer>>> uniqueCombinations = new List<List<List<Integer>>>();
        for(List<List<Integer>> choice: listOfCombinations) {
            if (uniqueCombinations.contains(choice) == False) {
            	uniqueCombinations.add(choice); 
            }
        }
        Integer weightAcum = 0;
        Integer valueAcum = 0;
        Integer pastValue = 0;
        Integer position = 0;
       	
        for(Integer i = 0; i < uniqueCombinations.size(); i++) {
            for(Integer j = 0; j < uniqueCombinations[i].size(); j++) {
                weightAcum = uniqueCombinations[i][j][0] + weightAcum;
                valueAcum = uniqueCombinations[i][j][1] + valueAcum;
            }
            if (valueAcum > pastValue && weightAcum <= maximumW) {
                pastValue = valueAcum;
                position = i;
            }
            valueAcum = 0;
            weightAcum = 0;
		}
        	
		List<List<Integer>> notUsedItems = new List<List<Integer>>(listOfItems);
        for (Integer h = 0; h < uniqueCombinations[position].size(); h++){	
            notUsedItems.remove(notUsedItems.indexOf(uniqueCombinations[position][h]));
        }
        
        Integer valueAcum2 = 0;
        for(Integer k = 0; k < notUsedItems.size(); k++) {
        	valueAcum2 = notUsedItems[k][1] + valueAcum2;
        }
		
        AnswerItems answers = new AnswerItems(uniqueCombinations[position], notUsedItems, pastValue, valueAcum2);
        
        return answers;
    }
    
    public Integer getMaximumWeight() {
        return this.maximumWeight;
    }
    
    public List<List<Integer>> getItems() {
        return this.items;
    }
    
    public AnswerItems getAnswer() {
        return this.Answer;
    }
    
}