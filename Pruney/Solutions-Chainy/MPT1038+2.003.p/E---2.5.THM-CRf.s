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
% DateTime   : Thu Dec  3 11:07:05 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   41 ( 298 expanded)
%              Number of clauses        :   30 ( 104 expanded)
%              Number of leaves         :    5 (  70 expanded)
%              Depth                    :   10
%              Number of atoms          :  147 (2056 expanded)
%              Number of equality atoms :    9 (  20 expanded)
%              Maximal formula depth    :   16 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t152_funct_2,conjecture,(
    ! [X1,X2] :
      ( ( v1_funct_1(X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
     => ! [X3] :
          ( ( v1_funct_1(X3)
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
         => ! [X4] :
              ( ( v1_funct_1(X4)
                & v1_funct_2(X4,X1,X1)
                & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
             => ( ( r1_partfun1(X2,X4)
                  & r1_partfun1(X3,X4) )
               => r1_partfun1(X2,X3) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t152_funct_2)).

fof(t158_partfun1,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
         => ! [X5] :
              ( ( v1_funct_1(X5)
                & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
             => ( ( r1_partfun1(X3,X5)
                  & r1_partfun1(X4,X5)
                  & v1_partfun1(X5,X1) )
               => r1_partfun1(X3,X4) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t158_partfun1)).

fof(cc5_funct_2,axiom,(
    ! [X1,X2] :
      ( ~ v1_xboole_0(X2)
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
         => ( ( v1_funct_1(X3)
              & v1_funct_2(X3,X1,X2) )
           => ( v1_funct_1(X3)
              & v1_partfun1(X3,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc5_funct_2)).

fof(cc4_relset_1,axiom,(
    ! [X1,X2] :
      ( v1_xboole_0(X1)
     => ! [X3] :
          ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
         => v1_xboole_0(X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc4_relset_1)).

fof(l13_xboole_0,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l13_xboole_0)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1,X2] :
        ( ( v1_funct_1(X2)
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
       => ! [X3] :
            ( ( v1_funct_1(X3)
              & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
           => ! [X4] :
                ( ( v1_funct_1(X4)
                  & v1_funct_2(X4,X1,X1)
                  & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) )
               => ( ( r1_partfun1(X2,X4)
                    & r1_partfun1(X3,X4) )
                 => r1_partfun1(X2,X3) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t152_funct_2])).

fof(c_0_6,plain,(
    ! [X13,X14,X15,X16,X17] :
      ( ~ v1_funct_1(X15)
      | ~ m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | ~ v1_funct_1(X16)
      | ~ m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | ~ v1_funct_1(X17)
      | ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))
      | ~ r1_partfun1(X15,X17)
      | ~ r1_partfun1(X16,X17)
      | ~ v1_partfun1(X17,X13)
      | r1_partfun1(X15,X16) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t158_partfun1])])])).

fof(c_0_7,negated_conjecture,
    ( v1_funct_1(esk2_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & v1_funct_1(esk3_0)
    & m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,esk1_0,esk1_0)
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    & r1_partfun1(esk2_0,esk4_0)
    & r1_partfun1(esk3_0,esk4_0)
    & ~ r1_partfun1(esk2_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).

fof(c_0_8,plain,(
    ! [X10,X11,X12] :
      ( ( v1_funct_1(X12)
        | ~ v1_funct_1(X12)
        | ~ v1_funct_2(X12,X10,X11)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))
        | v1_xboole_0(X11) )
      & ( v1_partfun1(X12,X10)
        | ~ v1_funct_1(X12)
        | ~ v1_funct_2(X12,X10,X11)
        | ~ m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))
        | v1_xboole_0(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).

cnf(c_0_9,plain,
    ( r1_partfun1(X1,X4)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r1_partfun1(X1,X5)
    | ~ r1_partfun1(X4,X5)
    | ~ v1_partfun1(X5,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( v1_partfun1(X1,X2)
    | v1_xboole_0(X3)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( v1_funct_2(esk4_0,esk1_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_14,plain,(
    ! [X7,X8,X9] :
      ( ~ v1_xboole_0(X7)
      | ~ m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X7)))
      | v1_xboole_0(X9) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc4_relset_1])])])).

cnf(c_0_15,negated_conjecture,
    ( r1_partfun1(X1,X2)
    | ~ r1_partfun1(X2,esk4_0)
    | ~ r1_partfun1(X1,esk4_0)
    | ~ v1_partfun1(esk4_0,esk1_0)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9,c_0_10]),c_0_11])])).

cnf(c_0_16,negated_conjecture,
    ( v1_partfun1(esk4_0,esk1_0)
    | v1_xboole_0(esk1_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_10]),c_0_13]),c_0_11])])).

