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
% DateTime   : Thu Dec  3 10:54:06 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   37 (  73 expanded)
%              Number of clauses        :   22 (  26 expanded)
%              Number of leaves         :    7 (  18 expanded)
%              Depth                    :    8
%              Number of atoms          :  170 ( 425 expanded)
%              Number of equality atoms :   54 ( 147 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   10 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l72_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ! [X4] :
              ( ( v1_relat_1(X4)
                & v1_funct_1(X4) )
             => ( ( k2_relat_1(X2) = X1
                  & k5_relat_1(X2,X3) = k6_relat_1(k1_relat_1(X4))
                  & k5_relat_1(X3,X4) = k6_relat_1(X1) )
               => X4 = X2 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l72_funct_1)).

fof(t37_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
        & k1_relat_1(X1) = k2_relat_1(k4_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_relat_1)).

fof(dt_k4_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => v1_relat_1(k4_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k4_relat_1)).

fof(fc5_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1)
        & v2_funct_1(X1) )
     => ( v1_relat_1(k4_relat_1(X1))
        & v1_funct_1(k4_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc5_funct_1)).

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

fof(t64_funct_1,conjecture,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v1_funct_1(X2) )
         => ( ( v2_funct_1(X1)
              & k2_relat_1(X2) = k1_relat_1(X1)
              & k5_relat_1(X2,X1) = k6_relat_1(k2_relat_1(X1)) )
           => X2 = k2_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_funct_1)).

fof(c_0_7,plain,(
    ! [X9,X10,X11,X12] :
      ( ~ v1_relat_1(X10)
      | ~ v1_funct_1(X10)
      | ~ v1_relat_1(X11)
      | ~ v1_funct_1(X11)
      | ~ v1_relat_1(X12)
      | ~ v1_funct_1(X12)
      | k2_relat_1(X10) != X9
      | k5_relat_1(X10,X11) != k6_relat_1(k1_relat_1(X12))
      | k5_relat_1(X11,X12) != k6_relat_1(X9)
      | X12 = X10 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l72_funct_1])])])).

cnf(c_0_8,plain,
    ( X3 = X1
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X3)
    | ~ v1_funct_1(X3)
    | k2_relat_1(X1) != X4
    | k5_relat_1(X1,X2) != k6_relat_1(k1_relat_1(X3))
    | k5_relat_1(X2,X3) != k6_relat_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_9,plain,(
    ! [X6] :
      ( ( k2_relat_1(X6) = k1_relat_1(k4_relat_1(X6))
        | ~ v1_relat_1(X6) )
      & ( k1_relat_1(X6) = k2_relat_1(k4_relat_1(X6))
        | ~ v1_relat_1(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).

fof(c_0_10,plain,(
    ! [X5] :
      ( ~ v1_relat_1(X5)
      | v1_relat_1(k4_relat_1(X5)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relat_1])])).

cnf(c_0_11,plain,
    ( X1 = X2
    | k5_relat_1(X1,X3) != k6_relat_1(k1_relat_1(X2))
    | k5_relat_1(X3,X2) != k6_relat_1(k2_relat_1(X1))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_8])).

cnf(c_0_12,plain,
    ( k2_relat_1(X1) = k1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_13,plain,
    ( v1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_14,plain,(
    ! [X8] :
      ( ( v1_relat_1(k4_relat_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X8) )
      & ( v1_funct_1(k4_relat_1(X8))
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X8) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc5_funct_1])])])).

