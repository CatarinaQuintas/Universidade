// Questoes 2 Parte - PI  

typedef struct lligada {
    int valor;
    struct lligada *prox;
} *LInt;


//Questao 1
int length (LInt l){
	int i=0;
	while( l!=NULL){
		l = l->prox;
		i++;
	}
	return i;
}

//Questao 2
void freeL (LInt l){
	Lint temp;
	while( l !=NULL){
		temp= l;
		l = l ->prox;
		free(temp);
	}
}


//Questao 3
void imprimeL ( LInt l ) {
	LInt temp;
	while(l !=NULL){
		printf("%d\n", l->valor);
		l = l ->prox;
	}
}

//Questao 4 
LInt reverseL (LInt l){
    LInt ant = NULL;
    LInt temp;
    while (l!= NULL){
        temp = l->prox;
        l->prox = ant;
        ant = l;
        l = temp;
    }
    return ant;
}

//Questao 5 
void insertOrd (LInt *l, int x){
    LInt novoNo = (LInt) malloc (sizeof(struct lligada));
    novoNo->valor = x;
    novoNo->prox = NULL;
    
    if(*l ==NULL || x<= (*l) -> valor){
        novoNo->prox = *l;
        *l = novoNo;
    }else{
        LInt atual = *l;
        while (atual->prox != NULL && atual->prox ->valor<x){
            atual = atual->prox;
            
        }
        //inserir o no
        novoNo->prox = atual->prox;
        atual->prox = novoNo;
    }
}

//Questao 6 
int removeOneOrd (LInt *l, int x){
    if(*l == NULL){
        return 1 ;
    }
    LInt atual = *l;
    LInt anterior = NULL;
    
    while(atual != NULL) {
        if(atual->valor == x ){
            if(anterior == NULL){
                *l = atual->prox;
            }else {
                anterior ->prox = atual-> prox;
            }
            free(atual);
            return 0;
        }
        anterior = atual;
        atual= atual->prox;
    }
    return 1;
}


//Questao 7 
void merge (LInt *r, LInt a, LInt b){
    if( a ==NULL) {
        *r =b;
        return;
    }
    if( b ==NULL) {
        *r =a;
        return;
    }
    if(a->valor<b->valor){
        *r = a;
        merge (&(*r)->prox, a->prox, b);
    }else{
        *r=b;
        merge (&(*r)->prox, a, b->prox);
    }
}

//Questao 8
void splitQS (LInt l, int x, LInt *mx, LInt *Mx){
    *mx = NULL;
    *Mx = NULL;
    
    while(l != NULL){
        if(l->valor<x){
            *mx= l;
            mx = &(*mx)->prox;
        }else{
            *Mx = l;
            Mx = &(*Mx)->prox;
        }
        l=l->prox;
    }
    *mx = NULL;
    *Mx = NULL;
}

//Questao 9 
LInt parteAmeio (LInt *l){
    int mid = length(*l)/2;
    LInt y = *l;
    LInt *curr = &y;
    
    while (mid>0){
        curr = &((*curr)->prox);
        mid--;
        
    }
    *l= *curr;
    *curr=NULL;
    return y;
}


//Questao 10 
int removeAll(LInt *lista, int valor) {
    int count = 0;

    while (*lista != NULL) {
        if ((*lista)->valor == valor) {
            LInt temp = *lista;
            *lista = (*lista)->prox;
            free(temp);
            count++;
        } else {
            lista = &((*lista)->prox);
        }
    }

    return count;
}

//Questao 11
int removeDups (LInt *l){
    LInt atual = *l;
    
    while (atual!= NULL){
        LInt temp = atual->prox;
        LInt anterior = atual;
        
        
        while(temp!= NULL){
            if(temp->valor ==atual->valor){
                anterior->prox = temp->prox;
                free(temp);
                temp= anterior->prox;
            }else{
                anterior = temp;
                temp = temp->prox;
            }
        }
        atual = atual->prox;
    }
    return 0;
}

