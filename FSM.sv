
  //determin next_state 
  always @(*) begin 
    case (state)
      IDLE: 
        if (cond_A)
          next_state = S1;
        else
          next_state = state; 
      S1: 
        if (cond_B)
          next_state = S2;
        else
          next_state = state;
      
      default:
          next_state = state; 
    endcase
  end 

  assign cond_A = (some_condition) ?  1:0;
  assign cond_B = (some_condition) ?  1:0;

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
        signal_1 = 1;

      S1:
        singal_2 = 0;
          
      default:
        signal_1 = 0;
        signal_2 = 0;
     endcase
  end 
