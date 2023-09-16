import java.util.*;
/**
 * Escreva uma descrição da classe SmartDeviceConsumoComparator aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class SmartDeviceConsumoComparator implements Comparator<SmartDevice>{
    public int compare(SmartDevice a, SmartDevice b){
        return Double.compare(a.getConsumoPorHora(),b.getConsumoPorHora());
    }
}