//Questao 12
int removeMaiorL (LInt *l){
    LInt atual = *l;
    LInt anterior = NULL;
    int max = (*l)->valor;
    
    while(atual!= NULL){
        if(atual->valor > max){
            max= atual->valor;
        }
        anterior= atual;
        atual = atual->prox;
    }
    atual = *l;
    anterior = NULL;
    
    while(atual!= NULL){
        if(atual->valor == max){
            if(anterior == NULL){
                *l = atual->prox;
            } else anterior->prox = atual->prox;
            free(atual);
            break;
        }
        anterior = atual;
        atual = atual->prox;
    }   
    return max;
}

//Questao 13
void init(LInt *lista) {
    if (*lista == NULL) {
        fprintf(stderr, "A lista está vazia.\n");
        exit(1);
    }

    LInt atual = *lista;
    LInt anterior = NULL;

    while (atual->prox != NULL) {
        anterior = atual;
        atual = atual->prox;
    }

    if (anterior != NULL) {
        anterior->prox = NULL;
    } else {
        *lista = NULL;
    }

    free(atual);
}

//Questao 14 
void appendL (LInt *l, int x){
    LInt novoNo = malloc (sizeof(struct lligada));
    novoNo->valor = x;
    novoNo->prox = NULL;
    
    if(*l == NULL){
        *l= novoNo;
    }else {
        LInt atual = *l;
        while (atual->prox!= NULL){
            atual = atual->prox;
        }
        atual->prox = novoNo;
    }
}

//Questao 15 
void concatL (LInt *a, LInt b){
    if(*a == NULL){
       *a =b;
    } else {
        LInt atual = *a;
        while(atual->prox != NULL){
            atual= atual->prox;
        }
        atual->prox = b;
    } 
}

//Questao 16
LInt clone(Lint l ){
	if (l == NULL){
		return NULL;
	}

	LInt novaLista = malloc (sizeof(struct lligada));
	novaLista->valor =l ->valor;
	novaLista->prox = NULL;

	LInt atual = novaLista;
	l = l->prox;


	while(l!= NULL){
		LInt novoNo = malloc (sizeof(struct lligada));
		novoNo->valor = l->valor ;
		novoNo->prox = NULL;

		atual ->prox = novoNo;
		atual = atual->prox;
		l = l->prox;
	}
	return novaLista;
}

//Questao 17
LInt cloneRev(Lint l ){
	if (l == NULL){
		return NULL;
	}
	LInt novaLista = NULL;
	LInt atual = l;

	while(atual != NULL){
		LInt novoNo = malloc (sizeof(struct lligada));
		novoNo->valor = atual->valor ;
		novoNo->prox = novaLista;
		novaLista = novoNo;
		
		atual = atual->prox;
	
	}
	return novaLista;
}

//Questao 18 
int maximo (LInt l){
    int max = l->valor;
    while(l!= NULL){
        if(l->valor >max){
            max = l->valor;
        }
        l = l->prox;
    }
    return max;
}

//Questao 19
int take (int n, LInt *l){
   int count =0;
   LInt atual =  *l;
   LInt anterior = NULL;
   
    while (atual !=NULL && count < n){
       anterior = atual;
       atual = atual->prox;
       count ++;
    }
    if(atual != NULL ){
        anterior ->prox = NULL;
        free(atual);
    }
    return count ;
}

//Questao 20	
int drop (int n, LInt *l){
    int count = 0;
    LInt atual = *l;
    
    while (atual!=NULL && count < n){
        LInt temp = atual ;
        atual = atual-> prox;
        free (temp);
        count ++;
    }
    *l = atual;
    return count;
}

//Questao 21
LInt NForward (LInt l, int N){
    if(l==NULL){
        return NULL;
    }
    LInt atual = l;
    while(N>0){
        atual = atual ->prox;
        N--;
    }
    return atual;
}

//Questao 22
int listToArray (LInt l, int v[], int N){
    int i = 0;
    while(l != NULL && i<N){
       v[i] = l->valor;
       l= l->prox;
       i++;
    }
    return i;
}

