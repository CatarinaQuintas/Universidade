import java.time.*;
import java.util.function.Consumer;

/**
 * Escreva uma descrição da classe SmartBulbDimmable aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class SmartBulbDimmable extends SmartDevice
{
    private double tone;
    int primeiravez= 0;

    /**
     * Construtor para objetos da classe SmartBulbDimmable
     */
    public SmartBulbDimmable(String id, int tone, double consumoPorHora)
    {
       super(id, consumoPorHora, LocalDateTime.of(2023, 7, 8, 15, 30));
       this.tone= tone;
    }

    public void turnOn(){
        this.setOn(true);
        
        if (this.getInicio() == null){
            this.setInicio( LocalDateTime.now() );
            primeiravez++;
            
        }
        if(primeiravez ==1){
            this.tone = tone/2;
            this.setConsumo(this.getConsumoPorHora()/2);
        } else if(primeiravez ==2) {
            this.tone = tone*2;
            this.setConsumo(this.getConsumoPorHora()*2);
        }
        
        
        
    }
    
    Consumer<SmartBulbDimmable> alterainfo = (val) -> val.tone = (0.25*val.tone);
}
