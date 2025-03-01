%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:49:50 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   39 ( 113 expanded)
%              Number of clauses        :   28 (  45 expanded)
%              Number of leaves         :    5 (  28 expanded)
%              Depth                    :    9
%              Number of atoms          :  149 ( 499 expanded)
%              Number of equality atoms :   10 (  24 expanded)
%              Maximal formula depth    :   18 (   5 average)
%              Maximal clause size      :   32 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t106_relat_1,conjecture,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ! [X4] :
          ( v1_relat_1(X4)
         => ( ( r1_tarski(X3,X4)
              & r1_tarski(X1,X2) )
           => r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t106_relat_1)).

fof(d3_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( r1_tarski(X1,X2)
        <=> ! [X3,X4] :
              ( r2_hidden(k4_tarski(X3,X4),X1)
             => r2_hidden(k4_tarski(X3,X4),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_relat_1)).

fof(t104_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X3,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t104_relat_1)).

fof(dt_k7_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X1)
     => v1_relat_1(k7_relat_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(d11_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2,X3] :
          ( v1_relat_1(X3)
         => ( X3 = k7_relat_1(X1,X2)
          <=> ! [X4,X5] :
                ( r2_hidden(k4_tarski(X4,X5),X3)
              <=> ( r2_hidden(X4,X2)
                  & r2_hidden(k4_tarski(X4,X5),X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d11_relat_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( v1_relat_1(X3)
       => ! [X4] :
            ( v1_relat_1(X4)
           => ( ( r1_tarski(X3,X4)
                & r1_tarski(X1,X2) )
             => r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t106_relat_1])).

fof(c_0_6,plain,(
    ! [X15,X16,X17,X18,X19] :
      ( ( ~ r1_tarski(X15,X16)
        | ~ r2_hidden(k4_tarski(X17,X18),X15)
        | r2_hidden(k4_tarski(X17,X18),X16)
        | ~ v1_relat_1(X15) )
      & ( r2_hidden(k4_tarski(esk3_2(X15,X19),esk4_2(X15,X19)),X15)
        | r1_tarski(X15,X19)
        | ~ v1_relat_1(X15) )
      & ( ~ r2_hidden(k4_tarski(esk3_2(X15,X19),esk4_2(X15,X19)),X19)
        | r1_tarski(X15,X19)
        | ~ v1_relat_1(X15) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_relat_1])])])])])])).

fof(c_0_7,plain,(
    ! [X24,X25,X26] :
      ( ~ v1_relat_1(X26)
      | ~ r1_tarski(X24,X25)
      | r1_tarski(k7_relat_1(X26,X24),k7_relat_1(X26,X25)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t104_relat_1])])).

fof(c_0_8,plain,(
    ! [X22,X23] :
      ( ~ v1_relat_1(X22)
      | v1_relat_1(k7_relat_1(X22,X23)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).

fof(c_0_9,negated_conjecture,
    ( v1_relat_1(esk7_0)
    & v1_relat_1(esk8_0)
    & r1_tarski(esk7_0,esk8_0)
    & r1_tarski(esk5_0,esk6_0)
    & ~ r1_tarski(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

cnf(c_0_10,plain,
    ( r2_hidden(k4_tarski(X3,X4),X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(k4_tarski(X3,X4),X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( r1_tarski(k7_relat_1(X1,X2),k7_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( v1_relat_1(k7_relat_1(X1,X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_13,plain,(
    ! [X6,X7,X8,X9,X10,X11,X12] :
      ( ( r2_hidden(X9,X7)
        | ~ r2_hidden(k4_tarski(X9,X10),X8)
        | X8 != k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) )
      & ( r2_hidden(k4_tarski(X9,X10),X6)
        | ~ r2_hidden(k4_tarski(X9,X10),X8)
        | X8 != k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) )
      & ( ~ r2_hidden(X11,X7)
        | ~ r2_hidden(k4_tarski(X11,X12),X6)
        | r2_hidden(k4_tarski(X11,X12),X8)
        | X8 != k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) )
      & ( ~ r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)
        | ~ r2_hidden(esk1_3(X6,X7,X8),X7)
        | ~ r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X6)
        | X8 = k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) )
      & ( r2_hidden(esk1_3(X6,X7,X8),X7)
        | r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)
        | X8 = k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) )
      & ( r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X6)
        | r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)
        | X8 = k7_relat_1(X6,X7)
        | ~ v1_relat_1(X8)
        | ~ v1_relat_1(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d11_relat_1])])])])])])).

