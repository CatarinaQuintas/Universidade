import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.HashMap;
import java.time.*;

public class GesParques
{
    private List<Parque> parques;
    private List<Viatura> viaturas;
    private List<Registo> registos;
    private Map<String, List <Viatura>> parqueViaturas;
    
    public GesParques(List <Parque> parques, List<Viatura> viaturas)
    {
        this.parques = parques;
        this.viaturas = viaturas;
        this.registos = new ArrayList<Registo>();
        this.parqueViaturas = new HashMap<String, List <Viatura>>();
    }

    public void registaEntrada(String codParque, String matricula) throws Exception{
        Viatura via  = null;
        Parque par = null;
        
        for(Viatura v : this.viaturas){
            if(v.getMatricula().equals(matricula)){
                via = v;
                break;
                
            }
        }
        
        if(via == null){
            throw new Exception("viatura nao encontrada");
        }
        
        for(Parque p : this.parques){
            if(p.getCodParque().equals(codParque)){
                par = p;
                if(p.getOcupacao()>=p.getLotacaoMax()){
                   throw new Exception("sem espaço");
                
                }
                break;
            }
        }
        
        if(par==null){
            throw new Exception("parque nao encontrado");
        }
        
        for(String p: this.parqueViaturas.keySet()){
            if(p.equals(codParque)){
                this.parqueViaturas.get(p).add(via);
                par.setOcupacao(par.getOcupacao()+1);
                Registo rn = new Registo(par, via);
                this.registos.add(rn);
                return;
            }
        }
        
        List <Viatura> novo = new ArrayList<Viatura>();
        novo.add(via);
        this.parqueViaturas.put(codParque, novo);
        par.setOcupacao(par.getOcupacao()+1);

        
        Registo rn = new Registo(par, via);
        this.registos.add(rn);
        
    }
    public Viatura maiorTempoEstacionamento(){
        Viatura maior = null;
        double maxTempo = 0.0;
        
        for(Registo r : this.registos){
            if(r.tempoNoParque()>=maxTempo){
                maxTempo = r.tempoNoParque();
                maior = r.getViatura();
            }
        }
        return maior;
    }
    public void sairDoParque(String matricula){
        for(String codParque: this.parqueViaturas.keySet()){
            List <Viatura> l= this.parqueViaturas.get(codParque);
            for(Viatura v : l ){
                if(v.getMatricula().equals(matricula)){
                  
                    for(Parque p : this.parques ){
                        if(p.getCodParque().equals(codParque)){
                            p.setOcupacao(p.getOcupacao()-1);
                        }
                    }
                    
                    for(Registo r : this.registos){
                        if(r.getViatura().getMatricula().equals(matricula)){
                            r.setHoraSaida(LocalDateTime.now());

                        }
                    }
                    l.remove(v);
                    break;
                }
            }
        }       
    }
    public boolean apenasNumParque(String matricula){
        int cont = 0;
        
        for(String codParque : this.parqueViaturas.keySet()){
            List <Viatura> l = this.parqueViaturas.get(codParque);
            for(Viatura v : l ){
                if(v.getMatricula().equals(matricula)){
                    cont++ ;
                }
            }
            
        }
        
        return cont <= 1;
    }
    
    public void imprimeParque(){
        for(String cod : this.parqueViaturas.keySet()){
            List<Viatura> a = this.parqueViaturas.get(cod);
            for(Viatura v : a){
                System.out.println("parque" + cod + "viatura" + v.getMatricula() );
            }
        }
        for(Parque d : this.parques){
            System.out.println("parque" + d.getOcupacao() );
            
        }
        for(Registo r : this.registos){
            System.out.println("registo" + r.getHoraEntrada() + r.getHoraSaida() );
            
        }
    }
}
