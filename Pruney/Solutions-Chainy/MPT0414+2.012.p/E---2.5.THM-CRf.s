%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:47:36 EST 2020

% Result     : Theorem 0.22s
% Output     : CNFRefutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   53 ( 402 expanded)
%              Number of clauses        :   36 ( 177 expanded)
%              Number of leaves         :    8 (  96 expanded)
%              Depth                    :   13
%              Number of atoms          :  140 (1535 expanded)
%              Number of equality atoms :   18 ( 201 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t44_setfam_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))
         => ( ! [X4] :
                ( m1_subset_1(X4,k1_zfmisc_1(X1))
               => ( r2_hidden(X4,X2)
                <=> r2_hidden(X4,X3) ) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_setfam_1)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_subset)).

fof(t49_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( ! [X3] :
            ( m1_subset_1(X3,X1)
           => r2_hidden(X3,X2) )
       => X1 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_subset_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_0)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tarski)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))
       => ! [X3] :
            ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))
           => ( ! [X4] :
                  ( m1_subset_1(X4,k1_zfmisc_1(X1))
                 => ( r2_hidden(X4,X2)
                  <=> r2_hidden(X4,X3) ) )
             => X2 = X3 ) ) ) ),
    inference(assume_negation,[status(cth)],[t44_setfam_1])).

fof(c_0_9,plain,(
    ! [X24,X25,X26] :
      ( ~ r2_hidden(X24,X25)
      | ~ m1_subset_1(X25,k1_zfmisc_1(X26))
      | m1_subset_1(X24,X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

fof(c_0_10,negated_conjecture,(
    ! [X30] :
      ( m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))
      & m1_subset_1(esk7_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))
      & ( ~ r2_hidden(X30,esk6_0)
        | r2_hidden(X30,esk7_0)
        | ~ m1_subset_1(X30,k1_zfmisc_1(esk5_0)) )
      & ( ~ r2_hidden(X30,esk7_0)
        | r2_hidden(X30,esk6_0)
        | ~ m1_subset_1(X30,k1_zfmisc_1(esk5_0)) )
      & esk6_0 != esk7_0 ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])])).

cnf(c_0_11,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_13,plain,(
    ! [X17,X18] :
      ( ( m1_subset_1(esk4_2(X17,X18),X17)
        | X17 = X18
        | ~ m1_subset_1(X18,k1_zfmisc_1(X17)) )
      & ( ~ r2_hidden(esk4_2(X17,X18),X18)
        | X17 = X18
        | ~ m1_subset_1(X18,k1_zfmisc_1(X17)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t49_subset_1])])])])).

cnf(c_0_14,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ r2_hidden(X1,esk7_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(esk5_0))
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_11,c_0_12])).

