import java.time.*;
/**
 * Escreva uma descrição da classe SmartDevice aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class SmartDevice
{
    // variáveis de instância - substitua o exemplo abaixo pelo seu próprio
    private String id;
    private boolean on;
    private double consumoPorHora;
    private LocalDateTime inicio;
    
    public String getId() {
        return this.id;
    }
    
    public double getConsumoPorHora() {
        return this.consumoPorHora;
    }
    public LocalDateTime getInicio() {
        return this.inicio;
    }
    public void setOn(boolean on){
        this.on=on;
    }
    public void setInicio(LocalDateTime inicio){
        this.inicio = inicio;
    }
    public void setConsumo(double consumoPorHora ){
        this.consumoPorHora = consumoPorHora;
    }
    
    public SmartDevice(String id, double consumoPorHora, LocalDateTime inicio)
    {
        // inicializa variáveis de instância
        this.id = id;
        this.on = false;
        this.consumoPorHora = consumoPorHora;   
        this.inicio = inicio;
    }
    public void turnOn() {
       this.on = true;
       if (this.inicio == null)
          this.inicio = LocalDateTime.now();
    }
}
