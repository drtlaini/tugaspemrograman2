/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package per1;

import java.util.Scanner;

/**
 *
 * @author durotul aini
 */
public class DataContoh {
   public static void main (String [] args){
       Scanner input=new Scanner (System.in);
       String nim, nama, grade;
       double uts, uas, rata;
       
       System.out.println("Data :");
       System.out.print("NIM    :"); nim=input.next();
       System.out.print("Nama    :"); nama=input.next();
       System.out.print("Nilai UTS    :"); uts=input.nextDouble();
       System.out.print("Nilai UAS    :"); uas=input.nextDouble();
       
       rata=(uts+uas)/2;
       if (rata<50)
           grade="E";
       else if(rata<60)
           grade="D";
       else if(rata<70)
           grade="C";
       else if(rata<80)
           grade="B";
       else
           grade="A";
       
       System.out.println("================================================");
       System.out.println("NIM\tNama\tUTS\tUAS\tN.Rata\tGrade");
       System.out.println("================================================");
       System.out.println(nim+"\t" +nama+"\t" +uts+"\t"+uas+"\t"+rata+"\t"+grade);
       
       System.out.println("");
       System.out.println("");
   }
}


