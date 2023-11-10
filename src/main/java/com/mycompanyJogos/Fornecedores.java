/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompanyJogos;

import com.mycompany.sistemajogos.Dados_Temporários_Jogos;
import com.sun.source.tree.ForLoopTree;

/**
 *
 * @author rosa.3950
 *
public class Fornecedores {

    public Fornecedores(String epic_Games_Store, String pc, int par) {
    }
      private String nome;
    private String plataforma;
    private int popularidade;

    public FornecedoresString nome, String plataforma, int popularidade) {
        this.nome = nome;
        this.plataforma = plataforma;
        this.popularidade = popularidade;
        
        
    }


    public String getNome() {
        return nome;
    }


    public String getPlataforma() {
        return plataforma;
    }


    public int getPopularidade() {
        return popularidade;
    }

    public static void main(String[] args) {
        
        Fornecedores fornecedor1 = new Fornecedores("Steam", "PC", 10);
        Fornecedores fornecedor2 = new Fornecedores("Sony PlayStation Store", "PlayStation", 8);
        Fornecedores fornecedor3 = new Fornecedores("Xbox Store", "Xbox", 7);
        Fornecedores fornecedor4 = new Fornecedores("Epic Games Store", "PC", 9);

        
        System.out.println("Informações dos Fornecedores de Jogos:");
        exibirInformacoesFornecedor(fornecedor1);
        exibirInformacoesFornecedor(fornecedor2);
        exibirInformacoesFornecedor(fornecedor3);
        exibirInformacoesFornecedor(fornecedor4);
    }

   
    public static void exibirInformacoesFornecedor(Fornecedores fornecedor) {
        System.out.println("Fornecedor: " + fornecedor.getNome());
        System.out.println("Plataforma: " + fornecedor.getPlataforma());
        System.out.println("Popularidade: " + fornecedor.getPopularidade());
        System.out.println();
    }

    private static class FornecedoresString {

        public FornecedoresString() {
        }
    }

    private static class plataforma {

        public plataforma() {
        }
    }
}*/
    

