import java.util.*;
/**
 * Escreva uma descrição da classe SmarDeviceIdComparator aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class SmarDeviceIdComparator implements Comparator<SmartDevice>
{
   
    public int compare(SmartDevice a, SmartDevice b)
    {
        return a.getId().compareTo(b.getId());
    }

    
}
