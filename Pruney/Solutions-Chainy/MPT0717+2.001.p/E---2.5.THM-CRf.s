%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:55:46 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   31 (  54 expanded)
%              Number of clauses        :   20 (  22 expanded)
%              Number of leaves         :    5 (  13 expanded)
%              Depth                    :    7
%              Number of atoms          :  125 ( 234 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   18 (   5 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d13_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2,X3] :
          ( X3 = k10_relat_1(X1,X2)
        <=> ! [X4] :
              ( r2_hidden(X4,X3)
            <=> ( r2_hidden(X4,k1_relat_1(X1))
                & r2_hidden(k1_funct_1(X1,X4),X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_funct_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(t172_funct_1,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X2,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( r2_hidden(X3,k1_relat_1(X2))
         => r2_hidden(k1_funct_1(X2,X3),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t172_funct_1)).

fof(t169_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t169_relat_1)).

fof(c_0_5,plain,(
    ! [X14,X15,X16,X17,X18,X19,X20] :
      ( ( r2_hidden(X17,k1_relat_1(X14))
        | ~ r2_hidden(X17,X16)
        | X16 != k10_relat_1(X14,X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(k1_funct_1(X14,X17),X15)
        | ~ r2_hidden(X17,X16)
        | X16 != k10_relat_1(X14,X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( ~ r2_hidden(X18,k1_relat_1(X14))
        | ~ r2_hidden(k1_funct_1(X14,X18),X15)
        | r2_hidden(X18,X16)
        | X16 != k10_relat_1(X14,X15)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( ~ r2_hidden(esk2_3(X14,X19,X20),X20)
        | ~ r2_hidden(esk2_3(X14,X19,X20),k1_relat_1(X14))
        | ~ r2_hidden(k1_funct_1(X14,esk2_3(X14,X19,X20)),X19)
        | X20 = k10_relat_1(X14,X19)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(esk2_3(X14,X19,X20),k1_relat_1(X14))
        | r2_hidden(esk2_3(X14,X19,X20),X20)
        | X20 = k10_relat_1(X14,X19)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( r2_hidden(k1_funct_1(X14,esk2_3(X14,X19,X20)),X19)
        | r2_hidden(esk2_3(X14,X19,X20),X20)
        | X20 = k10_relat_1(X14,X19)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_funct_1])])])])])])).

fof(c_0_6,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_7,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ r2_hidden(X2,X4)
    | X4 != k10_relat_1(X1,X3)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_8,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_9,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_10,plain,(
    ! [X11,X12] :
      ( ( ~ v5_relat_1(X12,X11)
        | r1_tarski(k2_relat_1(X12),X11)
        | ~ v1_relat_1(X12) )
      & ( ~ r1_tarski(k2_relat_1(X12),X11)
        | v5_relat_1(X12,X11)
        | ~ v1_relat_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v5_relat_1(X2,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( r2_hidden(X3,k1_relat_1(X2))
           => r2_hidden(k1_funct_1(X2,X3),X1) ) ) ),
    inference(assume_negation,[status(cth)],[t172_funct_1])).

cnf(c_0_12,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k10_relat_1(X1,X3)) ),
    inference(er,[status(thm)],[c_0_7])).

fof(c_0_13,plain,(
    ! [X13] :
      ( ~ v1_relat_1(X13)
      | k10_relat_1(X13,k2_relat_1(X13)) = k1_relat_1(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).

cnf(c_0_14,plain,
    ( r2_hidden(esk1_2(X1,X2),X3)
    | r1_tarski(X1,X2)
    | ~ r1_tarski(X1,X3) ),
    inference(spm,[status(thm)],[c_0_8,c_0_9])).

cnf(c_0_15,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_16,negated_conjecture,
    ( v1_relat_1(esk4_0)
    & v5_relat_1(esk4_0,esk3_0)
    & v1_funct_1(esk4_0)
    & r2_hidden(esk5_0,k1_relat_1(esk4_0))
    & ~ r2_hidden(k1_funct_1(esk4_0,esk5_0),esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

cnf(c_0_17,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k10_relat_1(X1,X4))
    | ~ r1_tarski(X4,X3) ),
    inference(spm,[status(thm)],[c_0_8,c_0_12])).

cnf(c_0_18,plain,
    ( k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,plain,
    ( r2_hidden(esk1_2(k2_relat_1(X1),X2),X3)
    | r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X3)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( v5_relat_1(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( r2_hidden(k1_funct_1(X1,X2),X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ r1_tarski(k2_relat_1(X1),X3) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(esk5_0,k1_relat_1(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_26,negated_conjecture,
    ( r2_hidden(esk1_2(k2_relat_1(esk4_0),X1),esk3_0)
    | r1_tarski(k2_relat_1(esk4_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk4_0,esk5_0),X1)
    | ~ r1_tarski(k2_relat_1(esk4_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24]),c_0_21])])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_29,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(esk4_0,esk5_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_30,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_29]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 20:31:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.38  #
% 0.14/0.38  # Preprocessing time       : 0.027 s
% 0.14/0.38  # Presaturation interreduction done
% 0.14/0.38  
% 0.14/0.38  # Proof found!
% 0.14/0.38  # SZS status Theorem
% 0.14/0.38  # SZS output start CNFRefutation
% 0.14/0.38  fof(d13_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2, X3]:(X3=k10_relat_1(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,k1_relat_1(X1))&r2_hidden(k1_funct_1(X1,X4),X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d13_funct_1)).
% 0.14/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.14/0.38  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.14/0.38  fof(t172_funct_1, conjecture, ![X1, X2]:(((v1_relat_1(X2)&v5_relat_1(X2,X1))&v1_funct_1(X2))=>![X3]:(r2_hidden(X3,k1_relat_1(X2))=>r2_hidden(k1_funct_1(X2,X3),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t172_funct_1)).
% 0.14/0.38  fof(t169_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t169_relat_1)).
% 0.14/0.38  fof(c_0_5, plain, ![X14, X15, X16, X17, X18, X19, X20]:((((r2_hidden(X17,k1_relat_1(X14))|~r2_hidden(X17,X16)|X16!=k10_relat_1(X14,X15)|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(r2_hidden(k1_funct_1(X14,X17),X15)|~r2_hidden(X17,X16)|X16!=k10_relat_1(X14,X15)|(~v1_relat_1(X14)|~v1_funct_1(X14))))&(~r2_hidden(X18,k1_relat_1(X14))|~r2_hidden(k1_funct_1(X14,X18),X15)|r2_hidden(X18,X16)|X16!=k10_relat_1(X14,X15)|(~v1_relat_1(X14)|~v1_funct_1(X14))))&((~r2_hidden(esk2_3(X14,X19,X20),X20)|(~r2_hidden(esk2_3(X14,X19,X20),k1_relat_1(X14))|~r2_hidden(k1_funct_1(X14,esk2_3(X14,X19,X20)),X19))|X20=k10_relat_1(X14,X19)|(~v1_relat_1(X14)|~v1_funct_1(X14)))&((r2_hidden(esk2_3(X14,X19,X20),k1_relat_1(X14))|r2_hidden(esk2_3(X14,X19,X20),X20)|X20=k10_relat_1(X14,X19)|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(r2_hidden(k1_funct_1(X14,esk2_3(X14,X19,X20)),X19)|r2_hidden(esk2_3(X14,X19,X20),X20)|X20=k10_relat_1(X14,X19)|(~v1_relat_1(X14)|~v1_funct_1(X14)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_funct_1])])])])])])).
% 0.14/0.38  fof(c_0_6, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.14/0.38  cnf(c_0_7, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~r2_hidden(X2,X4)|X4!=k10_relat_1(X1,X3)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.14/0.38  cnf(c_0_8, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.38  cnf(c_0_9, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.38  fof(c_0_10, plain, ![X11, X12]:((~v5_relat_1(X12,X11)|r1_tarski(k2_relat_1(X12),X11)|~v1_relat_1(X12))&(~r1_tarski(k2_relat_1(X12),X11)|v5_relat_1(X12,X11)|~v1_relat_1(X12))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.14/0.38  fof(c_0_11, negated_conjecture, ~(![X1, X2]:(((v1_relat_1(X2)&v5_relat_1(X2,X1))&v1_funct_1(X2))=>![X3]:(r2_hidden(X3,k1_relat_1(X2))=>r2_hidden(k1_funct_1(X2,X3),X1)))), inference(assume_negation,[status(cth)],[t172_funct_1])).
% 0.14/0.38  cnf(c_0_12, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r2_hidden(X2,k10_relat_1(X1,X3))), inference(er,[status(thm)],[c_0_7])).
% 0.14/0.38  fof(c_0_13, plain, ![X13]:(~v1_relat_1(X13)|k10_relat_1(X13,k2_relat_1(X13))=k1_relat_1(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).
% 0.14/0.38  cnf(c_0_14, plain, (r2_hidden(esk1_2(X1,X2),X3)|r1_tarski(X1,X2)|~r1_tarski(X1,X3)), inference(spm,[status(thm)],[c_0_8, c_0_9])).
% 0.14/0.38  cnf(c_0_15, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.38  fof(c_0_16, negated_conjecture, (((v1_relat_1(esk4_0)&v5_relat_1(esk4_0,esk3_0))&v1_funct_1(esk4_0))&(r2_hidden(esk5_0,k1_relat_1(esk4_0))&~r2_hidden(k1_funct_1(esk4_0,esk5_0),esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.14/0.38  cnf(c_0_17, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r2_hidden(X2,k10_relat_1(X1,X4))|~r1_tarski(X4,X3)), inference(spm,[status(thm)],[c_0_8, c_0_12])).
% 0.14/0.38  cnf(c_0_18, plain, (k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.38  cnf(c_0_19, plain, (r2_hidden(esk1_2(k2_relat_1(X1),X2),X3)|r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X3)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.14/0.38  cnf(c_0_20, negated_conjecture, (v5_relat_1(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_21, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_22, plain, (r2_hidden(k1_funct_1(X1,X2),X3)|~v1_funct_1(X1)|~v1_relat_1(X1)|~r2_hidden(X2,k1_relat_1(X1))|~r1_tarski(k2_relat_1(X1),X3)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.14/0.38  cnf(c_0_23, negated_conjecture, (r2_hidden(esk5_0,k1_relat_1(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_24, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_25, plain, (r1_tarski(X1,X2)|~r2_hidden(esk1_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.14/0.38  cnf(c_0_26, negated_conjecture, (r2_hidden(esk1_2(k2_relat_1(esk4_0),X1),esk3_0)|r1_tarski(k2_relat_1(esk4_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])])).
% 0.14/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(k1_funct_1(esk4_0,esk5_0),X1)|~r1_tarski(k2_relat_1(esk4_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_24]), c_0_21])])).
% 0.14/0.38  cnf(c_0_28, negated_conjecture, (r1_tarski(k2_relat_1(esk4_0),esk3_0)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.14/0.38  cnf(c_0_29, negated_conjecture, (~r2_hidden(k1_funct_1(esk4_0,esk5_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.38  cnf(c_0_30, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_29]), ['proof']).
% 0.14/0.38  # SZS output end CNFRefutation
% 0.14/0.38  # Proof object total steps             : 31
% 0.14/0.38  # Proof object clause steps            : 20
% 0.14/0.38  # Proof object formula steps           : 11
% 0.14/0.38  # Proof object conjectures             : 12
% 0.14/0.38  # Proof object clause conjectures      : 9
% 0.14/0.38  # Proof object formula conjectures     : 3
% 0.14/0.38  # Proof object initial clauses used    : 11
% 0.14/0.38  # Proof object initial formulas used   : 5
% 0.14/0.38  # Proof object generating inferences   : 8
% 0.14/0.38  # Proof object simplifying inferences  : 7
% 0.14/0.38  # Training examples: 0 positive, 0 negative
% 0.14/0.38  # Parsed axioms                        : 5
% 0.14/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.38  # Initial clauses                      : 17
% 0.14/0.38  # Removed in clause preprocessing      : 0
% 0.14/0.38  # Initial clauses in saturation        : 17
% 0.14/0.38  # Processed clauses                    : 53
% 0.14/0.38  # ...of these trivial                  : 0
% 0.14/0.38  # ...subsumed                          : 3
% 0.14/0.38  # ...remaining for further processing  : 50
% 0.14/0.38  # Other redundant clauses eliminated   : 3
% 0.14/0.38  # Clauses deleted for lack of memory   : 0
% 0.14/0.38  # Backward-subsumed                    : 0
% 0.14/0.38  # Backward-rewritten                   : 0
% 0.14/0.38  # Generated clauses                    : 37
% 0.14/0.38  # ...of the previous two non-trivial   : 30
% 0.14/0.38  # Contextual simplify-reflections      : 0
% 0.14/0.38  # Paramodulations                      : 34
% 0.14/0.38  # Factorizations                       : 0
% 0.14/0.38  # Equation resolutions                 : 3
% 0.14/0.38  # Propositional unsat checks           : 0
% 0.14/0.38  #    Propositional check models        : 0
% 0.14/0.38  #    Propositional check unsatisfiable : 0
% 0.14/0.38  #    Propositional clauses             : 0
% 0.14/0.38  #    Propositional clauses after purity: 0
% 0.14/0.38  #    Propositional unsat core size     : 0
% 0.14/0.38  #    Propositional preprocessing time  : 0.000
% 0.14/0.38  #    Propositional encoding time       : 0.000
% 0.14/0.38  #    Propositional solver time         : 0.000
% 0.14/0.38  #    Success case prop preproc time    : 0.000
% 0.14/0.38  #    Success case prop encoding time   : 0.000
% 0.14/0.38  #    Success case prop solver time     : 0.000
% 0.14/0.38  # Current number of processed clauses  : 30
% 0.14/0.38  #    Positive orientable unit clauses  : 6
% 0.14/0.38  #    Positive unorientable unit clauses: 0
% 0.14/0.38  #    Negative unit clauses             : 2
% 0.14/0.38  #    Non-unit-clauses                  : 22
% 0.14/0.38  # Current number of unprocessed clauses: 10
% 0.14/0.38  # ...number of literals in the above   : 47
% 0.14/0.38  # Current number of archived formulas  : 0
% 0.14/0.38  # Current number of archived clauses   : 17
% 0.14/0.38  # Clause-clause subsumption calls (NU) : 170
% 0.14/0.38  # Rec. Clause-clause subsumption calls : 56
% 0.14/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.14/0.38  # Unit Clause-clause subsumption calls : 6
% 0.14/0.38  # Rewrite failures with RHS unbound    : 0
% 0.14/0.38  # BW rewrite match attempts            : 4
% 0.14/0.38  # BW rewrite match successes           : 0
% 0.14/0.38  # Condensation attempts                : 0
% 0.14/0.38  # Condensation successes               : 0
% 0.14/0.38  # Termbank termtop insertions          : 2007
% 0.14/0.38  
% 0.14/0.38  # -------------------------------------------------
% 0.14/0.38  # User time                : 0.029 s
% 0.14/0.38  # System time              : 0.005 s
% 0.14/0.38  # Total time               : 0.034 s
% 0.14/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
