import java.time.*;
import java.util.Comparator;

/**
 * Escreva uma descrição da classe SmartDeviceCostComparator aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class SmartDeviceCostComparator implements Comparator<SmartDevice>
{
   public int compare(SmartDevice a, SmartDevice b){
       //Smartdevice a  
        Duration durationA = Duration.between( a.getInicio(), LocalDateTime.now());
        long hoursA = durationA.toHours();       
        
        double costA = hoursA * a.getConsumoPorHora();
        
        //Smartdevice b  
        Duration durationB = Duration.between(b.getInicio(), LocalDateTime.now());
        long hoursB = durationB.toHours(); 
        
        double costB = hoursB * b.getConsumoPorHora();
        
        
        return Double.compare(costA, costB);
   }
}
