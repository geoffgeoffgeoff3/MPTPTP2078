%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:06:51 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   48 ( 813 expanded)
%              Number of clauses        :   34 ( 324 expanded)
%              Number of leaves         :    7 ( 191 expanded)
%              Depth                    :   13
%              Number of atoms          :  141 (3710 expanded)
%              Number of equality atoms :   59 (1142 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t130_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( k1_relset_1(X1,X2,X3) = X1
       => ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t130_funct_2)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(d1_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
    <=> ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_xboole_0)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ( k1_relset_1(X1,X2,X3) = X1
         => ( v1_funct_1(X3)
            & v1_funct_2(X3,X1,X2)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ) ),
    inference(assume_negation,[status(cth)],[t130_funct_2])).

fof(c_0_8,negated_conjecture,
    ( v1_funct_1(esk4_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))
    & k1_relset_1(esk2_0,esk3_0,esk4_0) = esk2_0
    & ( ~ v1_funct_1(esk4_0)
      | ~ v1_funct_2(esk4_0,esk2_0,esk3_0)
      | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_9,plain,(
    ! [X11,X12,X13] :
      ( ~ r2_hidden(X11,X12)
      | ~ m1_subset_1(X12,k1_zfmisc_1(X13))
      | ~ v1_xboole_0(X13) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

fof(c_0_10,plain,(
    ! [X4,X5,X6] :
      ( ( ~ v1_xboole_0(X4)
        | ~ r2_hidden(X5,X4) )
      & ( r2_hidden(esk1_1(X6),X6)
        | v1_xboole_0(X6) ) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).

fof(c_0_11,plain,(
    ! [X14,X15,X16] :
      ( ( ~ v1_funct_2(X16,X14,X15)
        | X14 = k1_relset_1(X14,X15,X16)
        | X15 = k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X14 != k1_relset_1(X14,X15,X16)
        | v1_funct_2(X16,X14,X15)
        | X15 = k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ v1_funct_2(X16,X14,X15)
        | X14 = k1_relset_1(X14,X15,X16)
        | X14 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X14 != k1_relset_1(X14,X15,X16)
        | v1_funct_2(X16,X14,X15)
        | X14 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( ~ v1_funct_2(X16,X14,X15)
        | X16 = k1_xboole_0
        | X14 = k1_xboole_0
        | X15 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) )
      & ( X16 != k1_xboole_0
        | v1_funct_2(X16,X14,X15)
        | X14 = k1_xboole_0
        | X15 != k1_xboole_0
        | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_12,negated_conjecture,
    ( ~ v1_funct_1(esk4_0)
    | ~ v1_funct_2(esk4_0,esk2_0,esk3_0)
    | ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_15,plain,(
    ! [X9,X10] :
      ( ( k2_zfmisc_1(X9,X10) != k1_xboole_0
        | X9 = k1_xboole_0
        | X10 = k1_xboole_0 )
      & ( X9 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 )
      & ( X10 != k1_xboole_0
        | k2_zfmisc_1(X9,X10) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

cnf(c_0_16,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,plain,
    ( r2_hidden(esk1_1(X1),X1)
    | v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,negated_conjecture,
    ( k1_relset_1(esk2_0,esk3_0,esk4_0) = esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_20,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk2_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_12,c_0_13]),c_0_14])])).

cnf(c_0_21,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_23,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_24,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_14]),c_0_19])]),c_0_20])).

cnf(c_0_25,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_21])).

fof(c_0_26,plain,(
    ! [X8] :
      ( ~ v1_xboole_0(X8)
      | X8 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_27,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14,c_0_24]),c_0_25])).

cnf(c_0_29,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( v1_xboole_0(esk4_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_31,plain,
    ( v1_funct_2(X1,X2,X3)
    | X2 = k1_xboole_0
    | X1 != k1_xboole_0
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_32,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_33,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_34,negated_conjecture,
    ( ~ v1_funct_2(esk4_0,esk2_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_20,c_0_24])).

cnf(c_0_35,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0)
    | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_31])]),c_0_25])).

cnf(c_0_36,negated_conjecture,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[c_0_28,c_0_32])).

cnf(c_0_37,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_38,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_33])).

cnf(c_0_39,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_34,c_0_32])).

cnf(c_0_40,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(k1_xboole_0,X1,k1_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_36])])).

cnf(c_0_41,plain,
    ( v1_funct_2(X1,k1_xboole_0,X2)
    | k1_relset_1(k1_xboole_0,X2,X1) != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_37]),c_0_38])).