fof(c_0_17,plain,(
    ! [X6] :
      ( ~ v1_xboole_0(X6)
      | X6 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).

cnf(c_0_18,plain,
    ( v1_xboole_0(X2)
    | ~ v1_xboole_0(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_20,negated_conjecture,
    ( r1_partfun1(X1,X2)
    | v1_xboole_0(esk1_0)
    | ~ r1_partfun1(X2,esk4_0)
    | ~ r1_partfun1(X1,esk4_0)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(spm,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_21,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_22,negated_conjecture,
    ( r1_partfun1(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_24,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( v1_xboole_0(esk2_0)
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_26,negated_conjecture,
    ( r1_partfun1(X1,esk3_0)
    | v1_xboole_0(esk1_0)
    | ~ r1_partfun1(X1,esk4_0)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_27,negated_conjecture,
    ( r1_partfun1(esk2_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_28,negated_conjecture,
    ( v1_funct_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_29,negated_conjecture,
    ( ~ r1_partfun1(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_30,negated_conjecture,
    ( v1_xboole_0(esk3_0)
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_21])).

cnf(c_0_31,negated_conjecture,
    ( v1_xboole_0(esk4_0)
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_18,c_0_10])).

cnf(c_0_32,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_33,negated_conjecture,
    ( v1_xboole_0(esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_19]),c_0_27]),c_0_28])]),c_0_29])).

cnf(c_0_34,negated_conjecture,
    ( esk3_0 = k1_xboole_0
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_30])).

cnf(c_0_35,negated_conjecture,
    ( esk4_0 = k1_xboole_0
    | ~ v1_xboole_0(esk1_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( esk2_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_33])])).

cnf(c_0_37,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_33])])).

cnf(c_0_38,negated_conjecture,
    ( esk4_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_33])])).

cnf(c_0_39,negated_conjecture,
    ( ~ r1_partfun1(k1_xboole_0,k1_xboole_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_36]),c_0_37])).

