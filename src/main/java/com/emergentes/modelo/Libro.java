package com.emergentes.modelo;

public class Libro {
    private int id;
    private String titulo;
    private String autor;
    private String resumen;
    private int medio;
    
    public Libro(){
        id = 0;
        titulo = "";
        autor = "";
        resumen = "";
        medio = 0;
    }
    
    public Libro(int id, String titulo, String autor, String resumen, int medio){
        this.id = id;
        this.titulo = titulo;
        this.autor = autor;
        this.resumen = resumen;
        this.medio = medio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getResumen() {
        return resumen;
    }

    public void setResumen(String resumen) {
        this.resumen = resumen;
    }

    public int getMedio() {
        return medio;
    }

    public void setMedio(int medio) {
        this.medio = medio;
    }
}
