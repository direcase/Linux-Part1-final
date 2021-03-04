package com.example.Linux_Part1_final;

public class BestFit {
    int process;
    int block;

    public BestFit(int process, int block) {
        this.process = process;
        this.block = block;
    }

    public int getProcess() {
        return process;
    }

    public void setProcess(int process) {
        this.process = process;
    }

    public int getBlock() {
        return block;
    }

    public void setBlock(int block) {
        this.block = block;
    }

    @Override
    public String toString() {
        return "BestFit{" +
                "process=" + process +
                ", block=" + block +
                '}';
    }
}
