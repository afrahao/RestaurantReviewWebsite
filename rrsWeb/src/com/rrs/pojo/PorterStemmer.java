package com.rrs.pojo;
import java.io.*;

/**
* ʵ�ֲ��شʸ���ȡ�㷨����һ������ת��Ϊ����ԭ�͡�
*/
public class PorterStemmer{

    private char[] b; /* ��������ʸ���ȡ�ĵ��ʣ���char����ʽ�� */
    private int i,     /* b�е�Ԫ��λ�ã�ƫ������ */
            i_end, /* Ҫ��ȡ�ʸɵ��ʵĽ���λ�� */
            j, k;
    private static final int INC = 50;/* ����b�Ĵ�С��������Ҫ�����ĳ��ȣ���ֹ����� */

    public PorterStemmer(){
        b = new char[INC];
        i = 0;
        i_end = 0;
    }

    /**
     * ����һ���ַ���Ҫ��Ŵ�����ĵ��ʵ����顣������ַ�ʱ�� 
     * ���Ե���stem(void)���������г�ȡ�ʸɵĹ�����
     * @param ch �ַ�
     */
    public void add(char ch){  
        if (i == b.length){
            char[] new_b = new char[i+INC];
            for (int c = 0; c < i; c++) new_b[c] = b[c];
            b = new_b;
        }
        b[i++] = ch;
    }

    /**
     * �����ַ�����ch����Ŵ�����ĵ��ʵ�����b
     * @param ch �ַ�����
     */
    public void add(char[] ch){
        add(ch,ch.length);
    }

    /**
     * ����wLen���ȵ��ַ����鵽��Ŵ�����ĵ��ʵ�����b��
     * @param w �ַ�����
     * @param wLen ���鳤��
     */
    public void add(char[] w, int wLen){
        if (i+wLen >= b.length){  
            char[] new_b = new char[i+wLen+INC];
            for (int c = 0; c < i; c++) new_b[c] = b[c];
            b = new_b;
       }
       for (int c = 0; c < wLen; c++) b[i++] = w[c];
    }

    /**
     * ���ص��ʵĴʸɡ�
     */
    public String toString() { return new String(b,0,i_end); }

    /**
     * ���ص��ʵĴʸɵĳ���
     */
    public int getResultLength() { return i_end; }

    /**
     * ���ص��ʵĴʸ�char[]
     */
    public char[] getResultBuffer() { return b; }

    /**
     * cons(i)������i��int�ͣ�����ֵbool�͡���iΪ����ʱ�������棻����Ϊ��
     * @param i b�����±�
     * @return cons(i) Ϊ�� <=> b[i] ��һ������ 
     */
    private final boolean cons(int i){  
        switch (b[i]){  
            case 'a': case 'e': case 'i': case 'o': case 'u': return false;
            //y��ͷ��Ϊ��������i-1λ�����i-1λΪ����yΪԪ����֮��Ȼ�� 
            case 'y': return (i==0) ? true : !cons(i-1);
            default: return true;
        }
    }

    /** 
    */
    /**
     * m()������ֵ��int�͡���ʾ����b����0��j֮�丨�����еĸ�����
     * �ּ���c���������У���v����Ԫ�����С�<..>��ʾ������ڡ����������¶��壺
        <c><v>          ���Ϊ 0
        <c>vc<v>       ���Ϊ 1
        <c>vcvc<v>    ���Ϊ 2
        <c>vcvcvc<v> ���Ϊ 3
        ....
     * @return ����b����0��j֮�丨�����еĸ���
     */
    private final int m(){  
        int n = 0;//�������еĸ�������ʼ��
        int i = 0;//ƫ����
        //<c>
        while(true){  
            if (i > j) return n;//����������ƫ������ֱ�ӷ���n
            if (!cons(i)) break; //�����Ԫ�����ж�
            i++;  //������һλ��ֱ��Ԫ����λ�� 
        }
        i++;//���긨������Ԫ���ĵ�һ���ַ���ʼ 
        while(true){  //ѭ������vc�ĸ��� 
            //<v>
            while(true){  //ѭ���ж�v  
                if (i > j) return n;
                if (cons(i)) break; //���ָ�������ֹѭ��
                i++;
            }
            i++;
            n++;
            //<c>
            while(true){  //ѭ���ж�c 
                if (i > j) return n;
                if (!cons(i)) break;
                i++;
            }
            i++;
          }
    }

    /**
     * vowelinstem()������ֵ��bool�͡���ʾ����b����0��i֮���Ƿ����Ԫ����
     * @return vowelinstem() Ϊ�� <=> 0,...j ����һ��Ԫ��
     */
    private final boolean vowelinstem(){  
        int i; 
        for (i = 0; i <= j; i++) 
            if (!cons(i)) 
                return true;
        return false;
    }

    /**
     * doublec(j)������j��int�ͣ�����ֵbool�͡�
     * �������������ʾ��j��j-1λ���ϵ������ַ��Ƿ�����ͬ�ĸ�����
     * @param j ����b���±�
     * @return doublec(j) Ϊ�� <=> j,(j-1) ��������һ���ĸ���
     */
    private final boolean doublec(int j){  
        if (j < 1) return false;
        if (b[j] != b[j-1]) return false;
        return cons(j);
    }