cnf(c_0_14,negated_conjecture,
    ( ~ r1_tarski(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( r2_hidden(k4_tarski(esk3_2(X1,X2),esk4_2(X1,X2)),X1)
    | r1_tarski(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_16,plain,
    ( r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))
    | ~ r1_tarski(X5,X4)
    | ~ r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X5))
    | ~ v1_relat_1(X3) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( r1_tarski(esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_18,plain,
    ( r2_hidden(k4_tarski(X1,X2),X3)
    | ~ r2_hidden(k4_tarski(X1,X2),X4)
    | X4 != k7_relat_1(X3,X5)
    | ~ v1_relat_1(X4)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,negated_conjecture,
    ( r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),k7_relat_1(esk7_0,esk5_0))
    | ~ v1_relat_1(k7_relat_1(esk7_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( v1_relat_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_21,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(k4_tarski(esk3_2(X1,X2),esk4_2(X1,X2)),X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_22,negated_conjecture,
    ( r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,esk6_0))
    | ~ r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,esk5_0))
    | ~ v1_relat_1(X3) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_23,plain,
    ( r2_hidden(k4_tarski(X1,X3),X5)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),X4)
    | X5 != k7_relat_1(X4,X2)
    | ~ v1_relat_1(X5)
    | ~ v1_relat_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_24,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),X4)
    | X4 != k7_relat_1(X5,X2)
    | ~ v1_relat_1(X4)
    | ~ v1_relat_1(X5) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_25,negated_conjecture,
    ( r1_tarski(esk7_0,esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_26,plain,
    ( r2_hidden(k4_tarski(X1,X2),X3)
    | ~ r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))
    | ~ v1_relat_1(X3) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_18]),c_0_12])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),k7_relat_1(esk7_0,esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_12]),c_0_20])])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(X1,k7_relat_1(X2,esk6_0))
    | ~ r2_hidden(k4_tarski(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk4_2(X1,k7_relat_1(X2,esk6_0))),k7_relat_1(X2,esk5_0))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_29,plain,
    ( r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))
    | ~ r2_hidden(k4_tarski(X1,X2),X3)
    | ~ r2_hidden(X1,X4)
    | ~ v1_relat_1(X3) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_23]),c_0_12])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(k4_tarski(X1,X3),k7_relat_1(X4,X2))
    | ~ v1_relat_1(X4) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_24]),c_0_12])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(k4_tarski(X1,X2),esk8_0)
    | ~ r2_hidden(k4_tarski(X1,X2),esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_25]),c_0_20])])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_20])])).

cnf(c_0_33,negated_conjecture,
    ( r1_tarski(X1,k7_relat_1(X2,esk6_0))
    | ~ r2_hidden(k4_tarski(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk4_2(X1,k7_relat_1(X2,esk6_0))),X2)
    | ~ r2_hidden(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk5_0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_34,negated_conjecture,
    ( r2_hidden(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_27]),c_0_20])])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),esk8_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_36,negated_conjecture,
    ( v1_relat_1(esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_37,negated_conjecture,
    ( ~ v1_relat_1(k7_relat_1(esk7_0,esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36])]),c_0_14])).

