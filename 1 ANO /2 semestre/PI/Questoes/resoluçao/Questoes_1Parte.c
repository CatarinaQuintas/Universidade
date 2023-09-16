//Questoes 1 parte 

//Questao 1 
int maxElement(){
    int n,max=0;
    while(n != 0){
        scanf("%d", &n);
        if(n > max) max = n;
    }
    return max;
}

//Questao 2 
float mediaSeq(){
    int n=1, i=0;
    float media=0;
    while(n != 0){
        scanf("%d", &n);
        media += n;
        i++;
    }
    media = media/i;
    return media;
}

// Questao 3 
int segundoMaior(){
    int n=1, max=0,max2=0;
    while(n != 0){
        scanf("%d", &n);
        if(n >= max){
            max2 = max;
            max = n;
        }
        else if(n > max2 && n < max){
            max2 = n;
        }
    }
    return max2;
}

//Questao 4
int bitsUm (unsigned int x){
    int count=0;
    while(x>0){
        if(x%2 ==1){
            count++;
        }
        x=x/2;
    }
    return count;
}

//Questao 5 
int trailingZ (unsigned int n) {
    if(n ==0){
       return 32;
    }
    int count =0;
    while(n!=0){
        if(n%2 ==1){
            break;
        }
        count++;
        n=n/2;
    }
    return count;
}

//Questao 6 
int qDig (int n) {
    int r = 0;
    while(n>0){
        r++;
        n=n/10;
    }
    return r;
}

//Questao 7 
char *mystrcat(char s1[], char s2[]) {
    int i, j;
    for(i=0; s1[i]!= '\0'; i++);
    for(j=0; s2[j]!= '\0'; j++){
        s1[i]= s2[j];
        i++;
    }
    s1[i]='\0';
    return s1;
}

/Questao 8
char *mystrcpy(char s1[], const char s2[]) {
    int i;
    for(i = 0;s2[i]!='\0'; i++){
        s1[i]= s2[i];
    }
    s1[i]= '\0';
    return s1;
}

//Questao 9 
int mystrcmp(char s1[], char s2[]) {
    int i;
    for(i = 0; s1[i]!= '\0'||s2[i]!= '\0';i++ ){
        if(s1[i]!=s2[i]){
            return s1[i]-s2[i];
        }
    }
    return 0;
}

//Questao 10 

char *mystrstr(const char s1[], const char s2[]) {
    int s1_len = strlen(s1);
    int s2_len = strlen(s2);
    int i;
    for (i = 0; i <= s1_len - s2_len; i++) {
        int j;
        for (j = 0; j < s2_len; j++) {
            if (s1[i + j] != s2[j]) {
                break;
            }
        }

        if (j == s2_len) {
            return (char *)&s1[i]; 
        }
    }
    return NULL; 
}

//Questao 11
void strrev (char s[]) {
   int length = strlen(s);
   int i,j;
   char temp;
   
   for(i=0, j=length-1; i<j;i++,j--){
       temp=s[i];
       s[i]=s[j];
       s[j]=temp;
   }
}

//Questao 12 
void strnoV (char t[]){
    int i, pos;
    for (i = 0, pos = 0; t[i] != '\0';i++) {
        if (t[i] != 'a' && t[i] != 'e' && t[i] != 'i' && t[i] != 'o' && t[i] != 'u' && t[i] != 'A' && t[i] != 'E' &&t[i] != 'I' &&t[i] != 'O' &&t[i] != 'U') {
			t[pos++] = t[i];
		}
    }
    t[pos] = '\0';
}

//Questao 13 
void truncW(char t[], int n) {
    
    int i, j;
    int count = 0; 

    for (i = 0,j=0; t[i]!='\0'; i++) {
        if (!isspace(t[i])) { 
            if (count < n) { 
                t[j]=t[i];
                j++; 
            }
            count ++; 
            
        } else {
            t[j]=t[i];
            j++;
        
            count = 0;
        }
    }
    t[j] = '\0'; 
}


//Questao 14 
char charMaisfreq (char s[]) {
    int freq  = 0,maisfreq =0,pos =0;
    int i, j;
    for(i =0;s[i]!='\0'; i++){
            for(j =i;s[j]!='\0'; j++){
                if(s[i]==s[j]){
                    freq++;
                }
            }
            if(freq>maisfreq){
                maisfreq = freq;
                pos = i;
            }
            freq =0;
    }
    return s[pos];
}

