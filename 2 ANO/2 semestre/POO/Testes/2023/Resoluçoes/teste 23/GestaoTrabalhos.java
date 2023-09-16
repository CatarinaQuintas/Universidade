import java.util.List;
import java.util.Map;
import java.time.*;
import java.util.Collection;
import java.util.ArrayList;

/**
 * Escreva uma descrição da classe GestaoTrabalhos aqui.
 * 
 * @author (seu nome) 
 * @version (um número da versão ou uma data)
 */
public class GestaoTrabalhos
{
    private List <Aluno> alunos;
    private Map<String,List <Aluno>> grupoAlunos;
    private List <Grupo> grupos;
    private LocalDate limite;

    /**
     * Construtor para objetos da classe GestaoTrabalhos
     */
    public Aluno nome(String cod){
        Aluno a = null;
        for(Aluno r : this.alunos){
            if(r.getCodAluno().equals(cod)){
                a=r;
            }
        }
        return a;
    }
    public GestaoTrabalhos(Collection<Aluno> alunos, Map<String,String> alunosGrupo, LocalDate dataLimite){
        this.alunos = new ArrayList<Aluno>();
        for(Aluno a : alunos ){
            this.alunos.add(a);
        }
        
        for(String codAluno : alunosGrupo.keySet()){
            String grupo = alunosGrupo.get(codAluno);
            if(this.grupoAlunos.containsKey(grupo)){
                this.grupoAlunos.get(grupo).add(nome(codAluno));
            }else {
                List <Aluno> novo = new ArrayList<Aluno>();
                novo.add(nome(codAluno));
                this.grupoAlunos.put(grupo, novo);

            }
        }
        this.limite= dataLimite;
    }

   public void adicionaAluno(Aluno a) throws Exception{
       Aluno aluno = null;
       for(Aluno r : this.alunos){
           if(r.getCodAluno().equals(a.getCodAluno())){
               throw new Exception("ja existe");
           }
       }

        this.alunos.add(a);
   }
   public Entrega melhorEntrega(){
       int notaMax = 0;
       String grupoMax = ""; 
       Entrega melhor = new Entrega();
       for(Grupo g: this.grupos){
           List <Entrega> entregas = g.getEntregas();
           for(Entrega e : entregas){
               int nota = e.calculaNotaEntrega();
               
               if(nota >notaMax){
                   notaMax= nota;
                   melhor = e;
                   grupoMax = g.getCodGrupo();
               }else if(nota==notaMax){
                   /*if(compareTo(g.getCodGrupo(),grupoMax)< 0){
                       melhor = e;
                       grupoMax = g.getCodGrupo();
                   }*/
               }
           }
       }
       return melhor;
   }
   public void adicionaEntrega(String codGrupo, Entrega e) throws Exception{
       for(String cod : this.grupoAlunos.keySet() ){
           if(cod.equals(codGrupo)){
               List <Aluno> l = this.grupoAlunos.get(cod);
               for(Aluno a: l){
                   if(a.getCodAluno().equals(e.getAluno().getCodAluno())){
                       throw new Exception("avaliador esta no grupo");
                   }        
               }
            }        
       }
       if(!LocalDate.now().isBefore(e.getDataLimite())){
           throw new Exception("data ultrapassada");
       }else {
           for(Grupo g: this.grupos){
               if(g.getCodGrupo().equals(codGrupo)){
                   g.getEntregas().add(e);
               }
           }
       }
              
   }
}
