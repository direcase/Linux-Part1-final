package com.example.Linux_Part1_final;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.Set;

public class LRUCashe {
    Set<Integer> cache;
    int capacity;

    public LRUCashe(int capacity)
    {
        this.cache = new LinkedHashSet<Integer>(capacity);
        this.capacity = capacity;
    }

    public boolean get(int key)
    {
        if (!cache.contains(key))
            return false;
        cache.remove(key);
        cache.add(key);
        return true;
    }

    /* Refers key x with in the LRU cache */
    public void refer(int key)
    {
        if (get(key) == false)
            put(key);
    }

    // displays contents of cache in Reverse Order
    public Iterator<Integer> display()
    {
        LinkedList<Integer> list = new LinkedList<>(cache);

        // The descendingIterator() method of java.util.LinkedList
        // class is used to return an iterator over the elements
        // in this LinkedList in reverse sequential order
        Iterator<Integer> itr = list.descendingIterator();

        /*while (itr.hasNext())
            System.out.print(itr.next() + " ");*/
        return itr;
    }

    public void put(int key)
    {

        if (cache.size() == capacity) {
            int firstKey = cache.iterator().next();
            cache.remove(firstKey);
        }

        cache.add(key);
    }
}