//Questao 15 
int iguaisConsecutivos (char s[]) {
    if(s[0]=='\0'){
        return 0;
    }
    int tam = 0, maxt =0;
    int i;
    for(i =0; s[i]=='\0';i++){
        if(s[i]==s[i+1]){
            tam++;
        }else {
            if(tam>maxt){
                maxt=tam;
            }
            tam=1;
        }
    }
    if(tam>maxt){
        maxt=tam;
    }
    return maxt;
}

//Questao 16
//feita  por Sofia
int difConsecutivos(char s[]) {
    int ans = 0;
    for(size_t i = 0; s[i]; i++) {
        int consec = 0;
        for(size_t j = i; s[j]; j++) {
            if(not_in_prev(s,i,j)) consec++;
            else break;
        }
        if (consec > ans) ans = consec;
    }
    return ans;
}

//Questao 17 
int maiorPrefixo (char s1 [], char s2 []) {
   int i;
   for(i=0; s1[i]==s2[i];i++);
   return i;
}


//Questao 18
int maiorSufixo(char s1[], char s2[]) {
    int len1 = strlen(s1);
    int len2 = strlen(s2);
    int i = len1 - 1;
    int j = len2 - 1;
    int sufixo = 0;

    while (i >= 0 && j >= 0 && s1[i] == s2[j]) {
        sufixo++;
        i--;
        j--;
    }

    return sufixo;
}

//Questao 19
int sufPref (char s1[], char s2[]) {
    int ans=0, i, j=0;
    for(i=0;s1[i]!='\0';i++){
        if(s1[i]==s2[j]){
            ans++;
            j++;
            
        }else ans=j=0;
    }
    
    return ans;
}

//Questao 20
int contaPal (char s[]) {
    int word =0,total =0;
    int i;
    for(i=0; s[i]!='\0';i++){
        if(s[i]== ' '||s[i]=='\n'){
            if(word) total++;
            word=0;
        }else word =1;
    }
    if(word) total++;
    return total;
}

//Questao 21
int contaVogais(char s[]){
    int i,count = 0;
    for(i =0 ; s[i] != '\0'; i++){
        if(s[i] == 'a' || s[i] == 'e' || s[i] == 'i' || s[i] == 'o' || s[i] == 'u' || 
        	s[i] == 'A' || s[i] == 'E' || s[i] == 'I' || s[i] == 'O' || s[i] == 'U'){
            count++;
        }
    }
    return count;
}


//Questao 22
int contida (char a[], char b[]) {
    int i,j;
    for(i=0;a[i]!='\0';i++){
        for(j=0;b[j]!='\0';j++){
            if(a[i]==b[j]){
                break;
            }
        }
        if(b[j]=='\0'){
            return 0;
        }
    }
    return 1;
}

//Questao 23
int palindroma (char s[]) {
    int  i,j;
    for(i=0,j=strlen(s)-1;i<j;i++,j--){
        if(s[i]!=s[j]) return 0;
    }
    return 1;
}

//Questao 24 
int remRep (char texto []) {
    
    int i, r=0;
    for(i =0; texto[i]!='\0';i++){
        if(texto[i]!= texto[i+1]){
            texto[r]=texto[i];
            r++;
        }
    }
    texto[r]='\0';
    return r;
}

//Questao 25
int limpaEspacos (char texto[]) {
    int i,j;
   for(i=0,j=0; texto[i]!='\0';i++){
       if(texto[i]!= ' '||  (texto[i]== ' ' && texto[i+1]!= ' ')){
           texto[j]=texto[i];
           j++;
       }
   }
   texto[j]='\0';
    return j;
}

//Questao 26 
void insere (int s[], int N, int x){
    int i, j;
    for(i=N-1; i>=0 && s[i]>x; i--){
        s[i+1]= s[i];
    }
    s[i+1]= x;
}

