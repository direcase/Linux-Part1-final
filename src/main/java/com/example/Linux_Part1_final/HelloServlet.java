package com.example.Linux_Part1_final;

import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + message + "</h1>");
        out.println("</body></html>");
    }


    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int blocksize = Integer.parseInt(request.getParameter("blocksize"));
        int block2=Integer.parseInt(request.getParameter("block2"));
        int block3=Integer.parseInt(request.getParameter("block3"));
        int block4=Integer.parseInt(request.getParameter("block4"));
        int block5=Integer.parseInt(request.getParameter("block5"));
        int a[]={blocksize,block2,block3,block4,block5};
        int mem1=Integer.parseInt(request.getParameter("mem1"));
        int mem2=Integer.parseInt(request.getParameter("mem2"));
        int mem3=Integer.parseInt(request.getParameter("mem3"));
        int mem4=Integer.parseInt(request.getParameter("mem4"));
        System.out.println(blocksize+ " "+ block2);
        response.setContentType("text/html");

        int processSize[] = {mem1, mem2, mem3, mem4};
        int m = a.length;
        int n = processSize.length;

        List<BestFit>bestFits= bestFit(a, m, processSize, n);

        /*PrintWriter out = response.getWriter();
        out.println("<html><body>");
        out.println("<h1>" + a + "</h1>");
        out.println("</body></html>");*/
        request.setAttribute("bestFits", bestFits);
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }

    private List<BestFit> bestFit(int blockSize[], int m, int processSize[], int n) {

        /*for (int i=0;i<n;i++){
            System.out.println(blockSize[i]);
        }*/
        int a[]= Arrays.copyOf(blockSize,m);
        int allocation[] = new int[n];
        for (int i = 0; i < allocation.length; i++)
            allocation[i] = -1;
        for (int i=0; i<n; i++)
        {

            int bestIdx = -1;
            for (int j=0; j<m; j++)
            {
                if (blockSize[j] >= processSize[i])
                {
                    if (bestIdx == -1)
                        bestIdx = j;
                    else if (blockSize[bestIdx] > blockSize[j])
                        bestIdx = j;
                }
            }

            if (bestIdx != -1)
            {

                allocation[i] = bestIdx;
                blockSize[bestIdx] -= processSize[i];
            }
        }

        System.out.println("\nProcess No.\tProcess Size\tBlock no.");
        List<BestFit> bestFits=new ArrayList<>();
        for (int i = 0; i < n; i++)
        {
            /*System.out.println(allocation[i]+1 +" "+ i);
            System.out.println(a[i])*/;
            System.out.print("   " + (i+1) + "\t\t" + processSize[i] + "\t\t");
            if (allocation[i] != -1)
                System.out.print(a[allocation[i]] );
            else
                System.out.print("Not Allocated");
            BestFit bestFit=new BestFit(processSize[i],a[allocation[i]] );
            bestFits.add(bestFit);
            System.out.println();

        }
        System.out.println(bestFits);
        return bestFits;

    }

    public void destroy() {
    }
}