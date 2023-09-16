
/**
 * Escreva uma descrição da classe CasaInteligente aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
import java.util.*;
import java.util.function.Consumer;

public class CasaInteligente
{
    // variáveis de instância - substitua o exemplo abaixo pelo seu próprio
    private List<SmartDevice> smartDevices;
    
    private Map<String, List<SmartDevice>> divisoes;

    /**
     * Construtor para objetos da classe CasaInteligente
     */
    public CasaInteligente(Collection<SmartDevice> devices, Map<String, List<SmartDevice>> divisoes)
    {
        // inicializa variáveis de instância
        this.smartDevices = new ArrayList<SmartDevice>();
        
        for(SmartDevice a : devices) {
            this.smartDevices.add(a);
        }
        
        this.divisoes = divisoes;
    }
    
    
    public Iterator<SmartDevice> devicesPorConsumoCrescente(){
        /*List <SmartDevice> crescente = new ArrayList<SmartDevice>();

        double max = 0.0;
        
        for(SmartDevice a: this.smartDevices){
            if(crescente.size()==0){
                crescente.add(a);
                max = a.getConsumoPorHora();
            }else if(a.getConsumoPorHora() > max){
                crescente.add(a);
                max = a.getConsumoPorHora();

            }else{
                for(int i = 0; i<crescente.size(); i++){
                    if(a.getConsumoPorHora()<=crescente.get(i).getConsumoPorHora()){
                        crescente.add(i,a);
                        break;
                    }
                }
            }
        }
        */
        this.smartDevices.sort(new SmartDeviceConsumoComparator());
        
        for(SmartDevice a: this.smartDevices){
            System.out.println("Device:" + a.getId() + "consumoPorHora" + a.getConsumoPorHora());
        }
        
        return this.smartDevices.iterator();
    }
    
    public Iterator<SmartDevice> devicesIdCrescente(){
        
        this.smartDevices.sort(new SmarDeviceIdComparator().reversed());
        
        for(SmartDevice a: this.smartDevices){
            System.out.println("Device:" + a.getId() + "consumoPorHora" + a.getConsumoPorHora());
        }
        
        return this.smartDevices.iterator();
    }
    
    public Iterator<SmartDevice> devicesCustoCrescente(){
        
        this.smartDevices.sort(new SmartDeviceCostComparator());
        
        for(SmartDevice a: this.smartDevices){
            System.out.println("Device:" + a.getId() + "consumoPorHora" + a.getConsumoPorHora());
        }
        
        return this.smartDevices.iterator();
    }
    public double consumoPorDivisao(String divisao){
        double count = 0.0; 
        for(String a: this.divisoes.keySet()){
            if(a.equals(divisao)){
                List <SmartDevice> l= this.divisoes.get(a);
                for(SmartDevice s: l){
                    count+= s.getConsumoPorHora();                    
                }
            }
        }
        return count;
    }
    public String divisaoMaisEconomica(){
        double min=-1;
        String menor = "";
        
        for(String a: this.divisoes.keySet()){
            if(min==-1){
                min= consumoPorDivisao(a);
                menor= a;
            }
            else if (consumoPorDivisao(a)== min){
                if(a.compareTo(menor)>0){
                    menor= a;
                }
            }
            else if(consumoPorDivisao(a)<min){
                min= consumoPorDivisao(a);
                menor= a;
                
            }
            
        }
        return menor;
        
    }
    public void printCasainteligente(){
        for(SmartDevice a: this.smartDevices){
            System.out.println("Device:" + a.getId() + "consumoPorHora" + a.getConsumoPorHora());
        }
        
        for(String div : this.divisoes.keySet()){
            List<SmartDevice> values = this.divisoes.get(div);
            
            for(SmartDevice s: values ) {
                System.out.println("Divisao:" + div + "id smartDevice"+ s.getId());

            }
        }
    }
    
    public void remove(String id) {
        for (SmartDevice a : this.smartDevices) {
            if (a.getId().equals(id)) {
                this.smartDevices.remove(a);
                break;
            }
        }
        
        for(String d : this.divisoes.keySet()) {
            for (SmartDevice a : this.divisoes.get(d)) {
                if (a.getId().equals(id)) {
                    this.divisoes.get(d).remove(a);
                    break;
                }
            }
        }
    }
    
    public void alteraInfo(Consumer<SmartBulbDimmable> bd){
        for( SmartDevice a : this.smartDevices){
            if(a instanceof SmartBulbDimmable ){
                bd.accept((SmartBulbDimmable) a);
            }
        }
    }
}