//Questao 27 
void merge(int r[], int a[], int b[], int na, int nb) {
    int i = 0, j = 0, k = 0;
    while (i < na && j < nb) {
        if (a[i] < b[j]) {
            r[k] = a[i];
            i++;
        } else {
            r[k] = b[j];
            j++;
        }
        k++;
    }
    while (i < na) {
        r[k] = a[i];
        i++;
        k++;
    }
    while (j < nb) {
        r[k] = b[j];
        j++;
        k++;
    }
}

//Questao 28 
int crescente (int a[], int i, int j){
        int k;
        for(k=i;k<j;k++){
            if(a[k]>a[k+1]){
                return 0;
            }
        }
       return 1;
}

//Questao 29
int retiraNeg (int v[], int N){
    int i,k=0;
    for(i=0; i<N;i++){
        if(v[i]>=0){
            v[k]=v[i];
            k++;
        }
    }
    return k;
}

//Questao 30
int menosFreq (int v[], int N){
       int i;
       int menosFreq= v[0];
       int freqAtual = 1;
       int menorFreq = N; 
       
        for(i=1;i<=N;i++){
            if(v[i]==v[i-1]){
               freqAtual++;
            }else{
                if(freqAtual<menorFreq){
                    menorFreq = freqAtual;
                    menosFreq= v[i-1];
                }
                freqAtual =1;
            }
        }
        if(freqAtual<menorFreq){
            menorFreq = freqAtual;
        }
        return menosFreq;
}

//Questao 31
int maisFreq(int v[], int N) {

    int freqMax = 0; 		 //frequencia maxima
    int emaisFreq = v[0];    //elemento mais frequente
    int eAtual = v[0];       //elemento atual
    int freqAtual = 1;       //frequencia atual
    int i;
    for (i = 1; i < N; i++) {
        if (v[i] == eAtual) {
            freqAtual++;
        } else {
            if (freqAtual > freqMax) {
               freqMax = freqAtual;
                emaisFreq = eAtual;
            }
            eAtual = v[i];
            freqAtual = 1;
        }
    }
    if (freqAtual > freqMax) {
        emaisFreq = eAtual;
    }
    return  emaisFreq;
}

//Questao 32 
int maxCresc(int v[], int N) {
    int compMax = 1;
    int compAtual = 1;
    int i;
    for (i = 1; i < N; i++) {
        if (v[i] >= v[i - 1]) {
            compAtual++;
        } else {
            if (compAtual > compMax ) {
                compMax  = compAtual;
            }
            compAtual = 1; 
        }
    }

    if (compAtual > compMax ) {
        compMax  = compAtual;
    }

    return compMax ;
}

//Questao 33
int elimRep(int v[], int n) {

    int i,j,k;
    for (i = 0; i < n; i++) {
        for (j = i+1; j < n; j++) {
            if (v[i] == v[j]) {
                for(k=j; k<n; k++){
                    v[k]=v[k+1];
                }
                n--;
                j--;
            }
        }
    }
    return n;
}

//Questao 34
int elimRepOrd (int v[], int N) {
   

    int i,j,k;
    for (i = 0; i < N; i++) {
        for (j = i+1; j < N; j++) {
            if (v[i] == v[j]) {
                for(k=j; k<N; k++){
                    v[k]=v[k+1];
                }
                N--;
                j--;
            }
        }
    }
    return N;
}

//Questao 35
int comunsOrd(int a[], int na, int b[], int nb) {
    int i = 0; 
    int j = 0;
    int comuns = 0; 
    while (i < na && j < nb) {
        if (a[i] < b[j]) {
            i++; 
        } else if (a[i] > b[j]) {
            j++; 
        } else {
            comuns++;
            i++; 
            j++;
        }
    }

    return comuns;
}  

//Questao 36
int comuns(int a[], int na, int b[], int nb) {
    int comuns = 0;
    int i, j;

    for ( i = 0; i < na; i++) {
        for ( j = 0; j < nb; j++) {
            if (a[i] == b[j] ) {
                comuns++;
                break; 
            }
        }
    }

    return comuns;
}

//Questao 37
int minInd(int v[], int n) {
 
    int menor = 0; 
    int i;
    for (i = 0; i < n; i++) {
        if (v[i] < v[menor]) {
            menor = i; 
        }
    }

    return menor;
}

// Questao 38
void somasAc(int v[], int Ac[], int N) {
    int soma = 0; 
    int i;
    for (i= 0; i < N; i++) {
        soma += v[i]; 
        Ac[i] = soma; 
    }
}