cnf(c_0_42,negated_conjecture,
    ( k1_relset_1(esk2_0,k1_xboole_0,k1_xboole_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_24]),c_0_32])).

cnf(c_0_43,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_44,negated_conjecture,
    ( v1_funct_2(k1_xboole_0,k1_xboole_0,X1)
    | k1_relset_1(k1_xboole_0,X1,k1_xboole_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_41,c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_43]),c_0_43])).

cnf(c_0_46,negated_conjecture,
    ( ~ v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[c_0_39,c_0_43])).

cnf(c_0_47,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 17:30:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S002I
% 0.20/0.38  # and selection function SelectNegativeLiterals.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t130_funct_2, conjecture, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(k1_relset_1(X1,X2,X3)=X1=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t130_funct_2)).
% 0.20/0.38  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_subset)).
% 0.20/0.38  fof(d1_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)<=>![X2]:~(r2_hidden(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_xboole_0)).
% 0.20/0.38  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.20/0.38  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.20/0.38  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.20/0.38  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.20/0.38  fof(c_0_7, negated_conjecture, ~(![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(k1_relset_1(X1,X2,X3)=X1=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))), inference(assume_negation,[status(cth)],[t130_funct_2])).
% 0.20/0.38  fof(c_0_8, negated_conjecture, ((v1_funct_1(esk4_0)&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))))&(k1_relset_1(esk2_0,esk3_0,esk4_0)=esk2_0&(~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,esk2_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.20/0.38  fof(c_0_9, plain, ![X11, X12, X13]:(~r2_hidden(X11,X12)|~m1_subset_1(X12,k1_zfmisc_1(X13))|~v1_xboole_0(X13)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.20/0.38  fof(c_0_10, plain, ![X4, X5, X6]:((~v1_xboole_0(X4)|~r2_hidden(X5,X4))&(r2_hidden(esk1_1(X6),X6)|v1_xboole_0(X6))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_xboole_0])])])])])])).
% 0.20/0.38  fof(c_0_11, plain, ![X14, X15, X16]:((((~v1_funct_2(X16,X14,X15)|X14=k1_relset_1(X14,X15,X16)|X15=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X14!=k1_relset_1(X14,X15,X16)|v1_funct_2(X16,X14,X15)|X15=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))&((~v1_funct_2(X16,X14,X15)|X14=k1_relset_1(X14,X15,X16)|X14!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X14!=k1_relset_1(X14,X15,X16)|v1_funct_2(X16,X14,X15)|X14!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))))&((~v1_funct_2(X16,X14,X15)|X16=k1_xboole_0|X14=k1_xboole_0|X15!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15))))&(X16!=k1_xboole_0|v1_funct_2(X16,X14,X15)|X14=k1_xboole_0|X15!=k1_xboole_0|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X14,X15)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.20/0.38  cnf(c_0_12, negated_conjecture, (~v1_funct_1(esk4_0)|~v1_funct_2(esk4_0,esk2_0,esk3_0)|~m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  cnf(c_0_13, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  cnf(c_0_14, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  fof(c_0_15, plain, ![X9, X10]:((k2_zfmisc_1(X9,X10)!=k1_xboole_0|(X9=k1_xboole_0|X10=k1_xboole_0))&((X9!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0)&(X10!=k1_xboole_0|k2_zfmisc_1(X9,X10)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.20/0.38  cnf(c_0_16, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.38  cnf(c_0_17, plain, (r2_hidden(esk1_1(X1),X1)|v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.38  cnf(c_0_18, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  cnf(c_0_19, negated_conjecture, (k1_relset_1(esk2_0,esk3_0,esk4_0)=esk2_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.38  cnf(c_0_20, negated_conjecture, (~v1_funct_2(esk4_0,esk2_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_12, c_0_13]), c_0_14])])).
% 0.20/0.38  cnf(c_0_21, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_22, plain, (v1_xboole_0(X1)|~m1_subset_1(X1,k1_zfmisc_1(X2))|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.20/0.38  cnf(c_0_23, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.20/0.38  cnf(c_0_24, negated_conjecture, (esk3_0=k1_xboole_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18, c_0_14]), c_0_19])]), c_0_20])).
% 0.20/0.38  cnf(c_0_25, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_21])).
% 0.20/0.38  fof(c_0_26, plain, ![X8]:(~v1_xboole_0(X8)|X8=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.20/0.38  cnf(c_0_27, plain, (v1_xboole_0(X1)|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 0.20/0.38  cnf(c_0_28, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14, c_0_24]), c_0_25])).
% 0.20/0.38  cnf(c_0_29, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.38  cnf(c_0_30, negated_conjecture, (v1_xboole_0(esk4_0)), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.20/0.38  cnf(c_0_31, plain, (v1_funct_2(X1,X2,X3)|X2=k1_xboole_0|X1!=k1_xboole_0|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  cnf(c_0_32, negated_conjecture, (esk4_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.20/0.38  cnf(c_0_33, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.38  cnf(c_0_34, negated_conjecture, (~v1_funct_2(esk4_0,esk2_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_20, c_0_24])).
% 0.20/0.38  cnf(c_0_35, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)|~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_31])]), c_0_25])).
% 0.20/0.38  cnf(c_0_36, negated_conjecture, (m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[c_0_28, c_0_32])).
% 0.20/0.38  cnf(c_0_37, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  cnf(c_0_38, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_33])).
% 0.20/0.38  cnf(c_0_39, negated_conjecture, (~v1_funct_2(k1_xboole_0,esk2_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_34, c_0_32])).
% 0.20/0.38  cnf(c_0_40, plain, (X1=k1_xboole_0|v1_funct_2(k1_xboole_0,X1,k1_xboole_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_36])])).
% 0.20/0.38  cnf(c_0_41, plain, (v1_funct_2(X1,k1_xboole_0,X2)|k1_relset_1(k1_xboole_0,X2,X1)!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k1_xboole_0))), inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_37]), c_0_38])).
% 0.20/0.38  cnf(c_0_42, negated_conjecture, (k1_relset_1(esk2_0,k1_xboole_0,k1_xboole_0)=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_24]), c_0_32])).
% 0.20/0.38  cnf(c_0_43, negated_conjecture, (esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.20/0.38  cnf(c_0_44, negated_conjecture, (v1_funct_2(k1_xboole_0,k1_xboole_0,X1)|k1_relset_1(k1_xboole_0,X1,k1_xboole_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_41, c_0_36])).
% 0.20/0.38  cnf(c_0_45, negated_conjecture, (k1_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_43]), c_0_43])).
% 0.20/0.38  cnf(c_0_46, negated_conjecture, (~v1_funct_2(k1_xboole_0,k1_xboole_0,k1_xboole_0)), inference(rw,[status(thm)],[c_0_39, c_0_43])).
% 0.20/0.38  cnf(c_0_47, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 48
% 0.20/0.38  # Proof object clause steps            : 34
% 0.20/0.38  # Proof object formula steps           : 14
% 0.20/0.38  # Proof object conjectures             : 21
% 0.20/0.38  # Proof object clause conjectures      : 18
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 13
% 0.20/0.38  # Proof object initial formulas used   : 7
% 0.20/0.38  # Proof object generating inferences   : 8
% 0.20/0.38  # Proof object simplifying inferences  : 26
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 7
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 18
% 0.20/0.38  # Removed in clause preprocessing      : 0
% 0.20/0.38  # Initial clauses in saturation        : 18
% 0.20/0.38  # Processed clauses                    : 58
% 0.20/0.38  # ...of these trivial                  : 0
% 0.20/0.38  # ...subsumed                          : 0
% 0.20/0.38  # ...remaining for further processing  : 58
% 0.20/0.38  # Other redundant clauses eliminated   : 7
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 10
% 0.20/0.38  # Generated clauses                    : 18
% 0.20/0.38  # ...of the previous two non-trivial   : 24
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 12
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 7
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 24
% 0.20/0.38  #    Positive orientable unit clauses  : 9
% 0.20/0.38  #    Positive unorientable unit clauses: 0
% 0.20/0.38  #    Negative unit clauses             : 1
% 0.20/0.38  #    Non-unit-clauses                  : 14
% 0.20/0.38  # Current number of unprocessed clauses: 1
% 0.20/0.38  # ...number of literals in the above   : 4
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 28
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 73
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 38
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.20/0.38  # Unit Clause-clause subsumption calls : 21
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 4
% 0.20/0.38  # BW rewrite match successes           : 4
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 1446
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.029 s
% 0.20/0.38  # System time              : 0.004 s
% 0.20/0.38  # Total time               : 0.033 s
% 0.20/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
