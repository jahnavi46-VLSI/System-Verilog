class first1;
    int data1;
    int data2;
    function new(input int a1,b1);
    this.data1=a1;
    this.data2=b1;
    endfunction
endclass

class second1;
    int data3;
    int data4;
    
    first1 f1;
    function new(input int a2,b2);
    this.data3=a2;
    this.data4=b2;
    f1=new(9,10);
    endfunction
    
endclass

class third3;
    int data5;
    int data6;
    
    second1 s;
    function new(input int a3,b3);
    this.data5=a3;
    this.data6=b3;
     s=new(10,11);
     endfunction
    
endclass

class fourth4;
    int data7;
    int data8;
    
    third3 t;
    function new(input int a4,b4);
    this.data7=a4;
    this.data8=b4;
     t = new(11,12);
    endfunction
      
endclass


class fifth5;
    int data9;
    int data10;
    
    fourth4 f4;
    function new(input int a5,b5);
    this.data9=a5;
    this.data10=b5;
    f4=new(12,10);
    endfunction
    
endclass


module testbench1( );
    fifth5 f5;
    initial begin
        f5 = new(10,12);
        $display("data1: %0d and data2: %0d",f5.f4.t.s.f1.data1,f5.f4.t.s.f1.data2);
        $display("data3: %0d and data4: %0d",f5.f4.t.s.data3,f5.f4.t.s.data4);
        $display("data5: %0d and data6: %0d",f5.f4.t.data5,f5.f4.t.data6);
        $display("data7: %0d and data8: %0d",f5.f4.data7,f5.f4.data8);
        $display("data9: %0d and data10: %0d",f5.data9,f5.data10);
        
    end
endmodule
