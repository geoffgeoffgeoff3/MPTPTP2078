%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:53:45 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   25 ( 100 expanded)
%              Number of clauses        :   16 (  34 expanded)
%              Number of leaves         :    4 (  25 expanded)
%              Depth                    :    6
%              Number of atoms          :  225 ( 728 expanded)
%              Number of equality atoms :   66 ( 209 expanded)
%              Maximal formula depth    :   31 (   6 average)
%              Maximal clause size      :  130 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t54_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ( X2 = k2_funct_1(X1)
            <=> ( k1_relat_1(X2) = k2_relat_1(X1)
                & ! [X3,X4] :
                    ( ( ( r2_hidden(X3,k2_relat_1(X1))
                        & X4 = k1_funct_1(X2,X3) )
                     => ( r2_hidden(X4,k1_relat_1(X1))
                        & X3 = k1_funct_1(X1,X4) ) )
                    & ( ( r2_hidden(X4,k1_relat_1(X1))
                        & X3 = k1_funct_1(X1,X4) )
                     => ( r2_hidden(X3,k2_relat_1(X1))
                        & X4 = k1_funct_1(X2,X3) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t54_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t56_funct_1,conjecture,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & r2_hidden(X1,k1_relat_1(X2)) )
       => ( X1 = k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))
          & X1 = k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_funct_1)).

fof(t23_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v1_funct_1(X3) )
         => ( r2_hidden(X1,k1_relat_1(X2))
           => k1_funct_1(k5_relat_1(X2,X3),X1) = k1_funct_1(X3,k1_funct_1(X2,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_funct_1)).

fof(c_0_4,plain,(
    ! [X9,X10,X11,X12,X13,X14] :
      ( ( k1_relat_1(X10) = k2_relat_1(X9)
        | X10 != k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( r2_hidden(X12,k1_relat_1(X9))
        | ~ r2_hidden(X11,k2_relat_1(X9))
        | X12 != k1_funct_1(X10,X11)
        | X10 != k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( X11 = k1_funct_1(X9,X12)
        | ~ r2_hidden(X11,k2_relat_1(X9))
        | X12 != k1_funct_1(X10,X11)
        | X10 != k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( r2_hidden(X13,k2_relat_1(X9))
        | ~ r2_hidden(X14,k1_relat_1(X9))
        | X13 != k1_funct_1(X9,X14)
        | X10 != k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( X14 = k1_funct_1(X10,X13)
        | ~ r2_hidden(X14,k1_relat_1(X9))
        | X13 != k1_funct_1(X9,X14)
        | X10 != k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))
        | r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( esk3_2(X9,X10) = k1_funct_1(X9,esk4_2(X9,X10))
        | r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( ~ r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))
        | esk4_2(X9,X10) != k1_funct_1(X10,esk3_2(X9,X10))
        | r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))
        | esk2_2(X9,X10) = k1_funct_1(X10,esk1_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( esk3_2(X9,X10) = k1_funct_1(X9,esk4_2(X9,X10))
        | esk2_2(X9,X10) = k1_funct_1(X10,esk1_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( ~ r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))
        | esk4_2(X9,X10) != k1_funct_1(X10,esk3_2(X9,X10))
        | esk2_2(X9,X10) = k1_funct_1(X10,esk1_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))
        | ~ r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))
        | esk1_2(X9,X10) != k1_funct_1(X9,esk2_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( esk3_2(X9,X10) = k1_funct_1(X9,esk4_2(X9,X10))
        | ~ r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))
        | esk1_2(X9,X10) != k1_funct_1(X9,esk2_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( ~ r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))
        | esk4_2(X9,X10) != k1_funct_1(X10,esk3_2(X9,X10))
        | ~ r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))
        | esk1_2(X9,X10) != k1_funct_1(X9,esk2_2(X9,X10))
        | k1_relat_1(X10) != k2_relat_1(X9)
        | X10 = k2_funct_1(X9)
        | ~ v1_relat_1(X10)
        | ~ v1_funct_1(X10)
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t54_funct_1])])])])])])).

