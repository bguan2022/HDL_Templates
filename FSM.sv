
  //determin next_state 
  always @(*) begin 
    case (state)
      IDLE: 
        if (A)
          next_state <= S1;
      S1: 
        if (B)
          next_state <= S2;
    endcase
  end 


  //move to next state 
  always @(posedge clock or negedge rst_n) begin 
    if (!rst_n) begin 
      state <= IDLE;
    end else begin 
      state <= next_state; 
    end 
  end 

  //determine all outputs
  always @(*) begin 
    case(state)
      IDLE: 
        signal_1 = 

      S1:
        singal_2 =

      default:

     endcase
  end 