fof(c_0_15,plain,(
    ! [X13] :
      ( ( k5_relat_1(X13,k2_funct_1(X13)) = k6_relat_1(k1_relat_1(X13))
        | ~ v2_funct_1(X13)
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) )
      & ( k5_relat_1(k2_funct_1(X13),X13) = k6_relat_1(k2_relat_1(X13))
        | ~ v2_funct_1(X13)
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

fof(c_0_16,plain,(
    ! [X7] :
      ( ~ v1_relat_1(X7)
      | ~ v1_funct_1(X7)
      | ~ v2_funct_1(X7)
      | k2_funct_1(X7) = k4_relat_1(X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

cnf(c_0_17,plain,
    ( X1 = k4_relat_1(X2)
    | k5_relat_1(X3,k4_relat_1(X2)) != k6_relat_1(k2_relat_1(X1))
    | k5_relat_1(X1,X3) != k6_relat_1(k2_relat_1(X2))
    | ~ v1_funct_1(k4_relat_1(X2))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_11,c_0_12]),c_0_13])).

cnf(c_0_18,plain,
    ( v1_funct_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_21,negated_conjecture,(
    ~ ! [X1] :
        ( ( v1_relat_1(X1)
          & v1_funct_1(X1) )
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ( ( v2_funct_1(X1)
                & k2_relat_1(X2) = k1_relat_1(X1)
                & k5_relat_1(X2,X1) = k6_relat_1(k2_relat_1(X1)) )
             => X2 = k2_funct_1(X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t64_funct_1])).

cnf(c_0_22,plain,
    ( X1 = k4_relat_1(X2)
    | k5_relat_1(X3,k4_relat_1(X2)) != k6_relat_1(k2_relat_1(X1))
    | k5_relat_1(X1,X3) != k6_relat_1(k2_relat_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_23,plain,
    ( k5_relat_1(X1,k4_relat_1(X1)) = k6_relat_1(k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

fof(c_0_24,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_funct_1(esk1_0)
    & v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & v2_funct_1(esk1_0)
    & k2_relat_1(esk2_0) = k1_relat_1(esk1_0)
    & k5_relat_1(esk2_0,esk1_0) = k6_relat_1(k2_relat_1(esk1_0))
    & esk2_0 != k2_funct_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).

cnf(c_0_25,plain,
    ( X1 = k4_relat_1(X2)
    | k6_relat_1(k1_relat_1(X2)) != k6_relat_1(k2_relat_1(X1))
    | k5_relat_1(X1,X2) != k6_relat_1(k2_relat_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_26,negated_conjecture,
    ( k5_relat_1(esk2_0,esk1_0) = k6_relat_1(k2_relat_1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_27,negated_conjecture,
    ( k2_relat_1(esk2_0) = k1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( v2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_29,negated_conjecture,
    ( v1_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_30,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,negated_conjecture,
    ( esk2_0 != k2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,negated_conjecture,
    ( X1 = k4_relat_1(esk1_0)
    | k6_relat_1(k2_relat_1(esk2_0)) != k6_relat_1(k2_relat_1(X1))
    | k5_relat_1(X1,esk1_0) != k5_relat_1(esk2_0,esk1_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_27]),c_0_28]),c_0_29]),c_0_30])])).

cnf(c_0_33,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,negated_conjecture,
    ( k4_relat_1(esk1_0) != esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_20]),c_0_28]),c_0_29]),c_0_30])])).

cnf(c_0_36,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_32]),c_0_33]),c_0_34])]),c_0_35]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n007.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:51:06 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.13/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.027 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(l72_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>![X4]:((v1_relat_1(X4)&v1_funct_1(X4))=>(((k2_relat_1(X2)=X1&k5_relat_1(X2,X3)=k6_relat_1(k1_relat_1(X4)))&k5_relat_1(X3,X4)=k6_relat_1(X1))=>X4=X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l72_funct_1)).
% 0.13/0.38  fof(t37_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))&k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_relat_1)).
% 0.13/0.38  fof(dt_k4_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>v1_relat_1(k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k4_relat_1)).
% 0.13/0.38  fof(fc5_funct_1, axiom, ![X1]:(((v1_relat_1(X1)&v1_funct_1(X1))&v2_funct_1(X1))=>(v1_relat_1(k4_relat_1(X1))&v1_funct_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc5_funct_1)).
% 0.13/0.38  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_1)).
% 0.13/0.38  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_funct_1)).
% 0.13/0.38  fof(t64_funct_1, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X2)=k1_relat_1(X1))&k5_relat_1(X2,X1)=k6_relat_1(k2_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_funct_1)).
% 0.13/0.38  fof(c_0_7, plain, ![X9, X10, X11, X12]:(~v1_relat_1(X10)|~v1_funct_1(X10)|(~v1_relat_1(X11)|~v1_funct_1(X11)|(~v1_relat_1(X12)|~v1_funct_1(X12)|(k2_relat_1(X10)!=X9|k5_relat_1(X10,X11)!=k6_relat_1(k1_relat_1(X12))|k5_relat_1(X11,X12)!=k6_relat_1(X9)|X12=X10)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l72_funct_1])])])).
% 0.13/0.38  cnf(c_0_8, plain, (X3=X1|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v1_relat_1(X3)|~v1_funct_1(X3)|k2_relat_1(X1)!=X4|k5_relat_1(X1,X2)!=k6_relat_1(k1_relat_1(X3))|k5_relat_1(X2,X3)!=k6_relat_1(X4)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  fof(c_0_9, plain, ![X6]:((k2_relat_1(X6)=k1_relat_1(k4_relat_1(X6))|~v1_relat_1(X6))&(k1_relat_1(X6)=k2_relat_1(k4_relat_1(X6))|~v1_relat_1(X6))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).
% 0.13/0.38  fof(c_0_10, plain, ![X5]:(~v1_relat_1(X5)|v1_relat_1(k4_relat_1(X5))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relat_1])])).
% 0.13/0.38  cnf(c_0_11, plain, (X1=X2|k5_relat_1(X1,X3)!=k6_relat_1(k1_relat_1(X2))|k5_relat_1(X3,X2)!=k6_relat_1(k2_relat_1(X1))|~v1_funct_1(X2)|~v1_funct_1(X3)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)|~v1_relat_1(X1)), inference(er,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_12, plain, (k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_13, plain, (v1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  fof(c_0_14, plain, ![X8]:((v1_relat_1(k4_relat_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)|~v2_funct_1(X8)))&(v1_funct_1(k4_relat_1(X8))|(~v1_relat_1(X8)|~v1_funct_1(X8)|~v2_funct_1(X8)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc5_funct_1])])])).
% 0.13/0.38  fof(c_0_15, plain, ![X13]:((k5_relat_1(X13,k2_funct_1(X13))=k6_relat_1(k1_relat_1(X13))|~v2_funct_1(X13)|(~v1_relat_1(X13)|~v1_funct_1(X13)))&(k5_relat_1(k2_funct_1(X13),X13)=k6_relat_1(k2_relat_1(X13))|~v2_funct_1(X13)|(~v1_relat_1(X13)|~v1_funct_1(X13)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 0.13/0.38  fof(c_0_16, plain, ![X7]:(~v1_relat_1(X7)|~v1_funct_1(X7)|(~v2_funct_1(X7)|k2_funct_1(X7)=k4_relat_1(X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.13/0.38  cnf(c_0_17, plain, (X1=k4_relat_1(X2)|k5_relat_1(X3,k4_relat_1(X2))!=k6_relat_1(k2_relat_1(X1))|k5_relat_1(X1,X3)!=k6_relat_1(k2_relat_1(X2))|~v1_funct_1(k4_relat_1(X2))|~v1_funct_1(X3)|~v1_funct_1(X1)|~v1_relat_1(X3)|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_11, c_0_12]), c_0_13])).
% 0.13/0.38  cnf(c_0_18, plain, (v1_funct_1(k4_relat_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.13/0.38  cnf(c_0_19, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_20, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  fof(c_0_21, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X2)=k1_relat_1(X1))&k5_relat_1(X2,X1)=k6_relat_1(k2_relat_1(X1)))=>X2=k2_funct_1(X1))))), inference(assume_negation,[status(cth)],[t64_funct_1])).
% 0.13/0.38  cnf(c_0_22, plain, (X1=k4_relat_1(X2)|k5_relat_1(X3,k4_relat_1(X2))!=k6_relat_1(k2_relat_1(X1))|k5_relat_1(X1,X3)!=k6_relat_1(k2_relat_1(X2))|~v2_funct_1(X2)|~v1_funct_1(X3)|~v1_funct_1(X1)|~v1_funct_1(X2)|~v1_relat_1(X3)|~v1_relat_1(X1)|~v1_relat_1(X2)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.13/0.38  cnf(c_0_23, plain, (k5_relat_1(X1,k4_relat_1(X1))=k6_relat_1(k1_relat_1(X1))|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.13/0.38  fof(c_0_24, negated_conjecture, ((v1_relat_1(esk1_0)&v1_funct_1(esk1_0))&((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&(((v2_funct_1(esk1_0)&k2_relat_1(esk2_0)=k1_relat_1(esk1_0))&k5_relat_1(esk2_0,esk1_0)=k6_relat_1(k2_relat_1(esk1_0)))&esk2_0!=k2_funct_1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).
% 0.13/0.38  cnf(c_0_25, plain, (X1=k4_relat_1(X2)|k6_relat_1(k1_relat_1(X2))!=k6_relat_1(k2_relat_1(X1))|k5_relat_1(X1,X2)!=k6_relat_1(k2_relat_1(X2))|~v2_funct_1(X2)|~v1_funct_1(X2)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (k5_relat_1(esk2_0,esk1_0)=k6_relat_1(k2_relat_1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (k2_relat_1(esk2_0)=k1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (v2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (v1_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (esk2_0!=k2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (X1=k4_relat_1(esk1_0)|k6_relat_1(k2_relat_1(esk2_0))!=k6_relat_1(k2_relat_1(X1))|k5_relat_1(X1,esk1_0)!=k5_relat_1(esk2_0,esk1_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_27]), c_0_28]), c_0_29]), c_0_30])])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.38  cnf(c_0_35, negated_conjecture, (k4_relat_1(esk1_0)!=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_20]), c_0_28]), c_0_29]), c_0_30])])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_32]), c_0_33]), c_0_34])]), c_0_35]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 37
% 0.13/0.38  # Proof object clause steps            : 22
% 0.13/0.38  # Proof object formula steps           : 15
% 0.13/0.38  # Proof object conjectures             : 14
% 0.13/0.38  # Proof object clause conjectures      : 11
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 14
% 0.13/0.38  # Proof object initial formulas used   : 7
% 0.13/0.38  # Proof object generating inferences   : 7
% 0.13/0.38  # Proof object simplifying inferences  : 15
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 7
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 17
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 17
% 0.13/0.38  # Processed clauses                    : 88
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 21
% 0.13/0.38  # ...remaining for further processing  : 67
% 0.13/0.38  # Other redundant clauses eliminated   : 1
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 107
% 0.13/0.38  # ...of the previous two non-trivial   : 100
% 0.13/0.38  # Contextual simplify-reflections      : 10
% 0.13/0.38  # Paramodulations                      : 105
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 2
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 50
% 0.13/0.38  #    Positive orientable unit clauses  : 7
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 2
% 0.13/0.38  #    Non-unit-clauses                  : 41
% 0.13/0.38  # Current number of unprocessed clauses: 45
% 0.13/0.38  # ...number of literals in the above   : 410
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 16
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 228
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 47
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 31
% 0.13/0.38  # Unit Clause-clause subsumption calls : 5
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 0
% 0.13/0.38  # BW rewrite match successes           : 0
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 5347
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.032 s
% 0.13/0.38  # System time              : 0.006 s
% 0.13/0.38  # Total time               : 0.037 s
% 0.13/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