//Questao 23
LInt arrayToList (int v[], int N){
    LInt head = NULL;
    LInt tail = NULL;
    int i;
    for(i=0; i<N;i++){
        LInt novoNo = (LInt) malloc (sizeof (struct lligada));
        novoNo->valor= v[i];
        novoNo->prox = NULL;
        
        if(head ==NULL){
            head = novoNo;
            tail = novoNo;
        } else {
            tail->prox = novoNo;
            tail = novoNo;
        }
    }
    return head;
}

//Questao 24 
LInt somasAcL (LInt l) {
    if(l ==NULL){
        return NULL;
    }
    LInt head = NULL;
    LInt tail = NULL;
    int cont = 0;
    
    while(l!=NULL){
        cont += l->valor;
        
        LInt novoNo = (LInt) malloc (sizeof (struct lligada));
        novoNo->valor= cont;
        novoNo->prox = NULL;
        
        if(head == NULL){
            head = novoNo;
            tail = novoNo;
        }else {
            tail->prox = novoNo;
            tail = novoNo;
        }
        l= l->prox;
    }
    return head;
}

//Questao 25
void remreps( LInt l) {
    LInt atual = l;

    while (atual != NULL && atual->prox != NULL) {
        if (atual->valor == atual->prox->valor) {
            LInt temp = atual->prox;
            atual->prox = atual->prox->prox;
            free(temp);
        } else {
            atual = atual->prox;
        }
    }
}

//Questao 26
LInt rotateL (LInt l){
    if(l==NULL || l->prox == NULL){
        return l;
    }
    LInt new_head = l->prox;
    LInt atual = l ;
    
    while(atual->prox != NULL){
        atual= atual->prox;
    }
    atual->prox = l;
    l->prox = NULL;
    return new_head;
}

//Questao 27 
LInt parte (LInt l){
    if(l==NULL || l->prox == NULL){
        return NULL;
    }
    LInt odd_head = l;
    LInt even_head = l->prox;
    
    LInt odd = odd_head;
    LInt even = even_head;
    
    while(even!= NULL && even->prox!=NULL){
        odd ->prox = even->prox,
        odd = even->prox;
        
        even ->prox = odd-> prox;
        even = even -> prox;
    }
    odd->prox = NULL;
    return even_head;
}
//------------------ ARVORES BINARIAS  ------------------------

//Questao 28
int max(int a,int b){
    if(a > b) return a;
    else return b;
}
int altura (ABin a){
    if(a == NULL){
        return 0;
    }
	return 1+ max(altura(a->esq), altura(a->dir));
}

//Questao 29  
ABin cloneAB (ABin a) {
    if(a==NULL){
        return NULL;
    }
    ABin clone = malloc(sizeof(struct nodo));
    clone->valor = a->valor;
    clone->esq  = cloneAB(a->esq);
    clone->dir = cloneAB(a->dir);
    
    return clone;
}

//Questao 30
void mirror (ABin *a) {
    
    if (*a == NULL) {
        return; 
    } 
    
    if(a!= NULL){
        ABin temp = (*a)->dir;
        (*a)->dir  =  (*a)-> esq;
        (*a)->esq =  temp;
        mirror (&(*a)->esq);
        mirror (&(*a)->dir);
    }
}

//Questao 31 
void inorder (ABin a, LInt * l) {
    if (a == NULL) {
        return; 
    } 
    
    inorder(a->dir,l);
    
    LInt novo= malloc(sizeof(struct nodo));
    novo->valor = a->valor;
    novo->prox = *l;
    *l = novo;
    inorder (a->esq, l);
    
    
}

//Questao 32
void preorderAux (ABin a, LInt * l) {
   if(a!= NULL){
       preorderAux(a->dir,  l);
       preorderAux(a->esq, l);
       
       LInt new =malloc(sizeof(struct lligada));
       
       new->valor = a->valor;
       new->prox  = *l;
       *l = new;
    }
}