fof(c_0_16,plain,(
    ! [X20,X21] :
      ( ~ m1_subset_1(X20,X21)
      | v1_xboole_0(X21)
      | r2_hidden(X20,X21) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_18,plain,(
    ! [X5,X6,X7] :
      ( ( ~ v1_xboole_0(X5)
        | ~ r2_hidden(X6,X5) )
      & ( r2_hidden(esk1_1(X7),X7)
        | v1_xboole_0(X7) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_19,plain,(
    ! [X15] :
      ( X15 = k1_xboole_0
      | r2_hidden(esk3_1(X15),X15) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

cnf(c_0_20,plain,
    ( X1 = X2
    | ~ r2_hidden(esk4_2(X1,X2),X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ r2_hidden(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_22,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( m1_subset_1(esk4_2(X1,X2),X1)
    | X1 = X2
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_24,negated_conjecture,
    ( r2_hidden(X1,esk7_0)
    | ~ r2_hidden(X1,esk6_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(esk5_0))
    | ~ r2_hidden(X1,esk6_0) ),
    inference(spm,[status(thm)],[c_0_11,c_0_17])).

fof(c_0_26,plain,(
    ! [X9,X10,X11,X12,X13] :
      ( ( ~ r1_tarski(X9,X10)
        | ~ r2_hidden(X11,X9)
        | r2_hidden(X11,X10) )
      & ( r2_hidden(esk2_2(X12,X13),X12)
        | r1_tarski(X12,X13) )
      & ( ~ r2_hidden(esk2_2(X12,X13),X13)
        | r1_tarski(X12,X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_27,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_28,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk3_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_29,negated_conjecture,
    ( X1 = esk6_0
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(X1))
    | ~ r2_hidden(esk4_2(X1,esk6_0),esk7_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_30,plain,
    ( X1 = X2
    | r2_hidden(esk4_2(X1,X2),X1)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( esk6_0 != esk7_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(X1,esk7_0)
    | ~ r2_hidden(X1,esk6_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_33,plain,
    ( r2_hidden(esk2_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_34,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_35,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_36,negated_conjecture,
    ( v1_xboole_0(esk7_0)
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(esk7_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])).

fof(c_0_37,plain,(
    ! [X22,X23] :
      ( ( ~ m1_subset_1(X22,k1_zfmisc_1(X23))
        | r1_tarski(X22,X23) )
      & ( ~ r1_tarski(X22,X23)
        | m1_subset_1(X22,k1_zfmisc_1(X23)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

cnf(c_0_38,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk2_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_39,negated_conjecture,
    ( r1_tarski(esk6_0,X1)
    | r2_hidden(esk2_2(esk6_0,X1),esk7_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk1_1(esk6_0),esk7_0)
    | v1_xboole_0(esk6_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_34])).

cnf(c_0_41,negated_conjecture,
    ( esk7_0 = k1_xboole_0
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(esk7_0)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_43,negated_conjecture,
    ( r1_tarski(esk6_0,esk7_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( v1_xboole_0(esk6_0)
    | ~ v1_xboole_0(esk7_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_40])).

cnf(c_0_45,negated_conjecture,
    ( esk7_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43])])).

cnf(c_0_46,negated_conjecture,
    ( v1_xboole_0(esk6_0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_47,negated_conjecture,
    ( esk6_0 != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_31,c_0_45])).

cnf(c_0_48,negated_conjecture,
    ( ~ v1_xboole_0(k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_46]),c_0_47])).

cnf(c_0_49,negated_conjecture,
    ( v1_xboole_0(k1_xboole_0)
    | ~ m1_subset_1(esk6_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_45]),c_0_45])).

cnf(c_0_50,negated_conjecture,
    ( ~ m1_subset_1(esk6_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(esk6_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_43,c_0_45])).

cnf(c_0_52,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_42]),c_0_51])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n022.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:52:11 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.22/0.40  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.22/0.40  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.22/0.40  #
% 0.22/0.40  # Preprocessing time       : 0.027 s
% 0.22/0.40  
% 0.22/0.40  # Proof found!
% 0.22/0.40  # SZS status Theorem
% 0.22/0.40  # SZS output start CNFRefutation
% 0.22/0.40  fof(t44_setfam_1, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))=>(![X4]:(m1_subset_1(X4,k1_zfmisc_1(X1))=>(r2_hidden(X4,X2)<=>r2_hidden(X4,X3)))=>X2=X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_setfam_1)).
% 0.22/0.40  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t4_subset)).
% 0.22/0.40  fof(t49_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(![X3]:(m1_subset_1(X3,X1)=>r2_hidden(X3,X2))=>X1=X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t49_subset_1)).
% 0.22/0.40  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.22/0.40  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.22/0.40  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.22/0.40  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tarski)).
% 0.22/0.40  fof(t3_subset, axiom, ![X1, X2]:(m1_subset_1(X1,k1_zfmisc_1(X2))<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 0.22/0.40  fof(c_0_8, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(X1)))=>(![X4]:(m1_subset_1(X4,k1_zfmisc_1(X1))=>(r2_hidden(X4,X2)<=>r2_hidden(X4,X3)))=>X2=X3)))), inference(assume_negation,[status(cth)],[t44_setfam_1])).
% 0.22/0.40  fof(c_0_9, plain, ![X24, X25, X26]:(~r2_hidden(X24,X25)|~m1_subset_1(X25,k1_zfmisc_1(X26))|m1_subset_1(X24,X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.22/0.40  fof(c_0_10, negated_conjecture, ![X30]:(m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))&(m1_subset_1(esk7_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))&(((~r2_hidden(X30,esk6_0)|r2_hidden(X30,esk7_0)|~m1_subset_1(X30,k1_zfmisc_1(esk5_0)))&(~r2_hidden(X30,esk7_0)|r2_hidden(X30,esk6_0)|~m1_subset_1(X30,k1_zfmisc_1(esk5_0))))&esk6_0!=esk7_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])])).
% 0.22/0.40  cnf(c_0_11, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.22/0.40  cnf(c_0_12, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.40  fof(c_0_13, plain, ![X17, X18]:((m1_subset_1(esk4_2(X17,X18),X17)|X17=X18|~m1_subset_1(X18,k1_zfmisc_1(X17)))&(~r2_hidden(esk4_2(X17,X18),X18)|X17=X18|~m1_subset_1(X18,k1_zfmisc_1(X17)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t49_subset_1])])])])).
% 0.22/0.40  cnf(c_0_14, negated_conjecture, (r2_hidden(X1,esk6_0)|~r2_hidden(X1,esk7_0)|~m1_subset_1(X1,k1_zfmisc_1(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.40  cnf(c_0_15, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(esk5_0))|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_11, c_0_12])).
% 0.22/0.40  fof(c_0_16, plain, ![X20, X21]:(~m1_subset_1(X20,X21)|(v1_xboole_0(X21)|r2_hidden(X20,X21))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.22/0.40  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.40  fof(c_0_18, plain, ![X5, X6, X7]:((~v1_xboole_0(X5)|~r2_hidden(X6,X5))&(r2_hidden(esk1_1(X7),X7)|v1_xboole_0(X7))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.22/0.40  fof(c_0_19, plain, ![X15]:(X15=k1_xboole_0|r2_hidden(esk3_1(X15),X15)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.22/0.40  cnf(c_0_20, plain, (X1=X2|~r2_hidden(esk4_2(X1,X2),X2)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.22/0.40  cnf(c_0_21, negated_conjecture, (r2_hidden(X1,esk6_0)|~r2_hidden(X1,esk7_0)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.22/0.40  cnf(c_0_22, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.22/0.40  cnf(c_0_23, plain, (m1_subset_1(esk4_2(X1,X2),X1)|X1=X2|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.22/0.40  cnf(c_0_24, negated_conjecture, (r2_hidden(X1,esk7_0)|~r2_hidden(X1,esk6_0)|~m1_subset_1(X1,k1_zfmisc_1(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.40  cnf(c_0_25, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(esk5_0))|~r2_hidden(X1,esk6_0)), inference(spm,[status(thm)],[c_0_11, c_0_17])).
% 0.22/0.40  fof(c_0_26, plain, ![X9, X10, X11, X12, X13]:((~r1_tarski(X9,X10)|(~r2_hidden(X11,X9)|r2_hidden(X11,X10)))&((r2_hidden(esk2_2(X12,X13),X12)|r1_tarski(X12,X13))&(~r2_hidden(esk2_2(X12,X13),X13)|r1_tarski(X12,X13)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.22/0.40  cnf(c_0_27, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.22/0.40  cnf(c_0_28, plain, (X1=k1_xboole_0|r2_hidden(esk3_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.22/0.40  cnf(c_0_29, negated_conjecture, (X1=esk6_0|~m1_subset_1(esk6_0,k1_zfmisc_1(X1))|~r2_hidden(esk4_2(X1,esk6_0),esk7_0)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.22/0.40  cnf(c_0_30, plain, (X1=X2|r2_hidden(esk4_2(X1,X2),X1)|v1_xboole_0(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.22/0.40  cnf(c_0_31, negated_conjecture, (esk6_0!=esk7_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.22/0.40  cnf(c_0_32, negated_conjecture, (r2_hidden(X1,esk7_0)|~r2_hidden(X1,esk6_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.22/0.40  cnf(c_0_33, plain, (r2_hidden(esk2_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.22/0.40  cnf(c_0_34, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.22/0.40  cnf(c_0_35, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.22/0.40  cnf(c_0_36, negated_conjecture, (v1_xboole_0(esk7_0)|~m1_subset_1(esk6_0,k1_zfmisc_1(esk7_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31])).
% 0.22/0.40  fof(c_0_37, plain, ![X22, X23]:((~m1_subset_1(X22,k1_zfmisc_1(X23))|r1_tarski(X22,X23))&(~r1_tarski(X22,X23)|m1_subset_1(X22,k1_zfmisc_1(X23)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).
% 0.22/0.40  cnf(c_0_38, plain, (r1_tarski(X1,X2)|~r2_hidden(esk2_2(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.22/0.40  cnf(c_0_39, negated_conjecture, (r1_tarski(esk6_0,X1)|r2_hidden(esk2_2(esk6_0,X1),esk7_0)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.22/0.40  cnf(c_0_40, negated_conjecture, (r2_hidden(esk1_1(esk6_0),esk7_0)|v1_xboole_0(esk6_0)), inference(spm,[status(thm)],[c_0_32, c_0_34])).
% 0.22/0.40  cnf(c_0_41, negated_conjecture, (esk7_0=k1_xboole_0|~m1_subset_1(esk6_0,k1_zfmisc_1(esk7_0))), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.22/0.40  cnf(c_0_42, plain, (m1_subset_1(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.22/0.40  cnf(c_0_43, negated_conjecture, (r1_tarski(esk6_0,esk7_0)), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.22/0.40  cnf(c_0_44, negated_conjecture, (v1_xboole_0(esk6_0)|~v1_xboole_0(esk7_0)), inference(spm,[status(thm)],[c_0_27, c_0_40])).
% 0.22/0.40  cnf(c_0_45, negated_conjecture, (esk7_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43])])).
% 0.22/0.40  cnf(c_0_46, negated_conjecture, (v1_xboole_0(esk6_0)|~v1_xboole_0(k1_xboole_0)), inference(rw,[status(thm)],[c_0_44, c_0_45])).
% 0.22/0.40  cnf(c_0_47, negated_conjecture, (esk6_0!=k1_xboole_0), inference(rw,[status(thm)],[c_0_31, c_0_45])).
% 0.22/0.40  cnf(c_0_48, negated_conjecture, (~v1_xboole_0(k1_xboole_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_46]), c_0_47])).
% 0.22/0.40  cnf(c_0_49, negated_conjecture, (v1_xboole_0(k1_xboole_0)|~m1_subset_1(esk6_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_45]), c_0_45])).
% 0.22/0.40  cnf(c_0_50, negated_conjecture, (~m1_subset_1(esk6_0,k1_zfmisc_1(k1_xboole_0))), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.22/0.40  cnf(c_0_51, negated_conjecture, (r1_tarski(esk6_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_43, c_0_45])).
% 0.22/0.40  cnf(c_0_52, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_42]), c_0_51])]), ['proof']).
% 0.22/0.40  # SZS output end CNFRefutation
% 0.22/0.40  # Proof object total steps             : 53
% 0.22/0.40  # Proof object clause steps            : 36
% 0.22/0.40  # Proof object formula steps           : 17
% 0.22/0.40  # Proof object conjectures             : 27
% 0.22/0.40  # Proof object clause conjectures      : 24
% 0.22/0.40  # Proof object formula conjectures     : 3
% 0.22/0.40  # Proof object initial clauses used    : 15
% 0.22/0.40  # Proof object initial formulas used   : 8
% 0.22/0.40  # Proof object generating inferences   : 17
% 0.22/0.40  # Proof object simplifying inferences  : 11
% 0.22/0.40  # Training examples: 0 positive, 0 negative
% 0.22/0.40  # Parsed axioms                        : 8
% 0.22/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.22/0.40  # Initial clauses                      : 17
% 0.22/0.40  # Removed in clause preprocessing      : 0
% 0.22/0.40  # Initial clauses in saturation        : 17
% 0.22/0.40  # Processed clauses                    : 283
% 0.22/0.40  # ...of these trivial                  : 1
% 0.22/0.40  # ...subsumed                          : 87
% 0.22/0.40  # ...remaining for further processing  : 195
% 0.22/0.40  # Other redundant clauses eliminated   : 0
% 0.22/0.40  # Clauses deleted for lack of memory   : 0
% 0.22/0.40  # Backward-subsumed                    : 13
% 0.22/0.40  # Backward-rewritten                   : 99
% 0.22/0.40  # Generated clauses                    : 484
% 0.22/0.40  # ...of the previous two non-trivial   : 547
% 0.22/0.40  # Contextual simplify-reflections      : 4
% 0.22/0.40  # Paramodulations                      : 481
% 0.22/0.40  # Factorizations                       : 0
% 0.22/0.40  # Equation resolutions                 : 0
% 0.22/0.40  # Propositional unsat checks           : 0
% 0.22/0.40  #    Propositional check models        : 0
% 0.22/0.40  #    Propositional check unsatisfiable : 0
% 0.22/0.40  #    Propositional clauses             : 0
% 0.22/0.40  #    Propositional clauses after purity: 0
% 0.22/0.40  #    Propositional unsat core size     : 0
% 0.22/0.40  #    Propositional preprocessing time  : 0.000
% 0.22/0.40  #    Propositional encoding time       : 0.000
% 0.22/0.40  #    Propositional solver time         : 0.000
% 0.22/0.40  #    Success case prop preproc time    : 0.000
% 0.22/0.40  #    Success case prop encoding time   : 0.000
% 0.22/0.40  #    Success case prop solver time     : 0.000
% 0.22/0.40  # Current number of processed clauses  : 80
% 0.22/0.40  #    Positive orientable unit clauses  : 9
% 0.22/0.40  #    Positive unorientable unit clauses: 0
% 0.22/0.40  #    Negative unit clauses             : 4
% 0.22/0.40  #    Non-unit-clauses                  : 67
% 0.22/0.40  # Current number of unprocessed clauses: 271
% 0.22/0.40  # ...number of literals in the above   : 891
% 0.22/0.40  # Current number of archived formulas  : 0
% 0.22/0.40  # Current number of archived clauses   : 115
% 0.22/0.40  # Clause-clause subsumption calls (NU) : 2219
% 0.22/0.40  # Rec. Clause-clause subsumption calls : 1789
% 0.22/0.40  # Non-unit clause-clause subsumptions  : 103
% 0.22/0.40  # Unit Clause-clause subsumption calls : 105
% 0.22/0.40  # Rewrite failures with RHS unbound    : 0
% 0.22/0.40  # BW rewrite match attempts            : 10
% 0.22/0.40  # BW rewrite match successes           : 2
% 0.22/0.40  # Condensation attempts                : 0
% 0.22/0.40  # Condensation successes               : 0
% 0.22/0.40  # Termbank termtop insertions          : 7028
% 0.22/0.40  
% 0.22/0.40  # -------------------------------------------------
% 0.22/0.40  # User time                : 0.044 s
% 0.22/0.40  # System time              : 0.004 s
% 0.22/0.40  # Total time               : 0.048 s
% 0.22/0.40  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
