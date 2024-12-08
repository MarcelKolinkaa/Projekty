const expenses = {
    "2023-01": {
        "01": {
            "food": [ 22.11, 43, 11.72, 2.2, 36.29, 2.5, 19 ],
            "fuel": [ 210.22 ]
        },
        "09": {
            "food": [ 11.9 ],
            "fuel": [ 190.22 ]
        }
    },
    "2023-03": {
        "07": {
            "food": [ 20, 11.9, 30.20, 11.9 ]
        },
        "04": {
            "food": [ 10.20, 11.50, 2.5 ],
            "fuel": []
        }
    },
    "2023-04": {}
}               

function median(values){
    if (values.length ===0 ) return null;
    values.sort((a,b) => a-b);
    const middle_number = Math.floor(values.length / 2);

    if(values.length % 2 === 0) {
      return (values[middle_number - 1 ] + values[middle_number]) / 2;
    } else {
     return values[middle_number];
    }
}

    
function firstSunday(stringDate){
    let date = new Date(stringDate)
    for (let day = 1; day <=7; day++) {
        
        if (date.getDay() === 0) {
            return day;

        }
        date.setMilliseconds(date.getMilliseconds() + (1000 * 60 *60 *24) );
    }
 }

function solution(dataset){
    let result = null;
    let allValues = [];
    

    for (const months in dataset) { 
        for (const day in dataset[months]) {
            
            for (const values in dataset[months][day]) {
                    
                if(day <= firstSunday(months)){
                for(let i = 0; i<dataset[months][day][values].length; i++){
                    if(dataset[months][day][values][i] === undefined){
                        break;
                    }
                    allValues.push(dataset[months][day][values][i]);
                } 
                }
                
            }
        }
        }

      
        if (allValues.length > 0){
            result = median(allValues);
        }
        return result;
        
}
console.log('Wynik to:'+solution(expenses)); 
solution(expenses);