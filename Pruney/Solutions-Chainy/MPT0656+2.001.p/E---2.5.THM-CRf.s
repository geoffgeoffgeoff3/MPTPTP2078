%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:01 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   44 ( 147 expanded)
%              Number of clauses        :   27 (  51 expanded)
%              Number of leaves         :    8 (  36 expanded)
%              Depth                    :   10
%              Number of atoms          :  138 ( 774 expanded)
%              Number of equality atoms :   46 ( 277 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t77_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(k1_relat_1(X2),X1)
       => k5_relat_1(k6_relat_1(X1),X2) = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t77_relat_1)).

fof(t63_funct_1,conjecture,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( v2_funct_1(X1)
              & k2_relat_1(X1) = k1_relat_1(X2)
              & k5_relat_1(X1,X2) = k6_relat_1(k1_relat_1(X1)) )
           => X2 = k2_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_funct_1)).

fof(t37_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
        & k1_relat_1(X1) = k2_relat_1(k4_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_relat_1)).

fof(t61_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
          & k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_1)).

fof(d9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => k2_funct_1(X1) = k4_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d9_funct_1)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_relat_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(c_0_8,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_9,plain,(
    ! [X10,X11] :
      ( ~ v1_relat_1(X11)
      | ~ r1_tarski(k1_relat_1(X11),X10)
      | k5_relat_1(k6_relat_1(X10),X11) = X11 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t77_relat_1])])).

cnf(c_0_10,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_11,negated_conjecture,(
    ~ ! [X1] :
        ( ( v1_relat_1(X1)
          & v1_funct_1(X1) )
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ( ( v2_funct_1(X1)
                & k2_relat_1(X1) = k1_relat_1(X2)
                & k5_relat_1(X1,X2) = k6_relat_1(k1_relat_1(X1)) )
             => X2 = k2_funct_1(X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t63_funct_1])).

cnf(c_0_12,plain,
    ( k5_relat_1(k6_relat_1(X2),X1) = X1
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_13,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_10])).

fof(c_0_14,plain,(
    ! [X6] :
      ( ( k2_relat_1(X6) = k1_relat_1(k4_relat_1(X6))
        | ~ v1_relat_1(X6) )
      & ( k1_relat_1(X6) = k2_relat_1(k4_relat_1(X6))
        | ~ v1_relat_1(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).

fof(c_0_15,plain,(
    ! [X14] :
      ( ( k5_relat_1(X14,k2_funct_1(X14)) = k6_relat_1(k1_relat_1(X14))
        | ~ v2_funct_1(X14)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) )
      & ( k5_relat_1(k2_funct_1(X14),X14) = k6_relat_1(k2_relat_1(X14))
        | ~ v2_funct_1(X14)
        | ~ v1_relat_1(X14)
        | ~ v1_funct_1(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

fof(c_0_16,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_funct_1(esk1_0)
    & v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & v2_funct_1(esk1_0)
    & k2_relat_1(esk1_0) = k1_relat_1(esk2_0)
    & k5_relat_1(esk1_0,esk2_0) = k6_relat_1(k1_relat_1(esk1_0))
    & esk2_0 != k2_funct_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).

cnf(c_0_17,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1) = X1
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_18,plain,
    ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( k2_relat_1(esk1_0) = k1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( v2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_24,plain,
    ( k5_relat_1(k6_relat_1(k2_relat_1(X1)),k4_relat_1(X1)) = k4_relat_1(X1)
    | ~ v1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( k6_relat_1(k1_relat_1(esk2_0)) = k5_relat_1(k2_funct_1(esk1_0),esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_22]),c_0_23])])).

fof(c_0_26,plain,(
    ! [X12] :
      ( ~ v1_relat_1(X12)
      | ~ v1_funct_1(X12)
      | ~ v2_funct_1(X12)
      | k2_funct_1(X12) = k4_relat_1(X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

fof(c_0_27,plain,(
    ! [X7,X8,X9] :
      ( ~ v1_relat_1(X7)
      | ~ v1_relat_1(X8)
      | ~ v1_relat_1(X9)
      | k5_relat_1(k5_relat_1(X7,X8),X9) = k5_relat_1(X7,k5_relat_1(X8,X9)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

cnf(c_0_28,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_29,negated_conjecture,
    ( k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),k4_relat_1(esk1_0)) = k4_relat_1(esk1_0)
    | ~ v1_relat_1(k4_relat_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_20]),c_0_25]),c_0_23])])).

cnf(c_0_30,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k5_relat_1(esk1_0,esk2_0) = k6_relat_1(k1_relat_1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_32,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_33,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),esk2_0) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_25]),c_0_28])])).

cnf(c_0_35,negated_conjecture,
    ( k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),k2_funct_1(esk1_0)) = k2_funct_1(esk1_0)
    | ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_36,negated_conjecture,
    ( k5_relat_1(esk1_0,k2_funct_1(esk1_0)) = k5_relat_1(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_37,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,esk2_0)) = esk2_0
    | ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_28]),c_0_23])])).