cnf(c_0_40,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_36]),c_0_38]),c_0_39]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n004.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:48:38 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.027 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t152_funct_2, conjecture, ![X1, X2]:((v1_funct_1(X2)&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>((r1_partfun1(X2,X4)&r1_partfun1(X3,X4))=>r1_partfun1(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t152_funct_2)).
% 0.12/0.37  fof(t158_partfun1, axiom, ![X1, X2, X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:((v1_funct_1(X4)&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(((r1_partfun1(X3,X5)&r1_partfun1(X4,X5))&v1_partfun1(X5,X1))=>r1_partfun1(X3,X4))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t158_partfun1)).
% 0.12/0.37  fof(cc5_funct_2, axiom, ![X1, X2]:(~(v1_xboole_0(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))=>(v1_funct_1(X3)&v1_partfun1(X3,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc5_funct_2)).
% 0.12/0.37  fof(cc4_relset_1, axiom, ![X1, X2]:(v1_xboole_0(X1)=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))=>v1_xboole_0(X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc4_relset_1)).
% 0.12/0.37  fof(l13_xboole_0, axiom, ![X1]:(v1_xboole_0(X1)=>X1=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l13_xboole_0)).
% 0.12/0.37  fof(c_0_5, negated_conjecture, ~(![X1, X2]:((v1_funct_1(X2)&m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X3]:((v1_funct_1(X3)&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X1))))=>((r1_partfun1(X2,X4)&r1_partfun1(X3,X4))=>r1_partfun1(X2,X3)))))), inference(assume_negation,[status(cth)],[t152_funct_2])).
% 0.12/0.37  fof(c_0_6, plain, ![X13, X14, X15, X16, X17]:(~v1_funct_1(X15)|~m1_subset_1(X15,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|(~v1_funct_1(X16)|~m1_subset_1(X16,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|(~v1_funct_1(X17)|~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X13,X14)))|(~r1_partfun1(X15,X17)|~r1_partfun1(X16,X17)|~v1_partfun1(X17,X13)|r1_partfun1(X15,X16))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t158_partfun1])])])).
% 0.12/0.37  fof(c_0_7, negated_conjecture, ((v1_funct_1(esk2_0)&m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&((v1_funct_1(esk3_0)&m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,esk1_0,esk1_0))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0))))&((r1_partfun1(esk2_0,esk4_0)&r1_partfun1(esk3_0,esk4_0))&~r1_partfun1(esk2_0,esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_5])])])).
% 0.12/0.37  fof(c_0_8, plain, ![X10, X11, X12]:((v1_funct_1(X12)|(~v1_funct_1(X12)|~v1_funct_2(X12,X10,X11))|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))|v1_xboole_0(X11))&(v1_partfun1(X12,X10)|(~v1_funct_1(X12)|~v1_funct_2(X12,X10,X11))|~m1_subset_1(X12,k1_zfmisc_1(k2_zfmisc_1(X10,X11)))|v1_xboole_0(X11))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[cc5_funct_2])])])])])).
% 0.12/0.37  cnf(c_0_9, plain, (r1_partfun1(X1,X4)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r1_partfun1(X1,X5)|~r1_partfun1(X4,X5)|~v1_partfun1(X5,X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_10, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_11, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_12, plain, (v1_partfun1(X1,X2)|v1_xboole_0(X3)|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_13, negated_conjecture, (v1_funct_2(esk4_0,esk1_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  fof(c_0_14, plain, ![X7, X8, X9]:(~v1_xboole_0(X7)|(~m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X7)))|v1_xboole_0(X9))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc4_relset_1])])])).
% 0.12/0.37  cnf(c_0_15, negated_conjecture, (r1_partfun1(X1,X2)|~r1_partfun1(X2,esk4_0)|~r1_partfun1(X1,esk4_0)|~v1_partfun1(esk4_0,esk1_0)|~v1_funct_1(X2)|~v1_funct_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_9, c_0_10]), c_0_11])])).
% 0.12/0.37  cnf(c_0_16, negated_conjecture, (v1_partfun1(esk4_0,esk1_0)|v1_xboole_0(esk1_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_10]), c_0_13]), c_0_11])])).
% 0.12/0.37  fof(c_0_17, plain, ![X6]:(~v1_xboole_0(X6)|X6=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l13_xboole_0])])).
% 0.12/0.37  cnf(c_0_18, plain, (v1_xboole_0(X2)|~v1_xboole_0(X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  cnf(c_0_19, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (r1_partfun1(X1,X2)|v1_xboole_0(esk1_0)|~r1_partfun1(X2,esk4_0)|~r1_partfun1(X1,esk4_0)|~v1_funct_1(X2)|~v1_funct_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(spm,[status(thm)],[c_0_15, c_0_16])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_22, negated_conjecture, (r1_partfun1(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_24, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.37  cnf(c_0_25, negated_conjecture, (v1_xboole_0(esk2_0)|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.12/0.37  cnf(c_0_26, negated_conjecture, (r1_partfun1(X1,esk3_0)|v1_xboole_0(esk1_0)|~r1_partfun1(X1,esk4_0)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20, c_0_21]), c_0_22]), c_0_23])])).
% 0.12/0.37  cnf(c_0_27, negated_conjecture, (r1_partfun1(esk2_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_28, negated_conjecture, (v1_funct_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (~r1_partfun1(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_30, negated_conjecture, (v1_xboole_0(esk3_0)|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_18, c_0_21])).
% 0.12/0.37  cnf(c_0_31, negated_conjecture, (v1_xboole_0(esk4_0)|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_18, c_0_10])).
% 0.12/0.37  cnf(c_0_32, negated_conjecture, (esk2_0=k1_xboole_0|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.12/0.37  cnf(c_0_33, negated_conjecture, (v1_xboole_0(esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_19]), c_0_27]), c_0_28])]), c_0_29])).
% 0.12/0.37  cnf(c_0_34, negated_conjecture, (esk3_0=k1_xboole_0|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_24, c_0_30])).
% 0.12/0.37  cnf(c_0_35, negated_conjecture, (esk4_0=k1_xboole_0|~v1_xboole_0(esk1_0)), inference(spm,[status(thm)],[c_0_24, c_0_31])).
% 0.12/0.37  cnf(c_0_36, negated_conjecture, (esk2_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_33])])).
% 0.12/0.37  cnf(c_0_37, negated_conjecture, (esk3_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_33])])).
% 0.12/0.37  cnf(c_0_38, negated_conjecture, (esk4_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_33])])).
% 0.12/0.37  cnf(c_0_39, negated_conjecture, (~r1_partfun1(k1_xboole_0,k1_xboole_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_36]), c_0_37])).
% 0.12/0.37  cnf(c_0_40, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_36]), c_0_38]), c_0_39]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 41
% 0.12/0.37  # Proof object clause steps            : 30
% 0.12/0.37  # Proof object formula steps           : 11
% 0.12/0.37  # Proof object conjectures             : 29
% 0.12/0.37  # Proof object clause conjectures      : 26
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 14
% 0.12/0.37  # Proof object initial formulas used   : 5
% 0.12/0.37  # Proof object generating inferences   : 11
% 0.12/0.37  # Proof object simplifying inferences  : 23
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 5
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 15
% 0.12/0.37  # Removed in clause preprocessing      : 1
% 0.12/0.37  # Initial clauses in saturation        : 14
% 0.12/0.37  # Processed clauses                    : 56
% 0.12/0.37  # ...of these trivial                  : 5
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 50
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 25
% 0.12/0.37  # Generated clauses                    : 20
% 0.12/0.37  # ...of the previous two non-trivial   : 39
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 20
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 0
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
% 0.12/0.37  # Current number of processed clauses  : 11
% 0.12/0.37  #    Positive orientable unit clauses  : 6
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 1
% 0.12/0.37  #    Non-unit-clauses                  : 4
% 0.12/0.37  # Current number of unprocessed clauses: 11
% 0.12/0.37  # ...number of literals in the above   : 39
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 39
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 369
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 54
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 7
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 5
% 0.12/0.37  # BW rewrite match successes           : 5
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 1741
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.031 s
% 0.12/0.37  # System time              : 0.002 s
% 0.12/0.37  # Total time               : 0.033 s
% 0.12/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
