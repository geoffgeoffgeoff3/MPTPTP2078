%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:54:06 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   40 ( 148 expanded)
%              Number of clauses        :   25 (  49 expanded)
%              Number of leaves         :    7 (  37 expanded)
%              Depth                    :    9
%              Number of atoms          :  115 ( 776 expanded)
%              Number of equality atoms :   40 ( 277 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
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

fof(t80_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t80_relat_1)).

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

fof(t61_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
          & k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_1)).

fof(t55_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ! [X3] :
              ( v1_relat_1(X3)
             => k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_relat_1)).

fof(d9_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => k2_funct_1(X1) = k4_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d9_funct_1)).

fof(c_0_7,negated_conjecture,(
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

fof(c_0_8,plain,(
    ! [X10] :
      ( ~ v1_relat_1(X10)
      | k5_relat_1(X10,k6_relat_1(k2_relat_1(X10))) = X10 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).

fof(c_0_9,plain,(
    ! [X5] :
      ( ( k2_relat_1(X5) = k1_relat_1(k4_relat_1(X5))
        | ~ v1_relat_1(X5) )
      & ( k1_relat_1(X5) = k2_relat_1(k4_relat_1(X5))
        | ~ v1_relat_1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).

fof(c_0_10,plain,(
    ! [X4] :
      ( ~ v1_relat_1(X4)
      | v1_relat_1(k4_relat_1(X4)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relat_1])])).

fof(c_0_11,plain,(
    ! [X12] :
      ( ( k5_relat_1(X12,k2_funct_1(X12)) = k6_relat_1(k1_relat_1(X12))
        | ~ v2_funct_1(X12)
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) )
      & ( k5_relat_1(k2_funct_1(X12),X12) = k6_relat_1(k2_relat_1(X12))
        | ~ v2_funct_1(X12)
        | ~ v1_relat_1(X12)
        | ~ v1_funct_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).

fof(c_0_12,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_funct_1(esk1_0)
    & v1_relat_1(esk2_0)
    & v1_funct_1(esk2_0)
    & v2_funct_1(esk1_0)
    & k2_relat_1(esk2_0) = k1_relat_1(esk1_0)
    & k5_relat_1(esk2_0,esk1_0) = k6_relat_1(k2_relat_1(esk1_0))
    & esk2_0 != k2_funct_1(esk1_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

cnf(c_0_13,plain,
    ( k5_relat_1(X1,k6_relat_1(k2_relat_1(X1))) = X1
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,plain,
    ( k1_relat_1(X1) = k2_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( v1_relat_1(k4_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( k5_relat_1(X1,k2_funct_1(X1)) = k6_relat_1(k1_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( k2_relat_1(esk2_0) = k1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( v2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,negated_conjecture,
    ( v1_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_21,plain,(
    ! [X6,X7,X8] :
      ( ~ v1_relat_1(X6)
      | ~ v1_relat_1(X7)
      | ~ v1_relat_1(X8)
      | k5_relat_1(k5_relat_1(X6,X7),X8) = k5_relat_1(X6,k5_relat_1(X7,X8)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).

cnf(c_0_22,negated_conjecture,
    ( k5_relat_1(esk2_0,esk1_0) = k6_relat_1(k2_relat_1(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_23,plain,
    ( k5_relat_1(k2_funct_1(X1),X1) = k6_relat_1(k2_relat_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_24,plain,
    ( k5_relat_1(k4_relat_1(X1),k6_relat_1(k1_relat_1(X1))) = k4_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_14]),c_0_15])).

cnf(c_0_25,negated_conjecture,
    ( k6_relat_1(k2_relat_1(esk2_0)) = k5_relat_1(esk1_0,k2_funct_1(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19]),c_0_20])])).

fof(c_0_26,plain,(
    ! [X11] :
      ( ~ v1_relat_1(X11)
      | ~ v1_funct_1(X11)
      | ~ v2_funct_1(X11)
      | k2_funct_1(X11) = k4_relat_1(X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).

cnf(c_0_27,plain,
    ( k5_relat_1(k5_relat_1(X1,X2),X3) = k5_relat_1(X1,k5_relat_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_relat_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk1_0),esk1_0) = k5_relat_1(esk2_0,esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_18]),c_0_19]),c_0_20])])).

cnf(c_0_29,negated_conjecture,
    ( k5_relat_1(k4_relat_1(esk1_0),k5_relat_1(esk1_0,k2_funct_1(esk1_0))) = k4_relat_1(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_17]),c_0_25]),c_0_20])])).

cnf(c_0_30,plain,
    ( k2_funct_1(X1) = k4_relat_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,X1)) = k5_relat_1(k5_relat_1(esk2_0,esk1_0),X1)
    | ~ v1_relat_1(k2_funct_1(esk1_0))
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_20])])).

cnf(c_0_32,negated_conjecture,
    ( k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,k2_funct_1(esk1_0))) = k2_funct_1(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_18]),c_0_19]),c_0_20])])).