fof(c_0_5,plain,(
    ! [X5] :
      ( ( v1_relat_1(k2_funct_1(X5))
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) )
      & ( v1_funct_1(k2_funct_1(X5))
        | ~ v1_relat_1(X5)
        | ~ v1_funct_1(X5) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_relat_1(X2)
          & v1_funct_1(X2) )
       => ( ( v2_funct_1(X2)
            & r2_hidden(X1,k1_relat_1(X2)) )
         => ( X1 = k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))
            & X1 = k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1) ) ) ) ),
    inference(assume_negation,[status(cth)],[t56_funct_1])).

cnf(c_0_7,plain,
    ( X1 = k1_funct_1(X2,X3)
    | ~ r2_hidden(X1,k1_relat_1(X4))
    | X3 != k1_funct_1(X4,X1)
    | X2 != k2_funct_1(X4)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X4)
    | ~ v1_relat_1(X4)
    | ~ v1_funct_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_4])).

cnf(c_0_8,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

fof(c_0_10,negated_conjecture,
    ( v1_relat_1(esk6_0)
    & v1_funct_1(esk6_0)
    & v2_funct_1(esk6_0)
    & r2_hidden(esk5_0,k1_relat_1(esk6_0))
    & ( esk5_0 != k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0))
      | esk5_0 != k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_11,plain,(
    ! [X6,X7,X8] :
      ( ~ v1_relat_1(X7)
      | ~ v1_funct_1(X7)
      | ~ v1_relat_1(X8)
      | ~ v1_funct_1(X8)
      | ~ r2_hidden(X6,k1_relat_1(X7))
      | k1_funct_1(k5_relat_1(X7,X8),X6) = k1_funct_1(X8,k1_funct_1(X7,X6)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_funct_1])])])).

cnf(c_0_12,plain,
    ( k1_funct_1(k2_funct_1(X1),k1_funct_1(X1,X2)) = X2
    | ~ v2_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_7])]),c_0_8]),c_0_9])).

cnf(c_0_13,negated_conjecture,
    ( r2_hidden(esk5_0,k1_relat_1(esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_14,negated_conjecture,
    ( v2_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k1_funct_1(k5_relat_1(X1,X2),X3) = k1_funct_1(X2,k1_funct_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ r2_hidden(X3,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( esk5_0 != k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0))
    | esk5_0 != k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_19,negated_conjecture,
    ( k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0)) = esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14]),c_0_15]),c_0_16])])).

cnf(c_0_20,negated_conjecture,
    ( k1_funct_1(k5_relat_1(esk6_0,X1),esk5_0) = k1_funct_1(X1,k1_funct_1(esk6_0,esk5_0))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_13]),c_0_15]),c_0_16])])).

cnf(c_0_21,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_15]),c_0_16])])).

cnf(c_0_22,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_15]),c_0_16])])).

cnf(c_0_23,negated_conjecture,
    ( k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0) != esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_18,c_0_19])])).