    /**
     * cvc(i)������i��int�ͣ�����ֵbool�͡�
     * ����i��i-1��i-2λ���ϵ��ַ��������ǡ�����-Ԫ��-����������ʽ��
     * ���Ҷ��ڵڶ���������������Ϊw��x��y�е�һ����
     * �����������������e��β�Ķ̵��ʡ�����˵cav(e)��lov(e)��hop(e)��crim(e)��
     * ������snow��box��tray�Ͳ�����������
     * @param i �±�
     * @return boolean
     */
    private final boolean cvc(int i){  
        if (i < 2 || !cons(i) || cons(i-1) || !cons(i-2)) 
            return false;
        else{
            int ch = b[i];
            if (ch == 'w' || ch == 'x' || ch == 'y') return false;
        }
        return true;
    }

    /**
     * ends(s)��������String������ֵ��bool�͡������ж�b�Ƿ���s��β��
     * @param s �ַ���
     * @return �ж�b�Ƿ���s��β
     */
    private final boolean ends(String s){  
        int l = s.length();
        int o = k-l+1;
        if (o < 0) return false;
        for (int i = 0; i < l; i++) 
            if (b[o+i] != s.charAt(i)) 
                return false;
        j = k-l;
        return true;
    }

    /**
     * ��b��(j+1)...kλ���ϵ��ַ���Ϊs��ͬʱ������k�Ĵ�С
     * @param s �ַ���
     */
    private final void setto(String s){  
        int l = s.length();
        int o = j+1;
        for (int i = 0; i < l; i++) 
            b[o+i] = s.charAt(i);
        k = j+l;
    }

    /**
     * ��m()>0������£�����setto(s)��
     * @param s �ַ���
     */
    private final void r(String s) { 
        if (m() > 0) setto(s); 
    }

    //�����������д���Ĺ���
    /** step1() ���������Լ�ed��ing�����ĵ��ʡ����磺
           caresses  ->  caress
           ponies    ->  poni
           ties      ->  ti
           caress    ->  caress
           cats      ->  cat

           feed      ->  feed
           agreed    ->  agree
           disabled  ->  disable

           matting   ->  mat
           mating    ->  mate
           meeting   ->  meet
           milling   ->  mill
           messing   ->  mess

           meetings  ->  meet
    */
    private final void step1(){  
        if (b[k] == 's'){  
            if (ends("sses")) k -= 2; //�ԡ�sses��β�� 
            else if (ends("ies")) setto("i"); //��ies��β����Ϊi
            else if (b[k-1] != 's') k--;//����s��β������ 
       }
       if (ends("eed")) { 
           //�ԡ�eed����β����m>0ʱ������һλ
            if (m() > 0) k--; 
       } else if ((ends("ed") || ends("ing")) && vowelinstem()){  
            k = j;
            if (ends("at")) setto("ate"); 
            else if (ends("bl")) setto("ble"); 
            else if (ends("iz")) setto("ize"); 
            else if (doublec(k)){  //�����������ͬ����  
                k--;
                int ch = b[k];
                if (ch == 'l' || ch == 's' || ch == 'z') k++;
           }
           else if (m() == 1 && cvc(k)) setto("e");
        }
    }

    /** step2() ��������а���Ԫ����������y��β����y��Ϊi */
    private final void step2() { 
        if (ends("y") && vowelinstem()){
            b[k] = 'i'; 
        }
    }

    /** step3() ��˫��׺�ĵ���ӳ��Ϊ����׺�� 
     * ���� -ization ( = -ize ���� -ation) ��ӳ�䵽 -ize �ȵȡ� 
     * ע����ȥ����׺֮ǰ����ȷ��m()>0.
     */
    private final void step3() { 
        if (k == 0) return;  
        switch (b[k-1]){
            case 'a': if (ends("ational")) { r("ate"); break; }
                      if (ends("tional")) { r("tion"); break; }
                      break;
            case 'c': if (ends("enci")) { r("ence"); break; }
                      if (ends("anci")) { r("ance"); break; }
                      break;
            case 'e': if (ends("izer")) { r("ize"); break; }
                      break;
            case 'l': if (ends("bli")) { r("ble"); break; }
                      if (ends("alli")) { r("al"); break; }
                      if (ends("entli")) { r("ent"); break; }
                      if (ends("eli")) { r("e"); break; }
                      if (ends("ousli")) { r("ous"); break; }
                      break;
            case 'o': if (ends("ization")) { r("ize"); break; }
                      if (ends("ation")) { r("ate"); break; }
                      if (ends("ator")) { r("ate"); break; }
                      break;
            case 's': if (ends("alism")) { r("al"); break; }
                      if (ends("iveness")) { r("ive"); break; }
                      if (ends("fulness")) { r("ful"); break; }
                      if (ends("ousness")) { r("ous"); break; }
                      break;
            case 't': if (ends("aliti")) { r("al"); break; }
                      if (ends("iviti")) { r("ive"); break; }
                      if (ends("biliti")) { r("ble"); break; }
                      break;
            case 'g': if (ends("logi")) { r("log"); break; }
        }
    }

