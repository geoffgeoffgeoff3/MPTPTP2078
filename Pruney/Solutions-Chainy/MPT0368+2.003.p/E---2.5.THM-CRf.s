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
% DateTime   : Thu Dec  3 10:46:40 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   40 (  55 expanded)
%              Number of clauses        :   25 (  26 expanded)
%              Number of leaves         :    7 (  13 expanded)
%              Depth                    :    8
%              Number of atoms          :  126 ( 198 expanded)
%              Number of equality atoms :   20 (  31 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t49_subset_1,conjecture,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( ! [X3] :
            ( m1_subset_1(X3,X1)
           => r2_hidden(X3,X2) )
       => X1 = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_subset_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_subset_1)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t6_xboole_0,axiom,(
    ! [X1,X2] :
      ~ ( r2_xboole_0(X1,X2)
        & ! [X3] :
            ~ ( r2_hidden(X3,X2)
              & ~ r2_hidden(X3,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t6_xboole_0)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_xboole_0)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(X1))
       => ( ! [X3] :
              ( m1_subset_1(X3,X1)
             => r2_hidden(X3,X2) )
         => X1 = X2 ) ) ),
    inference(assume_negation,[status(cth)],[t49_subset_1])).

fof(c_0_8,plain,(
    ! [X22,X23] :
      ( ( ~ m1_subset_1(X23,X22)
        | r2_hidden(X23,X22)
        | v1_xboole_0(X22) )
      & ( ~ r2_hidden(X23,X22)
        | m1_subset_1(X23,X22)
        | v1_xboole_0(X22) )
      & ( ~ m1_subset_1(X23,X22)
        | v1_xboole_0(X23)
        | ~ v1_xboole_0(X22) )
      & ( ~ v1_xboole_0(X23)
        | m1_subset_1(X23,X22)
        | ~ v1_xboole_0(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

fof(c_0_9,plain,(
    ! [X4,X5,X6] :
      ( ( ~ v1_xboole_0(X4)
        | ~ r2_hidden(X5,X4) )
      & ( r2_hidden(esk1_1(X6),X6)
        | v1_xboole_0(X6) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_10,plain,(
    ! [X15,X16,X17,X18,X19,X20] :
      ( ( ~ r2_hidden(X17,X16)
        | r1_tarski(X17,X15)
        | X16 != k1_zfmisc_1(X15) )
      & ( ~ r1_tarski(X18,X15)
        | r2_hidden(X18,X16)
        | X16 != k1_zfmisc_1(X15) )
      & ( ~ r2_hidden(esk3_2(X19,X20),X20)
        | ~ r1_tarski(esk3_2(X19,X20),X19)
        | X20 = k1_zfmisc_1(X19) )
      & ( r2_hidden(esk3_2(X19,X20),X20)
        | r1_tarski(esk3_2(X19,X20),X19)
        | X20 = k1_zfmisc_1(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_11,negated_conjecture,(
    ! [X26] :
      ( m1_subset_1(esk5_0,k1_zfmisc_1(esk4_0))
      & ( ~ m1_subset_1(X26,esk4_0)
        | r2_hidden(X26,esk5_0) )
      & esk4_0 != esk5_0 ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).

cnf(c_0_12,plain,
    ( m1_subset_1(X1,X2)
    | v1_xboole_0(X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( ~ v1_xboole_0(X1)
    | ~ r2_hidden(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( r2_hidden(X1,X3)
    | ~ r1_tarski(X1,X2)
    | X3 != k1_zfmisc_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,plain,(
    ! [X10,X11] :
      ( ( r2_hidden(esk2_2(X10,X11),X11)
        | ~ r2_xboole_0(X10,X11) )
      & ( ~ r2_hidden(esk2_2(X10,X11),X10)
        | ~ r2_xboole_0(X10,X11) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t6_xboole_0])])])])])).

cnf(c_0_16,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ m1_subset_1(X1,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(csr,[status(thm)],[c_0_12,c_0_13])).

cnf(c_0_18,plain,
    ( r2_hidden(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(er,[status(thm)],[c_0_14])).

cnf(c_0_19,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_21,plain,(
    ! [X13,X14] :
      ( ( r1_tarski(X13,X14)
        | X13 != X14 )
      & ( r1_tarski(X14,X13)
        | X13 != X14 )
      & ( ~ r1_tarski(X13,X14)
        | ~ r1_tarski(X14,X13)
        | X13 = X14 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_22,plain,
    ( ~ r2_hidden(esk2_2(X1,X2),X1)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ r2_hidden(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_24,plain,
    ( ~ r1_tarski(X1,X2)
    | ~ v1_xboole_0(k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_13,c_0_18])).

cnf(c_0_25,negated_conjecture,
    ( r2_hidden(esk5_0,k1_zfmisc_1(esk4_0))
    | v1_xboole_0(k1_zfmisc_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_26,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( ~ r2_xboole_0(esk5_0,X1)
    | ~ r2_hidden(esk2_2(esk5_0,X1),esk4_0) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_28,plain,
    ( r2_hidden(esk2_2(X1,X2),X2)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_29,plain,(
    ! [X8,X9] :
      ( ( r1_tarski(X8,X9)
        | ~ r2_xboole_0(X8,X9) )
      & ( X8 != X9
        | ~ r2_xboole_0(X8,X9) )
      & ( ~ r1_tarski(X8,X9)
        | X8 = X9
        | r2_xboole_0(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

cnf(c_0_30,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(esk5_0,k1_zfmisc_1(esk4_0))
    | ~ r1_tarski(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( ~ r2_xboole_0(esk5_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_34,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( esk4_0 != esk5_0 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_30])).

cnf(c_0_37,negated_conjecture,
    ( r2_hidden(esk5_0,k1_zfmisc_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_38,negated_conjecture,
    ( ~ r1_tarski(esk5_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_35])).

cnf(c_0_39,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_38]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n001.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:13:45 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.14/0.37  # AutoSched0-Mode selected heuristic G_E___300_C18_F1_SE_CS_SP_S0Y
% 0.14/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.14/0.37  #
% 0.14/0.37  # Preprocessing time       : 0.028 s
% 0.14/0.37  
% 0.14/0.37  # Proof found!
% 0.14/0.37  # SZS status Theorem
% 0.14/0.37  # SZS output start CNFRefutation
% 0.14/0.37  fof(t49_subset_1, conjecture, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(![X3]:(m1_subset_1(X3,X1)=>r2_hidden(X3,X2))=>X1=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t49_subset_1)).
% 0.14/0.37  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_subset_1)).
% 0.14/0.37  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.14/0.37  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.14/0.37  fof(t6_xboole_0, axiom, ![X1, X2]:~((r2_xboole_0(X1,X2)&![X3]:~((r2_hidden(X3,X2)&~(r2_hidden(X3,X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t6_xboole_0)).
% 0.14/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.14/0.37  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.14/0.37  fof(c_0_7, negated_conjecture, ~(![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(![X3]:(m1_subset_1(X3,X1)=>r2_hidden(X3,X2))=>X1=X2))), inference(assume_negation,[status(cth)],[t49_subset_1])).
% 0.14/0.37  fof(c_0_8, plain, ![X22, X23]:(((~m1_subset_1(X23,X22)|r2_hidden(X23,X22)|v1_xboole_0(X22))&(~r2_hidden(X23,X22)|m1_subset_1(X23,X22)|v1_xboole_0(X22)))&((~m1_subset_1(X23,X22)|v1_xboole_0(X23)|~v1_xboole_0(X22))&(~v1_xboole_0(X23)|m1_subset_1(X23,X22)|~v1_xboole_0(X22)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.14/0.37  fof(c_0_9, plain, ![X4, X5, X6]:((~v1_xboole_0(X4)|~r2_hidden(X5,X4))&(r2_hidden(esk1_1(X6),X6)|v1_xboole_0(X6))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.14/0.37  fof(c_0_10, plain, ![X15, X16, X17, X18, X19, X20]:(((~r2_hidden(X17,X16)|r1_tarski(X17,X15)|X16!=k1_zfmisc_1(X15))&(~r1_tarski(X18,X15)|r2_hidden(X18,X16)|X16!=k1_zfmisc_1(X15)))&((~r2_hidden(esk3_2(X19,X20),X20)|~r1_tarski(esk3_2(X19,X20),X19)|X20=k1_zfmisc_1(X19))&(r2_hidden(esk3_2(X19,X20),X20)|r1_tarski(esk3_2(X19,X20),X19)|X20=k1_zfmisc_1(X19)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.14/0.37  fof(c_0_11, negated_conjecture, ![X26]:(m1_subset_1(esk5_0,k1_zfmisc_1(esk4_0))&((~m1_subset_1(X26,esk4_0)|r2_hidden(X26,esk5_0))&esk4_0!=esk5_0)), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])).
% 0.14/0.37  cnf(c_0_12, plain, (m1_subset_1(X1,X2)|v1_xboole_0(X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.37  cnf(c_0_13, plain, (~v1_xboole_0(X1)|~r2_hidden(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.14/0.37  cnf(c_0_14, plain, (r2_hidden(X1,X3)|~r1_tarski(X1,X2)|X3!=k1_zfmisc_1(X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.37  fof(c_0_15, plain, ![X10, X11]:((r2_hidden(esk2_2(X10,X11),X11)|~r2_xboole_0(X10,X11))&(~r2_hidden(esk2_2(X10,X11),X10)|~r2_xboole_0(X10,X11))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t6_xboole_0])])])])])).
% 0.14/0.37  cnf(c_0_16, negated_conjecture, (r2_hidden(X1,esk5_0)|~m1_subset_1(X1,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.37  cnf(c_0_17, plain, (m1_subset_1(X1,X2)|~r2_hidden(X1,X2)), inference(csr,[status(thm)],[c_0_12, c_0_13])).
% 0.14/0.37  cnf(c_0_18, plain, (r2_hidden(X1,k1_zfmisc_1(X2))|~r1_tarski(X1,X2)), inference(er,[status(thm)],[c_0_14])).
% 0.14/0.37  cnf(c_0_19, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.14/0.37  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.37  fof(c_0_21, plain, ![X13, X14]:(((r1_tarski(X13,X14)|X13!=X14)&(r1_tarski(X14,X13)|X13!=X14))&(~r1_tarski(X13,X14)|~r1_tarski(X14,X13)|X13=X14)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.14/0.37  cnf(c_0_22, plain, (~r2_hidden(esk2_2(X1,X2),X1)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  cnf(c_0_23, negated_conjecture, (r2_hidden(X1,esk5_0)|~r2_hidden(X1,esk4_0)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.14/0.37  cnf(c_0_24, plain, (~r1_tarski(X1,X2)|~v1_xboole_0(k1_zfmisc_1(X2))), inference(spm,[status(thm)],[c_0_13, c_0_18])).
% 0.14/0.37  cnf(c_0_25, negated_conjecture, (r2_hidden(esk5_0,k1_zfmisc_1(esk4_0))|v1_xboole_0(k1_zfmisc_1(esk4_0))), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.14/0.37  cnf(c_0_26, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.14/0.37  cnf(c_0_27, negated_conjecture, (~r2_xboole_0(esk5_0,X1)|~r2_hidden(esk2_2(esk5_0,X1),esk4_0)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.14/0.37  cnf(c_0_28, plain, (r2_hidden(esk2_2(X1,X2),X2)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.37  fof(c_0_29, plain, ![X8, X9]:(((r1_tarski(X8,X9)|~r2_xboole_0(X8,X9))&(X8!=X9|~r2_xboole_0(X8,X9)))&(~r1_tarski(X8,X9)|X8=X9|r2_xboole_0(X8,X9))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.14/0.37  cnf(c_0_30, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.14/0.37  cnf(c_0_31, negated_conjecture, (r2_hidden(esk5_0,k1_zfmisc_1(esk4_0))|~r1_tarski(X1,esk4_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.14/0.37  cnf(c_0_32, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_26])).
% 0.14/0.37  cnf(c_0_33, negated_conjecture, (~r2_xboole_0(esk5_0,esk4_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.14/0.37  cnf(c_0_34, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.14/0.37  cnf(c_0_35, negated_conjecture, (esk4_0!=esk5_0), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.14/0.37  cnf(c_0_36, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_30])).
% 0.14/0.37  cnf(c_0_37, negated_conjecture, (r2_hidden(esk5_0,k1_zfmisc_1(esk4_0))), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.14/0.37  cnf(c_0_38, negated_conjecture, (~r1_tarski(esk5_0,esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_35])).
% 0.14/0.37  cnf(c_0_39, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_38]), ['proof']).
% 0.14/0.37  # SZS output end CNFRefutation
% 0.14/0.37  # Proof object total steps             : 40
% 0.14/0.37  # Proof object clause steps            : 25
% 0.14/0.37  # Proof object formula steps           : 15
% 0.14/0.37  # Proof object conjectures             : 14
% 0.14/0.37  # Proof object clause conjectures      : 11
% 0.14/0.37  # Proof object formula conjectures     : 3
% 0.14/0.37  # Proof object initial clauses used    : 12
% 0.14/0.37  # Proof object initial formulas used   : 7
% 0.14/0.37  # Proof object generating inferences   : 9
% 0.14/0.37  # Proof object simplifying inferences  : 6
% 0.14/0.37  # Training examples: 0 positive, 0 negative
% 0.14/0.37  # Parsed axioms                        : 7
% 0.14/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.37  # Initial clauses                      : 21
% 0.14/0.37  # Removed in clause preprocessing      : 0
% 0.14/0.37  # Initial clauses in saturation        : 21
% 0.14/0.37  # Processed clauses                    : 47
% 0.14/0.37  # ...of these trivial                  : 0
% 0.14/0.37  # ...subsumed                          : 3
% 0.14/0.37  # ...remaining for further processing  : 44
% 0.14/0.37  # Other redundant clauses eliminated   : 5
% 0.14/0.37  # Clauses deleted for lack of memory   : 0
% 0.14/0.37  # Backward-subsumed                    : 1
% 0.14/0.37  # Backward-rewritten                   : 2
% 0.14/0.37  # Generated clauses                    : 43
% 0.14/0.37  # ...of the previous two non-trivial   : 29
% 0.14/0.37  # Contextual simplify-reflections      : 1
% 0.14/0.37  # Paramodulations                      : 38
% 0.14/0.37  # Factorizations                       : 0
% 0.14/0.37  # Equation resolutions                 : 5
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
% 0.14/0.37  # Current number of processed clauses  : 36
% 0.14/0.37  #    Positive orientable unit clauses  : 3
% 0.14/0.37  #    Positive unorientable unit clauses: 0
% 0.14/0.37  #    Negative unit clauses             : 5
% 0.14/0.37  #    Non-unit-clauses                  : 28
% 0.14/0.37  # Current number of unprocessed clauses: 3
% 0.14/0.37  # ...number of literals in the above   : 11
% 0.14/0.37  # Current number of archived formulas  : 0
% 0.14/0.37  # Current number of archived clauses   : 3
% 0.14/0.37  # Clause-clause subsumption calls (NU) : 37
% 0.14/0.37  # Rec. Clause-clause subsumption calls : 27
% 0.14/0.37  # Non-unit clause-clause subsumptions  : 3
% 0.14/0.37  # Unit Clause-clause subsumption calls : 4
% 0.14/0.37  # Rewrite failures with RHS unbound    : 0
% 0.14/0.37  # BW rewrite match attempts            : 1
% 0.14/0.37  # BW rewrite match successes           : 1
% 0.14/0.37  # Condensation attempts                : 0
% 0.14/0.37  # Condensation successes               : 0
% 0.14/0.37  # Termbank termtop insertions          : 1615
% 0.14/0.37  
% 0.14/0.37  # -------------------------------------------------
% 0.14/0.37  # User time                : 0.026 s
% 0.14/0.37  # System time              : 0.007 s
% 0.14/0.37  # Total time               : 0.033 s
% 0.14/0.37  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
