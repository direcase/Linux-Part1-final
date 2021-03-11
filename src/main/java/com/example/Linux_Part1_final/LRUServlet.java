package com.example.Linux_Part1_final;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

@WebServlet(name = "LRUServlet")
public class LRUServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int frames = Integer.parseInt(request.getParameter("full-name"));
        String s = request.getParameter("email");
        String[] strings = s.split(" ");
        LRUCashe ca = new LRUCashe(frames);;
        for( int i = 0; i<strings.length; i++){
            int key1 = Integer.parseInt(strings[i]);
            ca.refer(key1);
        }
        Iterator<Integer> itr = ca.display();
        String s1 = "";
        while (itr.hasNext())
            s1+=itr.next()+" ";

        request.setAttribute("frames", frames);
        request.setAttribute("s", s);
        request.setAttribute("s1", s1);
        request.getRequestDispatcher("lru.jsp").forward(request,response);
    }


}