    /** step4() ����-ic-��-full��-ness�ȵȺ�׺���Ͳ���3�������ƵĴ��� */
    private final void step4() { 
        switch (b[k]){
            case 'e': if (ends("icate")) { r("ic"); break; }
                      if (ends("ative")) { r(""); break; }
                      if (ends("alize")) { r("al"); break; }
                      break;
            case 'i': if (ends("iciti")) { r("ic"); break; }
                      break;
            case 'l': if (ends("ical")) { r("ic"); break; }
                      if (ends("ful")) { r(""); break; }
                      break;
            case 's': if (ends("ness")) { r(""); break; }
                      break;
        } 
    }

    /** step5() ��<c>vcvc<v>�����£�ȥ��-ant��-ence�Ⱥ�׺�� */
    private final void step5(){   
        if (k == 0) return; /* for Bug 1 */
        switch (b[k-1]){  
            case 'a': if (ends("al")) break; return;
            case 'c': if (ends("ance")) break;
                      if (ends("ence")) break; return;
            case 'e': if (ends("er")) break; return;
            case 'i': if (ends("ic")) break; return;
            case 'l': if (ends("able")) break;
                      if (ends("ible")) break; return;
            case 'n': if (ends("ant")) break;
                      if (ends("ement")) break;
                      if (ends("ment")) break;
                      /* element etc. not stripped before the m */
                      if (ends("ent")) break; return;
            case 'o': if (ends("ion") && j >= 0 && (b[j] == 's' || b[j] == 't')) break;
                                      /* j >= 0 fixes Bug 2 */
                      if (ends("ou")) break; return;
                      /* takes care of -ous */
            case 's': if (ends("ism")) break; return;
            case 't': if (ends("ate")) break;
                      if (ends("iti")) break; return;
            case 'u': if (ends("ous")) break; return;
            case 'v': if (ends("ive")) break; return;
            case 'z': if (ends("ize")) break; return;
            default: return;
        }
        if (m() > 1) k = j;
    }

    /** step6() ��m()>1������£��Ƴ�ĩβ�ġ�e����*/
    private final void step6(){  
        j = k;
        if (b[k] == 'e'){  
            int a = m();
            if (a > 1 || a == 1 && !cvc(k-1)) k--;
        }
        if (b[k] == 'l' && doublec(k) && m() > 1) k--;
    }

    /** ͨ������add()�����������ʷ���ʸ�������b�� 
     * ����ͨ������ķ����õ������ getResultLength()+getResultBuffer() or toString(). 
     */
    public void stem(){  
        k = i - 1;
        if (k > 1) { step1(); step2(); step3(); step4(); step5(); step6(); }
        i_end = k+1; 
        i = 0;
    }
   

    /**
     * ��ĳ�����ʽ��дʸ���ȡ�����شʸ�
     * @param s �����ַ���
     * @return �ʸ�
     */
    public String stem(String s){
        char[] ch=s.toLowerCase().toCharArray();
        add(ch);
        stem();
        return toString();
    }    

    /**��һϵ���ı��е����е���stemming
     * @param stemFile ��stemming���ı��ļ�·����ɵ��ַ�������
     */
    /**
     * 
     * @param stemFile
     * @throws IOException 
     */
    public static void porterMain(String[] stemFile) throws IOException{
       char[] w = new char[501];
       PorterStemmer s = new PorterStemmer(); 
       for (int i = 0; i < stemFile.length; i++)
       try{
          FileInputStream in = new FileInputStream(stemFile[i]);
          FileWriter targetFileWriter = new FileWriter(stemFile[i] + "stemed");
          try{ 
              while(true){  
                int ch = in.read();
                if (Character.isLetter((char) ch)){
                    int j = 0;
                    while(true){  
                       ch = Character.toLowerCase((char) ch);
                       w[j] = (char) ch;
                       if (j < 500) j++;
                       ch = in.read();
                       if (!Character.isLetter((char) ch)){
                            /* to test add(char ch) */
                            for (int c = 0; c < j; c++) s.add(w[c]);
                            /* or, to test add(char[] w, int j) */
                            /* s.add(w, j); */
                            s.stem();
                            String u;
                            /* and now, to test toString() : */
                            u = s.toString();
                            /* to test getResultBuffer(), getResultLength() : */
                            /* u = new String(s.getResultBuffer(), 0, s.getResultLength()); */
                            //System.out.print(u);
                            targetFileWriter.write(u + "\n");
                          break;
                       }
                    }
                 }
                 if (ch < 0) break;
                 System.out.print((char)ch);
              }
              targetFileWriter.close();
          }catch (IOException e){  
                System.out.println("error reading " + stemFile[i]);
                break;
          }
       }catch (FileNotFoundException e){  
           System.out.println("file " + stemFile[i] + " not found");
           break;
       }
    }
}