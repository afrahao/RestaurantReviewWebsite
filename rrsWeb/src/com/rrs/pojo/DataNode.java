package com.rrs.pojo;
import java.util.Arrays;

public class DataNode {
    int[] datas = {2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2};
    String userId;
    double score = 0.0;

    public int[] getDatas() {
        return datas;
    }

    public void setDatas(int[] datas) {
        this.datas = datas;
    }
    public Double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
    	this.userId = userId;
    }
    public void setDatas(int data) {
    	switch(data)
    	{
    		case 0:
    			datas[0]=1;
    			break;
    		case 2:
    			datas[1]=1;
    			break;
    		case 4:
    			datas[2]=1;
    			break;
    		case 9:
    			datas[3]=1;
    			break;
    		case 10:
    			datas[4]=1;
    			break;
    		case 12:
    			datas[5]=1;
    			break;
    		case 14:
    			datas[6]=1;
    			break;
    		case 17:
    			datas[7]=1;
    			break;
    		case 19:
    			datas[8]=1;
    			break;
    		case 20:
    			datas[9]=1;
    			break;
    		case 21:
    			datas[10]=1;
    			break;
    		case 24:
    			datas[11]=1;
    			break;
    		case 25:
    			datas[12]=1;
    			break;
    		case 31:
    			datas[13]=1;
    			break;
    		case 34:
    			datas[14]=1;
    			break;
    		case 38:
    			datas[15]=1;
    			break;
    		case 40:
    			datas[16]=1;
    			break;
    		case 42:
    			datas[17]=1;
    			break;
    		case 44:
    			datas[18]=1;
    			break;
    		case 45:
    			datas[19]=1;
    			break;
    		case 48:
    			datas[20]=1;
    			break;
    		case 49:
    			datas[21]=1;
    			break;
    		case 50:
    			datas[22]=1;
    			break;
    		case 68:
    			datas[23]=1;
    			break;
    		case 69:
    			datas[24]=1;
    			break;
    		case 72:
    			datas[25]=1;
    			break;
    		case 94:
    			datas[26]=1;
    			break;
    		case 103:
    			datas[27]=1;
    			break;
    		case 134:
    			datas[28]=1;
    			break;
    		case 144:
    			datas[29]=1;
    			break;
    		case 149:
    			datas[30]=1;
    			break;
    	}
    }

    @Override
    public String toString() {
        return "DataNode [datas=" + Arrays.toString(datas) + "]";
    }

    public DataNode() {

    }
    public DataNode(int[] datas) {
        super();
        this.datas = datas;
    }
}