cnf(c_0_38,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,esk2_0)) = k2_funct_1(esk1_0)
    | ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_35]),c_0_36]),c_0_23])])).

cnf(c_0_39,negated_conjecture,
    ( esk2_0 != k2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_40,plain,(
    ! [X13] :
      ( ( v1_relat_1(k2_funct_1(X13))
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) )
      & ( v1_funct_1(k2_funct_1(X13))
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

cnf(c_0_41,negated_conjecture,
    ( ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39])).

cnf(c_0_42,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_43,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_22]),c_0_23])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:50:38 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.029 s
% 0.14/0.37  # Presaturation interreduction done
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.37  fof(t77_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(r1_tarski(k1_relat_1(X2),X1)=>k5_relat_1(k6_relat_1(X1),X2)=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t77_relat_1)).
% 0.14/0.37  fof(t63_funct_1, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X1)=k1_relat_1(X2))&k5_relat_1(X1,X2)=k6_relat_1(k1_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_funct_1)).
% 0.14/0.37  fof(t37_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))&k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_relat_1)).
% 0.14/0.37  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_1)).
% 0.14/0.37  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_funct_1)).
% 0.14/0.37  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_relat_1)).
% 0.14/0.37  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.14/0.37  fof(c_0_8, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.37  fof(c_0_9, plain, ![X10, X11]:(~v1_relat_1(X11)|(~r1_tarski(k1_relat_1(X11),X10)|k5_relat_1(k6_relat_1(X10),X11)=X11)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t77_relat_1])])).
% 0.14/0.37  cnf(c_0_10, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.37  fof(c_0_11, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X1)=k1_relat_1(X2))&k5_relat_1(X1,X2)=k6_relat_1(k1_relat_1(X1)))=>X2=k2_funct_1(X1))))), inference(assume_negation,[status(cth)],[t63_funct_1])).
% 0.14/0.37  cnf(c_0_12, plain, (k5_relat_1(k6_relat_1(X2),X1)=X1|~v1_relat_1(X1)|~r1_tarski(k1_relat_1(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_13, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_10])).
% 0.14/0.37  fof(c_0_14, plain, ![X6]:((k2_relat_1(X6)=k1_relat_1(k4_relat_1(X6))|~v1_relat_1(X6))&(k1_relat_1(X6)=k2_relat_1(k4_relat_1(X6))|~v1_relat_1(X6))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).
% 0.14/0.37  fof(c_0_15, plain, ![X14]:((k5_relat_1(X14,k2_funct_1(X14))=k6_relat_1(k1_relat_1(X14))|~v2_funct_1(X14)|(~v1_relat_1(X14)|~v1_funct_1(X14)))&(k5_relat_1(k2_funct_1(X14),X14)=k6_relat_1(k2_relat_1(X14))|~v2_funct_1(X14)|(~v1_relat_1(X14)|~v1_funct_1(X14)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 0.14/0.37  fof(c_0_16, negated_conjecture, ((v1_relat_1(esk1_0)&v1_funct_1(esk1_0))&((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&(((v2_funct_1(esk1_0)&k2_relat_1(esk1_0)=k1_relat_1(esk2_0))&k5_relat_1(esk1_0,esk2_0)=k6_relat_1(k1_relat_1(esk1_0)))&esk2_0!=k2_funct_1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_11])])])).
% 0.14/0.37  cnf(c_0_17, plain, (k5_relat_1(k6_relat_1(k1_relat_1(X1)),X1)=X1|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_12, c_0_13])).
% 0.14/0.37  cnf(c_0_18, plain, (k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.37  cnf(c_0_19, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  cnf(c_0_20, negated_conjecture, (k2_relat_1(esk1_0)=k1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_21, negated_conjecture, (v2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_22, negated_conjecture, (v1_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_23, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_24, plain, (k5_relat_1(k6_relat_1(k2_relat_1(X1)),k4_relat_1(X1))=k4_relat_1(X1)|~v1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.14/0.37  cnf(c_0_25, negated_conjecture, (k6_relat_1(k1_relat_1(esk2_0))=k5_relat_1(k2_funct_1(esk1_0),esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_22]), c_0_23])])).
% 0.14/0.37  fof(c_0_26, plain, ![X12]:(~v1_relat_1(X12)|~v1_funct_1(X12)|(~v2_funct_1(X12)|k2_funct_1(X12)=k4_relat_1(X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.14/0.37  fof(c_0_27, plain, ![X7, X8, X9]:(~v1_relat_1(X7)|(~v1_relat_1(X8)|(~v1_relat_1(X9)|k5_relat_1(k5_relat_1(X7,X8),X9)=k5_relat_1(X7,k5_relat_1(X8,X9))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 0.14/0.37  cnf(c_0_28, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_29, negated_conjecture, (k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),k4_relat_1(esk1_0))=k4_relat_1(esk1_0)|~v1_relat_1(k4_relat_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_20]), c_0_25]), c_0_23])])).
% 0.14/0.37  cnf(c_0_30, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.14/0.37  cnf(c_0_31, negated_conjecture, (k5_relat_1(esk1_0,esk2_0)=k6_relat_1(k1_relat_1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  cnf(c_0_32, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  cnf(c_0_33, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.14/0.37  cnf(c_0_34, negated_conjecture, (k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),esk2_0)=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_25]), c_0_28])])).
% 0.14/0.37  cnf(c_0_35, negated_conjecture, (k5_relat_1(k5_relat_1(k2_funct_1(esk1_0),esk1_0),k2_funct_1(esk1_0))=k2_funct_1(esk1_0)|~v1_relat_1(k2_funct_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_21]), c_0_22]), c_0_23])])).
% 0.14/0.37  cnf(c_0_36, negated_conjecture, (k5_relat_1(esk1_0,k2_funct_1(esk1_0))=k5_relat_1(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_21]), c_0_22]), c_0_23])])).
% 0.14/0.37  cnf(c_0_37, negated_conjecture, (k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,esk2_0))=esk2_0|~v1_relat_1(k2_funct_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_28]), c_0_23])])).
% 0.14/0.37  cnf(c_0_38, negated_conjecture, (k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,esk2_0))=k2_funct_1(esk1_0)|~v1_relat_1(k2_funct_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_35]), c_0_36]), c_0_23])])).
% 0.14/0.37  cnf(c_0_39, negated_conjecture, (esk2_0!=k2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.14/0.37  fof(c_0_40, plain, ![X13]:((v1_relat_1(k2_funct_1(X13))|(~v1_relat_1(X13)|~v1_funct_1(X13)))&(v1_funct_1(k2_funct_1(X13))|(~v1_relat_1(X13)|~v1_funct_1(X13)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.14/0.37  cnf(c_0_41, negated_conjecture, (~v1_relat_1(k2_funct_1(esk1_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39])).
% 0.14/0.37  cnf(c_0_42, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.14/0.37  cnf(c_0_43, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_22]), c_0_23])]), ['proof']).
% 0.14/0.37  # SZS output end CNFRefutation
% 0.14/0.37  # Proof object total steps             : 44
% 0.14/0.37  # Proof object clause steps            : 27
% 0.14/0.37  # Proof object formula steps           : 17
% 0.14/0.37  # Proof object conjectures             : 19
% 0.14/0.37  # Proof object clause conjectures      : 16
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 15
% 0.14/0.37  # Proof object initial formulas used   : 8
% 0.14/0.37  # Proof object generating inferences   : 11
% 0.14/0.37  # Proof object simplifying inferences  : 28
% 0.14/0.37  # Training examples: 0 positive, 0 negative
% 0.14/0.37  # Parsed axioms                        : 8
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 20
% 0.14/0.37  # Removed in clause preprocessing      : 0
% 0.14/0.37  # Initial clauses in saturation        : 20
% 0.14/0.37  # Processed clauses                    : 60
% 0.14/0.37  # ...of these trivial                  : 0
% 0.14/0.37  # ...subsumed                          : 1
% 0.14/0.37  # ...remaining for further processing  : 59
% 0.14/0.37  # Other redundant clauses eliminated   : 2
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 0
% 0.14/0.37  # Backward-rewritten                   : 0
% 0.14/0.37  # Generated clauses                    : 61
% 0.14/0.37  # ...of the previous two non-trivial   : 58
% 0.14/0.37  # Contextual simplify-reflections      : 1
% 0.14/0.37  # Paramodulations                      : 59
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 2
% 0.14/0.37  # Propositional unsat checks           : 0
% 0.14/0.37  #    Propositional check models        : 0
% 0.14/0.37  #    Propositional check unsatisfiable : 0
% 0.14/0.37  #    Propositional clauses             : 0
% 0.14/0.37  #    Propositional clauses after purity: 0
% 0.14/0.37  #    Propositional unsat core size     : 0
% 0.14/0.37  #    Propositional preprocessing time  : 0.000
% 0.14/0.37  #    Propositional encoding time       : 0.000
% 0.14/0.37  #    Propositional solver time         : 0.000
% 0.14/0.37  #    Success case prop preproc time    : 0.000
% 0.14/0.37  #    Success case prop encoding time   : 0.000
% 0.14/0.37  #    Success case prop solver time     : 0.000
% 0.14/0.37  # Current number of processed clauses  : 38
% 0.14/0.37  #    Positive orientable unit clauses  : 13
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 2
% 0.14/0.37  #    Non-unit-clauses                  : 23
% 0.14/0.37  # Current number of unprocessed clauses: 37
% 0.14/0.37  # ...number of literals in the above   : 182
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 19
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 20
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 11
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.14/0.37  # Unit Clause-clause subsumption calls : 21
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 0
% 0.14/0.37  # BW rewrite match successes           : 0
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 2500
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.031 s
% 0.14/0.37  # System time              : 0.004 s
% 0.14/0.37  # Total time               : 0.035 s
% 0.14/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
