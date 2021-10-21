package com.emergentes.modelo;

import java.util.ArrayList;
import java.util.Iterator;
public class GestorLibro {
    private ArrayList<Libro> lista;
     public GestorLibro()
    {
        lista = new ArrayList<Libro>();
    }
      public ArrayList<Libro> getLista() {
        return lista;
    }

    public void setLista(ArrayList<Libro> lista) {
        this.lista = lista;
    }
    public void insertar(Libro item)
    {
        lista.add(item);
    }
    public void modificar(int pos, Libro item)
    {
        lista.set(pos,item);
    }
    public void eliminar(int pos)
    {
        lista.remove(pos);
    }
    public int obtieneId()
    {
        int idaux =0;
        for (Libro item:lista){
            idaux = item.getId();
        }
        return idaux +1;
    }
    public int ubicar(int id)
    {
        int pos =-1;
        Iterator<Libro> it = lista.iterator();
        while(it.hasNext()){
            ++pos;
            Libro aux =it.next();
            if(aux.getId()==id){
                break;
            }
        }
        return pos;
    }
}
