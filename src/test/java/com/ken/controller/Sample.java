package com.ken.controller;

import java.util.ArrayList;
import java.util.List;

/**
 * @author yhq
 * @date 2019/1/8
 */
public class Sample {
    public static void main(String[] args) {
        ArrayList<Integer> idList = new ArrayList<>();
        idList.add(101);
        idList.add(103);

        List<Integer> pointList = new ArrayList<>();
        pointList.add(101);
        pointList.add(102);

        System.out.println(idList.containsAll(pointList));
    }
}