void preorder (ABin a, LInt * l) {
    *l = NULL;
    preorderAux(a, l);
    
}

//Questao 33 
void posorderAux (ABin a, LInt * l) {
    if(a !=  NULL){
        LInt new =malloc(sizeof(struct lligada));
        new->valor = a->valor;
        new->prox  = *l;
        *l = new;
        posorderAux (a->dir, l);
        posorderAux (a->esq, l);
    }
}

void posorder (ABin a, LInt * l) {
    *l = NULL;
    posorderAux(a, l);
    
}

//Questao 34
int depth (ABin a, int x) {
    if(a==NULL){
        return -1;
    }else if(a->valor ==x){
        return 1;
    }else {
        int esqDepth = depth(a->esq,x);
        int dirDepth = depth(a->dir,x);
        
        if(esqDepth ==-1 && dirDepth ==-1){
            return -1;
        }else if (esqDepth ==-1 ) return dirDepth + 1;
        else if (dirDepth ==-1) return esqDepth + 1;
        else  return (esqDepth < dirDepth ? esqDepth: dirDepth) +1;
    }
}

//Questao 35 
int freeAB (ABin a) {
  if(a == NULL){
        return 0;
    }
    int libertados = 1;
    libertados += freeAB(a->esq);
    libertados += freeAB(a->dir);
    free(a);
    
    return libertados;;
}

//Questao 36 
 int pruneAB (ABin *a, int l) {
    if(*a == NULL){
        return 0;
    }
    if(l==0){
        int numR = 1;
        numR += pruneAB(&((*a)->esq), l);
        numR += pruneAB(&((*a)->dir), l);
        free(*a);
        *a = NULL;
        return numR;
    }
    int numR =0;
    numR += pruneAB(&((*a)->esq), l-1);
    numR += pruneAB(&((*a)->dir), l-1);

    return numR;
 }

 //Questao 37 
int iguaisAB (ABin a, ABin b) {
    if(a==NULL && b==NULL){
        return 1;
    }
    if(a==NULL || b==NULL){
        return 0;
    }
    if(a->valor == b->valor){
        if(iguaisAB(a->esq, b->esq)){
            if(iguaisAB(a->dir, b->dir)){
                return 1;
            }
        }
    }
    return 0;
}

//Questao 38
LInt nivelL (ABin a, int n) {
    if(a==NULL || n<1){
        return NULL;
    }
    
    if(n==1){
        LInt new = malloc(sizeof(struct lligada));
        new->valor  = a->valor;
        new->prox = NULL;
        return new;
    }
    
    LInt listaEsq = nivelL(a->esq, n-1);
    LInt listaDir = nivelL(a->dir, n-1);
    
    if(listaEsq == NULL){
        return listaDir;
    }
    
    LInt aux =  listaEsq;
    while(aux->prox!=NULL){
        aux = aux -> prox;
    }
    aux->prox = listaDir;
    return listaEsq;
}

//Questao 39
int nivelV (ABin a, int n, int v[]) {
    if(a==NULL || n<1){
        return NULL;
    }
    if(n==1){
        v[0]= a->valor;
        return 1;
    }
    int count = 0;
    count += nivelV(a->esq, n-1, v);
    count += nivelV(a->dir, n-1, v+count);
    
    return count;
}

//Questao 40
int dumpAbin (ABin a, int v[], int N) {
    if(a==NULL || N<1){
        return 0;
    }
    
    int l = dumpAbin(a->esq, v, N);
    if(l<N){
        v[l]=a->valor;
        return 1+l+dumpAbin(a->dir, v+1+l, N-1-l);
    }
    return N;
}

//Questao 41
ABin somasAcA (ABin a) {
    if(a == NULL){
        return NULL;
    }
    
    ABin novaRaiz = malloc(sizeof(struct nodo));
    novaRaiz->valor = somasubarvore(a);
    novaRaiz->esq = somasAcA(a->esq);
    novaRaiz->dir = somasAcA(a->dir);
    
    return novaRaiz;
}