cnf(c_0_38,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_12]),c_0_20])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:12:41 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S088I
% 0.19/0.38  # and selection function SelectCQArNTEqFirstUnlessPDom.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.027 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t106_relat_1, conjecture, ![X1, X2, X3]:(v1_relat_1(X3)=>![X4]:(v1_relat_1(X4)=>((r1_tarski(X3,X4)&r1_tarski(X1,X2))=>r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t106_relat_1)).
% 0.19/0.38  fof(d3_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(r1_tarski(X1,X2)<=>![X3, X4]:(r2_hidden(k4_tarski(X3,X4),X1)=>r2_hidden(k4_tarski(X3,X4),X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_relat_1)).
% 0.19/0.38  fof(t104_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t104_relat_1)).
% 0.19/0.38  fof(dt_k7_relat_1, axiom, ![X1, X2]:(v1_relat_1(X1)=>v1_relat_1(k7_relat_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_relat_1)).
% 0.19/0.38  fof(d11_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2, X3]:(v1_relat_1(X3)=>(X3=k7_relat_1(X1,X2)<=>![X4, X5]:(r2_hidden(k4_tarski(X4,X5),X3)<=>(r2_hidden(X4,X2)&r2_hidden(k4_tarski(X4,X5),X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d11_relat_1)).
% 0.19/0.38  fof(c_0_5, negated_conjecture, ~(![X1, X2, X3]:(v1_relat_1(X3)=>![X4]:(v1_relat_1(X4)=>((r1_tarski(X3,X4)&r1_tarski(X1,X2))=>r1_tarski(k7_relat_1(X3,X1),k7_relat_1(X4,X2)))))), inference(assume_negation,[status(cth)],[t106_relat_1])).
% 0.19/0.38  fof(c_0_6, plain, ![X15, X16, X17, X18, X19]:((~r1_tarski(X15,X16)|(~r2_hidden(k4_tarski(X17,X18),X15)|r2_hidden(k4_tarski(X17,X18),X16))|~v1_relat_1(X15))&((r2_hidden(k4_tarski(esk3_2(X15,X19),esk4_2(X15,X19)),X15)|r1_tarski(X15,X19)|~v1_relat_1(X15))&(~r2_hidden(k4_tarski(esk3_2(X15,X19),esk4_2(X15,X19)),X19)|r1_tarski(X15,X19)|~v1_relat_1(X15)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_relat_1])])])])])])).
% 0.19/0.38  fof(c_0_7, plain, ![X24, X25, X26]:(~v1_relat_1(X26)|(~r1_tarski(X24,X25)|r1_tarski(k7_relat_1(X26,X24),k7_relat_1(X26,X25)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t104_relat_1])])).
% 0.19/0.38  fof(c_0_8, plain, ![X22, X23]:(~v1_relat_1(X22)|v1_relat_1(k7_relat_1(X22,X23))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k7_relat_1])])).
% 0.19/0.38  fof(c_0_9, negated_conjecture, (v1_relat_1(esk7_0)&(v1_relat_1(esk8_0)&((r1_tarski(esk7_0,esk8_0)&r1_tarski(esk5_0,esk6_0))&~r1_tarski(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.19/0.38  cnf(c_0_10, plain, (r2_hidden(k4_tarski(X3,X4),X2)|~r1_tarski(X1,X2)|~r2_hidden(k4_tarski(X3,X4),X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_11, plain, (r1_tarski(k7_relat_1(X1,X2),k7_relat_1(X1,X3))|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  cnf(c_0_12, plain, (v1_relat_1(k7_relat_1(X1,X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.19/0.38  fof(c_0_13, plain, ![X6, X7, X8, X9, X10, X11, X12]:((((r2_hidden(X9,X7)|~r2_hidden(k4_tarski(X9,X10),X8)|X8!=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6))&(r2_hidden(k4_tarski(X9,X10),X6)|~r2_hidden(k4_tarski(X9,X10),X8)|X8!=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6)))&(~r2_hidden(X11,X7)|~r2_hidden(k4_tarski(X11,X12),X6)|r2_hidden(k4_tarski(X11,X12),X8)|X8!=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6)))&((~r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)|(~r2_hidden(esk1_3(X6,X7,X8),X7)|~r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X6))|X8=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6))&((r2_hidden(esk1_3(X6,X7,X8),X7)|r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)|X8=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6))&(r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X6)|r2_hidden(k4_tarski(esk1_3(X6,X7,X8),esk2_3(X6,X7,X8)),X8)|X8=k7_relat_1(X6,X7)|~v1_relat_1(X8)|~v1_relat_1(X6))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d11_relat_1])])])])])])).
% 0.19/0.38  cnf(c_0_14, negated_conjecture, (~r1_tarski(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_15, plain, (r2_hidden(k4_tarski(esk3_2(X1,X2),esk4_2(X1,X2)),X1)|r1_tarski(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_16, plain, (r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))|~r1_tarski(X5,X4)|~r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X5))|~v1_relat_1(X3)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_11]), c_0_12])).
% 0.19/0.38  cnf(c_0_17, negated_conjecture, (r1_tarski(esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_18, plain, (r2_hidden(k4_tarski(X1,X2),X3)|~r2_hidden(k4_tarski(X1,X2),X4)|X4!=k7_relat_1(X3,X5)|~v1_relat_1(X4)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_19, negated_conjecture, (r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),k7_relat_1(esk7_0,esk5_0))|~v1_relat_1(k7_relat_1(esk7_0,esk5_0))), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.19/0.38  cnf(c_0_20, negated_conjecture, (v1_relat_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_21, plain, (r1_tarski(X1,X2)|~r2_hidden(k4_tarski(esk3_2(X1,X2),esk4_2(X1,X2)),X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_22, negated_conjecture, (r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,esk6_0))|~r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,esk5_0))|~v1_relat_1(X3)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.19/0.38  cnf(c_0_23, plain, (r2_hidden(k4_tarski(X1,X3),X5)|~r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),X4)|X5!=k7_relat_1(X4,X2)|~v1_relat_1(X5)|~v1_relat_1(X4)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_24, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),X4)|X4!=k7_relat_1(X5,X2)|~v1_relat_1(X4)|~v1_relat_1(X5)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_25, negated_conjecture, (r1_tarski(esk7_0,esk8_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_26, plain, (r2_hidden(k4_tarski(X1,X2),X3)|~r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))|~v1_relat_1(X3)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_18]), c_0_12])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),k7_relat_1(esk7_0,esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_12]), c_0_20])])).
% 0.19/0.38  cnf(c_0_28, negated_conjecture, (r1_tarski(X1,k7_relat_1(X2,esk6_0))|~r2_hidden(k4_tarski(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk4_2(X1,k7_relat_1(X2,esk6_0))),k7_relat_1(X2,esk5_0))|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.19/0.38  cnf(c_0_29, plain, (r2_hidden(k4_tarski(X1,X2),k7_relat_1(X3,X4))|~r2_hidden(k4_tarski(X1,X2),X3)|~r2_hidden(X1,X4)|~v1_relat_1(X3)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_23]), c_0_12])).
% 0.19/0.38  cnf(c_0_30, plain, (r2_hidden(X1,X2)|~r2_hidden(k4_tarski(X1,X3),k7_relat_1(X4,X2))|~v1_relat_1(X4)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_24]), c_0_12])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (r2_hidden(k4_tarski(X1,X2),esk8_0)|~r2_hidden(k4_tarski(X1,X2),esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_25]), c_0_20])])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_20])])).
% 0.19/0.38  cnf(c_0_33, negated_conjecture, (r1_tarski(X1,k7_relat_1(X2,esk6_0))|~r2_hidden(k4_tarski(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk4_2(X1,k7_relat_1(X2,esk6_0))),X2)|~r2_hidden(esk3_2(X1,k7_relat_1(X2,esk6_0)),esk5_0)|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.19/0.38  cnf(c_0_34, negated_conjecture, (r2_hidden(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_27]), c_0_20])])).
% 0.19/0.38  cnf(c_0_35, negated_conjecture, (r2_hidden(k4_tarski(esk3_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0)),esk4_2(k7_relat_1(esk7_0,esk5_0),k7_relat_1(esk8_0,esk6_0))),esk8_0)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.19/0.38  cnf(c_0_36, negated_conjecture, (v1_relat_1(esk8_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_37, negated_conjecture, (~v1_relat_1(k7_relat_1(esk7_0,esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36])]), c_0_14])).
% 0.19/0.38  cnf(c_0_38, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_12]), c_0_20])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 39
% 0.19/0.38  # Proof object clause steps            : 28
% 0.19/0.38  # Proof object formula steps           : 11
% 0.19/0.38  # Proof object conjectures             : 19
% 0.19/0.38  # Proof object clause conjectures      : 16
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 13
% 0.19/0.38  # Proof object initial formulas used   : 5
% 0.19/0.38  # Proof object generating inferences   : 12
% 0.19/0.38  # Proof object simplifying inferences  : 21
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 5
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 16
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 16
% 0.19/0.38  # Processed clauses                    : 70
% 0.19/0.38  # ...of these trivial                  : 0
% 0.19/0.38  # ...subsumed                          : 1
% 0.19/0.38  # ...remaining for further processing  : 69
% 0.19/0.38  # Other redundant clauses eliminated   : 3
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 3
% 0.19/0.38  # Generated clauses                    : 137
% 0.19/0.38  # ...of the previous two non-trivial   : 119
% 0.19/0.38  # Contextual simplify-reflections      : 5
% 0.19/0.38  # Paramodulations                      : 130
% 0.19/0.38  # Factorizations                       : 4
% 0.19/0.38  # Equation resolutions                 : 3
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 47
% 0.19/0.38  #    Positive orientable unit clauses  : 11
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 2
% 0.19/0.38  #    Non-unit-clauses                  : 34
% 0.19/0.38  # Current number of unprocessed clauses: 81
% 0.19/0.38  # ...number of literals in the above   : 398
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 19
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 281
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 123
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 6
% 0.19/0.38  # Unit Clause-clause subsumption calls : 33
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 9
% 0.19/0.38  # BW rewrite match successes           : 3
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 4917
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.033 s
% 0.19/0.38  # System time              : 0.004 s
% 0.19/0.38  # Total time               : 0.037 s
% 0.19/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