cnf(c_0_24,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_19]),c_0_22])]),c_0_23]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 13:43:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S2i
% 0.12/0.37  # and selection function SelectGrCQArEqFirst.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.028 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t54_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(X2=k2_funct_1(X1)<=>(k1_relat_1(X2)=k2_relat_1(X1)&![X3, X4]:(((r2_hidden(X3,k2_relat_1(X1))&X4=k1_funct_1(X2,X3))=>(r2_hidden(X4,k1_relat_1(X1))&X3=k1_funct_1(X1,X4)))&((r2_hidden(X4,k1_relat_1(X1))&X3=k1_funct_1(X1,X4))=>(r2_hidden(X3,k2_relat_1(X1))&X4=k1_funct_1(X2,X3))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t54_funct_1)).
% 0.12/0.37  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.12/0.37  fof(t56_funct_1, conjecture, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((v2_funct_1(X2)&r2_hidden(X1,k1_relat_1(X2)))=>(X1=k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))&X1=k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_funct_1)).
% 0.12/0.37  fof(t23_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>![X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(r2_hidden(X1,k1_relat_1(X2))=>k1_funct_1(k5_relat_1(X2,X3),X1)=k1_funct_1(X3,k1_funct_1(X2,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_funct_1)).
% 0.12/0.37  fof(c_0_4, plain, ![X9, X10, X11, X12, X13, X14]:(((k1_relat_1(X10)=k2_relat_1(X9)|X10!=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(((r2_hidden(X12,k1_relat_1(X9))|(~r2_hidden(X11,k2_relat_1(X9))|X12!=k1_funct_1(X10,X11))|X10!=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(X11=k1_funct_1(X9,X12)|(~r2_hidden(X11,k2_relat_1(X9))|X12!=k1_funct_1(X10,X11))|X10!=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))&((r2_hidden(X13,k2_relat_1(X9))|(~r2_hidden(X14,k1_relat_1(X9))|X13!=k1_funct_1(X9,X14))|X10!=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(X14=k1_funct_1(X10,X13)|(~r2_hidden(X14,k1_relat_1(X9))|X13!=k1_funct_1(X9,X14))|X10!=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))))&(((((r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))|r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(esk3_2(X9,X10)=k1_funct_1(X9,esk4_2(X9,X10))|r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))&(~r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))|esk4_2(X9,X10)!=k1_funct_1(X10,esk3_2(X9,X10))|r2_hidden(esk1_2(X9,X10),k2_relat_1(X9))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))&(((r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))|esk2_2(X9,X10)=k1_funct_1(X10,esk1_2(X9,X10))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(esk3_2(X9,X10)=k1_funct_1(X9,esk4_2(X9,X10))|esk2_2(X9,X10)=k1_funct_1(X10,esk1_2(X9,X10))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))&(~r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))|esk4_2(X9,X10)!=k1_funct_1(X10,esk3_2(X9,X10))|esk2_2(X9,X10)=k1_funct_1(X10,esk1_2(X9,X10))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))))&(((r2_hidden(esk4_2(X9,X10),k1_relat_1(X9))|(~r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))|esk1_2(X9,X10)!=k1_funct_1(X9,esk2_2(X9,X10)))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(esk3_2(X9,X10)=k1_funct_1(X9,esk4_2(X9,X10))|(~r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))|esk1_2(X9,X10)!=k1_funct_1(X9,esk2_2(X9,X10)))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9))))&(~r2_hidden(esk3_2(X9,X10),k2_relat_1(X9))|esk4_2(X9,X10)!=k1_funct_1(X10,esk3_2(X9,X10))|(~r2_hidden(esk2_2(X9,X10),k1_relat_1(X9))|esk1_2(X9,X10)!=k1_funct_1(X9,esk2_2(X9,X10)))|k1_relat_1(X10)!=k2_relat_1(X9)|X10=k2_funct_1(X9)|(~v1_relat_1(X10)|~v1_funct_1(X10))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t54_funct_1])])])])])])).
% 0.12/0.37  fof(c_0_5, plain, ![X5]:((v1_relat_1(k2_funct_1(X5))|(~v1_relat_1(X5)|~v1_funct_1(X5)))&(v1_funct_1(k2_funct_1(X5))|(~v1_relat_1(X5)|~v1_funct_1(X5)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.12/0.37  fof(c_0_6, negated_conjecture, ~(![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>((v2_funct_1(X2)&r2_hidden(X1,k1_relat_1(X2)))=>(X1=k1_funct_1(k2_funct_1(X2),k1_funct_1(X2,X1))&X1=k1_funct_1(k5_relat_1(X2,k2_funct_1(X2)),X1))))), inference(assume_negation,[status(cth)],[t56_funct_1])).
% 0.12/0.37  cnf(c_0_7, plain, (X1=k1_funct_1(X2,X3)|~r2_hidden(X1,k1_relat_1(X4))|X3!=k1_funct_1(X4,X1)|X2!=k2_funct_1(X4)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X4)|~v1_relat_1(X4)|~v1_funct_1(X4)), inference(split_conjunct,[status(thm)],[c_0_4])).
% 0.12/0.37  cnf(c_0_8, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.12/0.37  cnf(c_0_9, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.12/0.37  fof(c_0_10, negated_conjecture, ((v1_relat_1(esk6_0)&v1_funct_1(esk6_0))&((v2_funct_1(esk6_0)&r2_hidden(esk5_0,k1_relat_1(esk6_0)))&(esk5_0!=k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0))|esk5_0!=k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.12/0.37  fof(c_0_11, plain, ![X6, X7, X8]:(~v1_relat_1(X7)|~v1_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8)|(~r2_hidden(X6,k1_relat_1(X7))|k1_funct_1(k5_relat_1(X7,X8),X6)=k1_funct_1(X8,k1_funct_1(X7,X6))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t23_funct_1])])])).
% 0.12/0.37  cnf(c_0_12, plain, (k1_funct_1(k2_funct_1(X1),k1_funct_1(X1,X2))=X2|~v2_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_7])]), c_0_8]), c_0_9])).
% 0.12/0.37  cnf(c_0_13, negated_conjecture, (r2_hidden(esk5_0,k1_relat_1(esk6_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_14, negated_conjecture, (v2_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_15, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_16, negated_conjecture, (v1_relat_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_17, plain, (k1_funct_1(k5_relat_1(X1,X2),X3)=k1_funct_1(X2,k1_funct_1(X1,X3))|~v1_relat_1(X1)|~v1_funct_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~r2_hidden(X3,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.37  cnf(c_0_18, negated_conjecture, (esk5_0!=k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0))|esk5_0!=k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_19, negated_conjecture, (k1_funct_1(k2_funct_1(esk6_0),k1_funct_1(esk6_0,esk5_0))=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14]), c_0_15]), c_0_16])])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (k1_funct_1(k5_relat_1(esk6_0,X1),esk5_0)=k1_funct_1(X1,k1_funct_1(esk6_0,esk5_0))|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_13]), c_0_15]), c_0_16])])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (v1_funct_1(k2_funct_1(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_15]), c_0_16])])).
% 0.12/0.37  cnf(c_0_22, negated_conjecture, (v1_relat_1(k2_funct_1(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_15]), c_0_16])])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (k1_funct_1(k5_relat_1(esk6_0,k2_funct_1(esk6_0)),esk5_0)!=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_18, c_0_19])])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_19]), c_0_22])]), c_0_23]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 25
% 0.12/0.37  # Proof object clause steps            : 16
% 0.12/0.37  # Proof object formula steps           : 9
% 0.12/0.37  # Proof object conjectures             : 14
% 0.12/0.37  # Proof object clause conjectures      : 11
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 9
% 0.12/0.37  # Proof object initial formulas used   : 4
% 0.12/0.37  # Proof object generating inferences   : 5
% 0.12/0.37  # Proof object simplifying inferences  : 21
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 4
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 22
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 22
% 0.12/0.37  # Processed clauses                    : 65
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 65
% 0.12/0.37  # Other redundant clauses eliminated   : 9
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 1
% 0.12/0.37  # Generated clauses                    : 46
% 0.12/0.37  # ...of the previous two non-trivial   : 41
% 0.12/0.37  # Contextual simplify-reflections      : 10
% 0.12/0.37  # Paramodulations                      : 41
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 9
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 37
% 0.12/0.37  #    Positive orientable unit clauses  : 19
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 1
% 0.12/0.37  #    Non-unit-clauses                  : 17
% 0.12/0.37  # Current number of unprocessed clauses: 19
% 0.12/0.37  # ...number of literals in the above   : 97
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 23
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 601
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 14
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 10
% 0.12/0.37  # Unit Clause-clause subsumption calls : 52
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 26
% 0.12/0.37  # BW rewrite match successes           : 1
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 3912
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.031 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.036 s
% 0.12/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
