import java.util.*;
import java.time.LocalDateTime;

/**
 * Escreva uma descrição da classe Main aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class Main
{
    // variáveis de instância - substitua o exemplo abaixo pelo seu próprio
    public static void main(String args[])  //static method  
    {
        // devices
        
        List<SmartDevice> devicesTotais = new ArrayList<SmartDevice>(); 
        
        List<SmartDevice> devicesQuarto = new ArrayList<SmartDevice>(); 
        
        List<SmartDevice> devicesCozinha = new ArrayList<SmartDevice>(); 
        
        SmartDevice device1 = new SmartDevice("1", 10,  LocalDateTime.of(2023, 7, 8, 15, 30));
        
        SmartDevice device2 = new SmartDevice("2", 13,  LocalDateTime.of(2023, 7, 8, 15, 30));
        
        SmartDevice device3 = new SmartDevice("3", 2,LocalDateTime.of(2020, 7, 8, 15, 30) );
        
        SmartDevice device4 = new SmartDevice("4", 20, LocalDateTime.of(2023, 7, 8, 15, 30));
        
        devicesTotais.add(device1); 
        
        devicesTotais.add(device2);
        
        devicesTotais.add(device3);
        
        devicesTotais.add(device4);
        
        devicesQuarto.add(device1);
        
        devicesQuarto.add(device2);
        
        devicesCozinha.add(device3);
        
        devicesCozinha.add(device4);
        
        // divisoes
        
        Map<String, List<SmartDevice>> divisoes = new HashMap<String, List<SmartDevice>>(){{
            put("Quarto", devicesQuarto);
            put("Cozinha", devicesCozinha);
        }};
        

        CasaInteligente a = new CasaInteligente(devicesTotais, divisoes);
       
        //a.remove("1");
        
         a.printCasainteligente();
         
         a.devicesPorConsumoCrescente();         
         a.devicesIdCrescente();
         a.devicesCustoCrescente();
        System.out.println(a.divisaoMaisEconomica() );
         
    }  
}