//Questao 39
int triSup(int N, int m[N][N]) {
    int i,j;
    for ( i= 0; i < N; i++) {
        for ( j = 0; j < i; j++) {
            if (m[i][j] != 0) {
                return 0; 
            }
        }
    }
    return 1;
}

//Questao 40
void transposta(int N, float m[N][N]) {
    float temp;
    int i,j;
    for (i = 0; i < N; i++) {
        for (j = i + 1; j < N; j++) {
            temp = m[i][j];
            m[i][j] = m[j][i];
            m[j][i] = temp;
        }
    }
}

//Questao 41
void addTo(int N, int M, int a[N][M], int b[N][M]) {
    int i,j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            a[i][j] += b[i][j];
        }
    }
}

//Questao 42
int unionSet(int N, int v1[N], int v2[N], int r[N]) {
    int i;
    int count =0;
    for (i = 0; i < N; i++) {
        r[i] = v1[i]||v2[i];
        count+=r[i];
    }
    return count;
}

//Questao 43
int intersectSet (int N, int v1[N], int v2[N],int r[N]) {
    int count = 0;
    int i;
    for(i = 0; i < N; i++) {
        r[i] = v1[i] && v2[i];
        count += r[i];
    }
    return count;
}

//Questao 44
int intersectMSet (int N, int v1[N], int v2[N],int r[N]) {
    int count = 0;
    int i;
    for(i = 0; i < N; i++) {
        if( v1[i] < v2[i]){
            r[i] = v1[i];
        }
        else {
            r[i] = v2[i];
        }
        count += r[i]; 
    }
    return count;
}

//Questao 46 
int cardinalMSet(int N, int v[N]) {
    int cardinalidade = 0;
    int i;
    for (i = 0; i < N; i++) {
        cardinalidade += v[i];
    }

    return cardinalidade;
}

//Questao 47 
Posicao posFinal(Posicao inicial, Movimento mov[], int N) {
    Posicao pos = inicial; 
    int i;
    for (i = 0; i < N; i++) {
       
        switch (mov[i]) {
            case Norte:
                pos.y++;
                break;
            case Oeste:
                pos.x--;
                break;
            case Sul:
                pos.y--;
                break;
            case Este:
                pos.x++;
                break;
        }
    }

    return pos; 
}

//Questao 48 
int caminho(Posicao inicial, Posicao final, Movimento mov[], int N) {
    int deltaX = final.x - inicial.x;
    int deltaY = final.y - inicial.y;
    int passos = abs(deltaX) + abs(deltaY); 
   
    if (N < passos) {
        return -1; 
    }
    
    int index = 0; 
    while (deltaX != 0) {
        if (deltaX > 0) {
            mov[index] = Este;
            deltaX--;
        } else {
            mov[index] = Oeste;
            deltaX++;
        }
        index++;
    }
    while (deltaY != 0) {
        if (deltaY > 0) {
            mov[index] = Norte;
            deltaY--;
        } else {
            mov[index] = Sul;
            deltaY++;
        }
        index++;
    }
    return index; 
}

//Questao 49
int maiscentral(Posicao pos[], int N) {
    if (N <= 0) return -1; 
    
    int indiceMaisCentral = 0; 
    double menorDistancia = sqrt(pos[0].x * pos[0].x + pos[0].y * pos[0].y);
    int i;
    for (i = 1; i < N; i++) {
        double distancia = sqrt(pos[i].x * pos[i].x + pos[i].y * pos[i].y);
        if (distancia < menorDistancia) {
            menorDistancia = distancia;
            indiceMaisCentral = i;
        }
    }
    return indiceMaisCentral;
}

//Questao 50  
int vizinhos (Posicao p, Posicao pos[], int N){
    int i= 0, count= 0;
    for(; i< N; i++){
        if((pos[i].x+1 == p.x && pos[i].y == p.y) ||
        (pos[i].x-1 == p.x && pos[i].y== p.y) || 
        (pos[i].y +1== p.y && pos[i].x== p.x) || 
        (pos[i].y- 1== p.y && pos[i].x== p.x)){
            count++;
        } 
    }
    return count;
}

