cnf(c_0_33,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_34,negated_conjecture,
    ( k5_relat_1(k5_relat_1(esk2_0,esk1_0),k2_funct_1(esk1_0)) = k2_funct_1(esk1_0)
    | ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_35,negated_conjecture,
    ( k5_relat_1(esk2_0,k5_relat_1(esk1_0,k2_funct_1(esk1_0))) = esk2_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13,c_0_25]),c_0_33])])).

cnf(c_0_36,negated_conjecture,
    ( esk2_0 != k2_funct_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_37,negated_conjecture,
    ( ~ v1_relat_1(k2_funct_1(esk1_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_34]),c_0_35]),c_0_20]),c_0_33])]),c_0_36])).

cnf(c_0_38,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_15,c_0_30])).

cnf(c_0_39,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_18]),c_0_19]),c_0_20])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n001.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:08:29 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.40  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.40  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.40  #
% 0.20/0.40  # Preprocessing time       : 0.050 s
% 0.20/0.40  # Presaturation interreduction done
% 0.20/0.40  
% 0.20/0.40  # Proof found!
% 0.20/0.40  # SZS status Theorem
% 0.20/0.40  # SZS output start CNFRefutation
% 0.20/0.40  fof(t64_funct_1, conjecture, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X2)=k1_relat_1(X1))&k5_relat_1(X2,X1)=k6_relat_1(k2_relat_1(X1)))=>X2=k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_funct_1)).
% 0.20/0.40  fof(t80_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t80_relat_1)).
% 0.20/0.40  fof(t37_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k4_relat_1(X1))&k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_relat_1)).
% 0.20/0.40  fof(dt_k4_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>v1_relat_1(k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k4_relat_1)).
% 0.20/0.40  fof(t61_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))&k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_1)).
% 0.20/0.40  fof(t55_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>![X3]:(v1_relat_1(X3)=>k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_relat_1)).
% 0.20/0.40  fof(d9_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>k2_funct_1(X1)=k4_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d9_funct_1)).
% 0.20/0.40  fof(c_0_7, negated_conjecture, ~(![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(((v2_funct_1(X1)&k2_relat_1(X2)=k1_relat_1(X1))&k5_relat_1(X2,X1)=k6_relat_1(k2_relat_1(X1)))=>X2=k2_funct_1(X1))))), inference(assume_negation,[status(cth)],[t64_funct_1])).
% 0.20/0.40  fof(c_0_8, plain, ![X10]:(~v1_relat_1(X10)|k5_relat_1(X10,k6_relat_1(k2_relat_1(X10)))=X10), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t80_relat_1])])).
% 0.20/0.40  fof(c_0_9, plain, ![X5]:((k2_relat_1(X5)=k1_relat_1(k4_relat_1(X5))|~v1_relat_1(X5))&(k1_relat_1(X5)=k2_relat_1(k4_relat_1(X5))|~v1_relat_1(X5))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t37_relat_1])])])).
% 0.20/0.40  fof(c_0_10, plain, ![X4]:(~v1_relat_1(X4)|v1_relat_1(k4_relat_1(X4))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k4_relat_1])])).
% 0.20/0.40  fof(c_0_11, plain, ![X12]:((k5_relat_1(X12,k2_funct_1(X12))=k6_relat_1(k1_relat_1(X12))|~v2_funct_1(X12)|(~v1_relat_1(X12)|~v1_funct_1(X12)))&(k5_relat_1(k2_funct_1(X12),X12)=k6_relat_1(k2_relat_1(X12))|~v2_funct_1(X12)|(~v1_relat_1(X12)|~v1_funct_1(X12)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_funct_1])])])).
% 0.20/0.40  fof(c_0_12, negated_conjecture, ((v1_relat_1(esk1_0)&v1_funct_1(esk1_0))&((v1_relat_1(esk2_0)&v1_funct_1(esk2_0))&(((v2_funct_1(esk1_0)&k2_relat_1(esk2_0)=k1_relat_1(esk1_0))&k5_relat_1(esk2_0,esk1_0)=k6_relat_1(k2_relat_1(esk1_0)))&esk2_0!=k2_funct_1(esk1_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.20/0.40  cnf(c_0_13, plain, (k5_relat_1(X1,k6_relat_1(k2_relat_1(X1)))=X1|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.40  cnf(c_0_14, plain, (k1_relat_1(X1)=k2_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.40  cnf(c_0_15, plain, (v1_relat_1(k4_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.40  cnf(c_0_16, plain, (k5_relat_1(X1,k2_funct_1(X1))=k6_relat_1(k1_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.40  cnf(c_0_17, negated_conjecture, (k2_relat_1(esk2_0)=k1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_18, negated_conjecture, (v2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_19, negated_conjecture, (v1_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_20, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  fof(c_0_21, plain, ![X6, X7, X8]:(~v1_relat_1(X6)|(~v1_relat_1(X7)|(~v1_relat_1(X8)|k5_relat_1(k5_relat_1(X6,X7),X8)=k5_relat_1(X6,k5_relat_1(X7,X8))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_relat_1])])])).
% 0.20/0.40  cnf(c_0_22, negated_conjecture, (k5_relat_1(esk2_0,esk1_0)=k6_relat_1(k2_relat_1(esk1_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_23, plain, (k5_relat_1(k2_funct_1(X1),X1)=k6_relat_1(k2_relat_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.40  cnf(c_0_24, plain, (k5_relat_1(k4_relat_1(X1),k6_relat_1(k1_relat_1(X1)))=k4_relat_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_14]), c_0_15])).
% 0.20/0.40  cnf(c_0_25, negated_conjecture, (k6_relat_1(k2_relat_1(esk2_0))=k5_relat_1(esk1_0,k2_funct_1(esk1_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19]), c_0_20])])).
% 0.20/0.40  fof(c_0_26, plain, ![X11]:(~v1_relat_1(X11)|~v1_funct_1(X11)|(~v2_funct_1(X11)|k2_funct_1(X11)=k4_relat_1(X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_funct_1])])).
% 0.20/0.40  cnf(c_0_27, plain, (k5_relat_1(k5_relat_1(X1,X2),X3)=k5_relat_1(X1,k5_relat_1(X2,X3))|~v1_relat_1(X1)|~v1_relat_1(X2)|~v1_relat_1(X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.40  cnf(c_0_28, negated_conjecture, (k5_relat_1(k2_funct_1(esk1_0),esk1_0)=k5_relat_1(esk2_0,esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_18]), c_0_19]), c_0_20])])).
% 0.20/0.40  cnf(c_0_29, negated_conjecture, (k5_relat_1(k4_relat_1(esk1_0),k5_relat_1(esk1_0,k2_funct_1(esk1_0)))=k4_relat_1(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_17]), c_0_25]), c_0_20])])).
% 0.20/0.40  cnf(c_0_30, plain, (k2_funct_1(X1)=k4_relat_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.40  cnf(c_0_31, negated_conjecture, (k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,X1))=k5_relat_1(k5_relat_1(esk2_0,esk1_0),X1)|~v1_relat_1(k2_funct_1(esk1_0))|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_20])])).
% 0.20/0.40  cnf(c_0_32, negated_conjecture, (k5_relat_1(k2_funct_1(esk1_0),k5_relat_1(esk1_0,k2_funct_1(esk1_0)))=k2_funct_1(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_18]), c_0_19]), c_0_20])])).
% 0.20/0.40  cnf(c_0_33, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_34, negated_conjecture, (k5_relat_1(k5_relat_1(esk2_0,esk1_0),k2_funct_1(esk1_0))=k2_funct_1(esk1_0)|~v1_relat_1(k2_funct_1(esk1_0))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.20/0.40  cnf(c_0_35, negated_conjecture, (k5_relat_1(esk2_0,k5_relat_1(esk1_0,k2_funct_1(esk1_0)))=esk2_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_13, c_0_25]), c_0_33])])).
% 0.20/0.40  cnf(c_0_36, negated_conjecture, (esk2_0!=k2_funct_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.40  cnf(c_0_37, negated_conjecture, (~v1_relat_1(k2_funct_1(esk1_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_34]), c_0_35]), c_0_20]), c_0_33])]), c_0_36])).
% 0.20/0.40  cnf(c_0_38, plain, (v1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_15, c_0_30])).
% 0.20/0.40  cnf(c_0_39, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_18]), c_0_19]), c_0_20])]), ['proof']).
% 0.20/0.40  # SZS output end CNFRefutation
% 0.20/0.40  # Proof object total steps             : 40
% 0.20/0.40  # Proof object clause steps            : 25
% 0.20/0.40  # Proof object formula steps           : 15
% 0.20/0.40  # Proof object conjectures             : 19
% 0.20/0.40  # Proof object clause conjectures      : 16
% 0.20/0.40  # Proof object formula conjectures     : 3
% 0.20/0.40  # Proof object initial clauses used    : 14
% 0.20/0.40  # Proof object initial formulas used   : 7
% 0.20/0.40  # Proof object generating inferences   : 11
% 0.20/0.40  # Proof object simplifying inferences  : 29
% 0.20/0.40  # Training examples: 0 positive, 0 negative
% 0.20/0.40  # Parsed axioms                        : 8
% 0.20/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.40  # Initial clauses                      : 17
% 0.20/0.40  # Removed in clause preprocessing      : 0
% 0.20/0.40  # Initial clauses in saturation        : 17
% 0.20/0.40  # Processed clauses                    : 58
% 0.20/0.40  # ...of these trivial                  : 0
% 0.20/0.40  # ...subsumed                          : 3
% 0.20/0.40  # ...remaining for further processing  : 55
% 0.20/0.40  # Other redundant clauses eliminated   : 0
% 0.20/0.40  # Clauses deleted for lack of memory   : 0
% 0.20/0.40  # Backward-subsumed                    : 0
% 0.20/0.40  # Backward-rewritten                   : 1
% 0.20/0.40  # Generated clauses                    : 66
% 0.20/0.40  # ...of the previous two non-trivial   : 62
% 0.20/0.40  # Contextual simplify-reflections      : 1
% 0.20/0.40  # Paramodulations                      : 66
% 0.20/0.40  # Factorizations                       : 0
% 0.20/0.40  # Equation resolutions                 : 0
% 0.20/0.40  # Propositional unsat checks           : 0
% 0.20/0.40  #    Propositional check models        : 0
% 0.20/0.40  #    Propositional check unsatisfiable : 0
% 0.20/0.40  #    Propositional clauses             : 0
% 0.20/0.40  #    Propositional clauses after purity: 0
% 0.20/0.40  #    Propositional unsat core size     : 0
% 0.20/0.40  #    Propositional preprocessing time  : 0.000
% 0.20/0.40  #    Propositional encoding time       : 0.000
% 0.20/0.40  #    Propositional solver time         : 0.000
% 0.20/0.40  #    Success case prop preproc time    : 0.000
% 0.20/0.40  #    Success case prop encoding time   : 0.000
% 0.20/0.40  #    Success case prop solver time     : 0.000
% 0.20/0.40  # Current number of processed clauses  : 37
% 0.20/0.40  #    Positive orientable unit clauses  : 14
% 0.20/0.40  #    Positive unorientable unit clauses: 0
% 0.20/0.40  #    Negative unit clauses             : 2
% 0.20/0.40  #    Non-unit-clauses                  : 21
% 0.20/0.40  # Current number of unprocessed clauses: 37
% 0.20/0.40  # ...number of literals in the above   : 171
% 0.20/0.40  # Current number of archived formulas  : 0
% 0.20/0.40  # Current number of archived clauses   : 18
% 0.20/0.40  # Clause-clause subsumption calls (NU) : 44
% 0.20/0.40  # Rec. Clause-clause subsumption calls : 35
% 0.20/0.40  # Non-unit clause-clause subsumptions  : 4
% 0.20/0.40  # Unit Clause-clause subsumption calls : 20
% 0.20/0.40  # Rewrite failures with RHS unbound    : 0
% 0.20/0.40  # BW rewrite match attempts            : 1
% 0.20/0.40  # BW rewrite match successes           : 1
% 0.20/0.40  # Condensation attempts                : 0
% 0.20/0.40  # Condensation successes               : 0
% 0.20/0.40  # Termbank termtop insertions          : 2561
% 0.20/0.40  
% 0.20/0.40  # -------------------------------------------------
% 0.20/0.40  # User time                : 0.050 s
% 0.20/0.40  # System time              : 0.010 s
% 0.20/0.40  # Total time               : 0.060 s
% 0.20/0.40  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