int somasubarvore(ABin a){
    if(a==NULL){
        return 0;
    }
    int somaEsq = somasubarvore(a->esq);
    int somaDir = somasubarvore(a->dir);
    return a>-valor + somaEsq + somaDir;
  
}

//Questao 42
int contaFolhas (ABin a) {
    if(a == NULL){
        return 0;
    }
    if(a->esq == NULL && a->dir == NULL){
        return 1;
    }
    int FolhasEsq = contaFolhas(a->esq);
    int FolhasDir = contaFolhas(a->dir);
    
    return FolhasEsq + FolhasDir;
}

///Questao 43 
ABin cloneMirror (ABin a) {
    if(a == NULL){
        return NULL;
    }
    ABin novo = malloc(sizeof(struct nodo));
    novo->valor = a->valor;
    
    novo->esq = cloneMirror(a->dir);
    novo->dir = cloneMirror(a->esq);
    return novo;
}

//Questao 44
int addOrd (ABin *a, int x) {
    ABin novo = malloc(sizeof(struct nodo));
    novo->valor =x;
    novo->esq =  NULL;
    novo->dir = NULL;
    
    if(*a ==NULL){
        *a= novo;
        return 0;
    }
    ABin atual = *a;
    while(atual != NULL){
        if(atual->valor >x){
            if(atual->esq == NULL){
                atual->esq = novo;
                return 0;
                } else atual = atual->esq;
        }else if (atual->valor < x){
            if(atual->dir == NULL){
                atual->dir = novo;
                return 0;
            } else atual = atual ->dir;
        }else {
            free(novo);
            return 1;
        }
    }
}

//Questao 45 
int lookupAB (ABin a, int x) {
    while(a!=NULL){
        if(a->valor < x){
            a= a->dir;
        }else if(a->valor > x){
            a= a->esq;
        }else return 1;
    }
    return 0;
}

//Quesato 46
int depthOrd (ABin a, int x) {
   if( a == NULL) return -1;
   
   if(a->valor ==x) return 1;
   int res;
   
   if(x< a-> valor){
       res = depthOrd(a->esq, x);
    } else res = depthOrd(a->dir, x);
    
    if(res ==-1){
        return -1;
    } else return 1+ res;
}

//Questao 47
int maiorAB (ABin a) {
    while (a->dir!=  NULL){
        a= a->dir;
    }
    return a->valor;
}

//Questao 48
ABin encontraMaior(ABin *a) {
    if ((*a)->dir == NULL) {
        ABin temp = *a;
        *a = (*a)->esq;
        return temp;
    }
    return encontraMaior(&(*a)->dir);
}

void removeMaiorA(ABin *a) {
    if (*a == NULL) {
        return; 
    }

    if ((*a)->dir != NULL) {
        removeMaiorA(&(*a)->dir);
    } else {
        ABin temp = *a;
        *a = (*a)->esq;
        free(temp);
    }
}

//Questao 49
int quantosMaiores(ABin a, int x) {
    if (a == NULL) {
        return 0; 
    }
    int contador = 0;
    if (a->valor > x) {
        contador++;
    }

    contador += quantosMaiores(a->esq, x);
    contador += quantosMaiores(a->dir, x);

    return contador;
}
 
//Questao 50  
int length (LInt l){
	int i=0;
	while( l!=NULL){
		l = l->prox;
		i++;
	}
	return i;
}
void listToBTree (LInt l, ABin *a) {
    if( l== NULL){
        return;
    }
    ABin new = malloc(sizeof(struct nodo));
    int meio = length(l)/2;
    LInt temp= l, prev = NULL;
    
    int i;
    for (i =0; i <meio; i++){
        prev = temp;
        temp = temp->prox;
    }
    new -> valor = temp->valor;
    new -> esq = new->dir = NULL;
    if(prev) prev-> prox = NULL;
    
    if (l!= temp) listToBTree(l, &(new->esq));
    if (temp->prox) listToBTree(temp->prox, &(new->dir));
    (*a) = new;

}































































































