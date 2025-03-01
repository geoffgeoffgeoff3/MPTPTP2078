%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:21:08 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   34 ( 103 expanded)
%              Number of clauses        :   23 (  34 expanded)
%              Number of leaves         :    5 (  27 expanded)
%              Depth                    :    6
%              Number of atoms          :  260 ( 932 expanded)
%              Number of equality atoms :   28 (  82 expanded)
%              Maximal formula depth    :   23 (   7 average)
%              Maximal clause size      :   60 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t9_yellow_6,conjecture,(
    ! [X1] :
      ( ~ v1_xboole_0(X1)
     => ! [X2] :
          ( ( v1_relat_1(X2)
            & v4_relat_1(X2,X1)
            & v1_funct_1(X2)
            & v1_partfun1(X2,X1)
            & v2_pralg_1(X2) )
         => ! [X3] :
              ( m1_subset_1(X3,X1)
             => k1_funct_1(k12_pralg_1(X1,X2),X3) = u1_struct_0(k10_pralg_1(X1,X2,X3)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t9_yellow_6)).

fof(d13_pralg_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1)
        & v1_funct_1(X2)
        & v1_partfun1(X2,X1)
        & v2_pralg_1(X2) )
     => ! [X3] :
          ( ( v1_relat_1(X3)
            & v4_relat_1(X3,X1)
            & v1_funct_1(X3)
            & v1_partfun1(X3,X1) )
         => ( X3 = k12_pralg_1(X1,X2)
          <=> ! [X4] :
                ~ ( r2_hidden(X4,X1)
                  & ! [X5] :
                      ( l1_struct_0(X5)
                     => ~ ( X5 = k1_funct_1(X2,X4)
                          & k1_funct_1(X3,X4) = u1_struct_0(X5) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d13_pralg_1)).

fof(dt_k12_pralg_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1)
        & v1_funct_1(X2)
        & v1_partfun1(X2,X1)
        & v2_pralg_1(X2) )
     => ( v1_relat_1(k12_pralg_1(X1,X2))
        & v4_relat_1(k12_pralg_1(X1,X2),X1)
        & v1_funct_1(k12_pralg_1(X1,X2))
        & v1_partfun1(k12_pralg_1(X1,X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k12_pralg_1)).

fof(redefinition_k10_pralg_1,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v1_xboole_0(X1)
        & v1_relat_1(X2)
        & v4_relat_1(X2,X1)
        & v1_funct_1(X2)
        & v1_partfun1(X2,X1)
        & v2_pralg_1(X2)
        & m1_subset_1(X3,X1) )
     => k10_pralg_1(X1,X2,X3) = k1_funct_1(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k10_pralg_1)).

fof(d2_subset_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> r2_hidden(X2,X1) ) )
      & ( v1_xboole_0(X1)
       => ( m1_subset_1(X2,X1)
        <=> v1_xboole_0(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_subset_1)).

fof(c_0_5,negated_conjecture,(
    ~ ! [X1] :
        ( ~ v1_xboole_0(X1)
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v4_relat_1(X2,X1)
              & v1_funct_1(X2)
              & v1_partfun1(X2,X1)
              & v2_pralg_1(X2) )
           => ! [X3] :
                ( m1_subset_1(X3,X1)
               => k1_funct_1(k12_pralg_1(X1,X2),X3) = u1_struct_0(k10_pralg_1(X1,X2,X3)) ) ) ) ),
    inference(assume_negation,[status(cth)],[t9_yellow_6])).

fof(c_0_6,plain,(
    ! [X8,X9,X10,X11,X14] :
      ( ( l1_struct_0(esk1_4(X8,X9,X10,X11))
        | ~ r2_hidden(X11,X8)
        | X10 != k12_pralg_1(X8,X9)
        | ~ v1_relat_1(X10)
        | ~ v4_relat_1(X10,X8)
        | ~ v1_funct_1(X10)
        | ~ v1_partfun1(X10,X8)
        | ~ v1_relat_1(X9)
        | ~ v4_relat_1(X9,X8)
        | ~ v1_funct_1(X9)
        | ~ v1_partfun1(X9,X8)
        | ~ v2_pralg_1(X9) )
      & ( esk1_4(X8,X9,X10,X11) = k1_funct_1(X9,X11)
        | ~ r2_hidden(X11,X8)
        | X10 != k12_pralg_1(X8,X9)
        | ~ v1_relat_1(X10)
        | ~ v4_relat_1(X10,X8)
        | ~ v1_funct_1(X10)
        | ~ v1_partfun1(X10,X8)
        | ~ v1_relat_1(X9)
        | ~ v4_relat_1(X9,X8)
        | ~ v1_funct_1(X9)
        | ~ v1_partfun1(X9,X8)
        | ~ v2_pralg_1(X9) )
      & ( k1_funct_1(X10,X11) = u1_struct_0(esk1_4(X8,X9,X10,X11))
        | ~ r2_hidden(X11,X8)
        | X10 != k12_pralg_1(X8,X9)
        | ~ v1_relat_1(X10)
        | ~ v4_relat_1(X10,X8)
        | ~ v1_funct_1(X10)
        | ~ v1_partfun1(X10,X8)
        | ~ v1_relat_1(X9)
        | ~ v4_relat_1(X9,X8)
        | ~ v1_funct_1(X9)
        | ~ v1_partfun1(X9,X8)
        | ~ v2_pralg_1(X9) )
      & ( r2_hidden(esk2_3(X8,X9,X10),X8)
        | X10 = k12_pralg_1(X8,X9)
        | ~ v1_relat_1(X10)
        | ~ v4_relat_1(X10,X8)
        | ~ v1_funct_1(X10)
        | ~ v1_partfun1(X10,X8)
        | ~ v1_relat_1(X9)
        | ~ v4_relat_1(X9,X8)
        | ~ v1_funct_1(X9)
        | ~ v1_partfun1(X9,X8)
        | ~ v2_pralg_1(X9) )
      & ( ~ l1_struct_0(X14)
        | X14 != k1_funct_1(X9,esk2_3(X8,X9,X10))
        | k1_funct_1(X10,esk2_3(X8,X9,X10)) != u1_struct_0(X14)
        | X10 = k12_pralg_1(X8,X9)
        | ~ v1_relat_1(X10)
        | ~ v4_relat_1(X10,X8)
        | ~ v1_funct_1(X10)
        | ~ v1_partfun1(X10,X8)
        | ~ v1_relat_1(X9)
        | ~ v4_relat_1(X9,X8)
        | ~ v1_funct_1(X9)
        | ~ v1_partfun1(X9,X8)
        | ~ v2_pralg_1(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_pralg_1])])])])])).

fof(c_0_7,plain,(
    ! [X15,X16] :
      ( ( v1_relat_1(k12_pralg_1(X15,X16))
        | ~ v1_relat_1(X16)
        | ~ v4_relat_1(X16,X15)
        | ~ v1_funct_1(X16)
        | ~ v1_partfun1(X16,X15)
        | ~ v2_pralg_1(X16) )
      & ( v4_relat_1(k12_pralg_1(X15,X16),X15)
        | ~ v1_relat_1(X16)
        | ~ v4_relat_1(X16,X15)
        | ~ v1_funct_1(X16)
        | ~ v1_partfun1(X16,X15)
        | ~ v2_pralg_1(X16) )
      & ( v1_funct_1(k12_pralg_1(X15,X16))
        | ~ v1_relat_1(X16)
        | ~ v4_relat_1(X16,X15)
        | ~ v1_funct_1(X16)
        | ~ v1_partfun1(X16,X15)
        | ~ v2_pralg_1(X16) )
      & ( v1_partfun1(k12_pralg_1(X15,X16),X15)
        | ~ v1_relat_1(X16)
        | ~ v4_relat_1(X16,X15)
        | ~ v1_funct_1(X16)
        | ~ v1_partfun1(X16,X15)
        | ~ v2_pralg_1(X16) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k12_pralg_1])])])).

fof(c_0_8,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0)
    & v1_relat_1(esk4_0)
    & v4_relat_1(esk4_0,esk3_0)
    & v1_funct_1(esk4_0)
    & v1_partfun1(esk4_0,esk3_0)
    & v2_pralg_1(esk4_0)
    & m1_subset_1(esk5_0,esk3_0)
    & k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0) != u1_struct_0(k10_pralg_1(esk3_0,esk4_0,esk5_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).

fof(c_0_9,plain,(
    ! [X17,X18,X19] :
      ( v1_xboole_0(X17)
      | ~ v1_relat_1(X18)
      | ~ v4_relat_1(X18,X17)
      | ~ v1_funct_1(X18)
      | ~ v1_partfun1(X18,X17)
      | ~ v2_pralg_1(X18)
      | ~ m1_subset_1(X19,X17)
      | k10_pralg_1(X17,X18,X19) = k1_funct_1(X18,X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k10_pralg_1])])])).

cnf(c_0_10,plain,
    ( k1_funct_1(X1,X2) = u1_struct_0(esk1_4(X3,X4,X1,X2))
    | ~ r2_hidden(X2,X3)
    | X1 != k12_pralg_1(X3,X4)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X3)
    | ~ v1_funct_1(X1)
    | ~ v1_partfun1(X1,X3)
    | ~ v1_relat_1(X4)
    | ~ v4_relat_1(X4,X3)
    | ~ v1_funct_1(X4)
    | ~ v1_partfun1(X4,X3)
    | ~ v2_pralg_1(X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( v1_relat_1(k12_pralg_1(X1,X2))
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( v4_relat_1(k12_pralg_1(X1,X2),X1)
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,plain,
    ( v1_funct_1(k12_pralg_1(X1,X2))
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_14,plain,
    ( v1_partfun1(k12_pralg_1(X1,X2),X1)
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_15,plain,
    ( esk1_4(X1,X2,X3,X4) = k1_funct_1(X2,X4)
    | ~ r2_hidden(X4,X1)
    | X3 != k12_pralg_1(X1,X2)
    | ~ v1_relat_1(X3)
    | ~ v4_relat_1(X3,X1)
    | ~ v1_funct_1(X3)
    | ~ v1_partfun1(X3,X1)
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_16,negated_conjecture,
    ( k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0) != u1_struct_0(k10_pralg_1(esk3_0,esk4_0,esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_17,plain,
    ( v1_xboole_0(X1)
    | k10_pralg_1(X1,X2,X3) = k1_funct_1(X2,X3)
    | ~ v1_relat_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v2_pralg_1(X2)
    | ~ m1_subset_1(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_18,negated_conjecture,
    ( v2_pralg_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_19,negated_conjecture,
    ( v1_partfun1(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_20,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_21,negated_conjecture,
    ( v4_relat_1(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_22,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_24,negated_conjecture,
    ( ~ v1_xboole_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_25,plain,
    ( u1_struct_0(esk1_4(X1,X2,k12_pralg_1(X1,X2),X3)) = k1_funct_1(k12_pralg_1(X1,X2),X3)
    | ~ v2_pralg_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_relat_1(X2)
    | ~ r2_hidden(X3,X1) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_10]),c_0_11]),c_0_12]),c_0_13]),c_0_14])).

cnf(c_0_26,plain,
    ( esk1_4(X1,X2,k12_pralg_1(X1,X2),X3) = k1_funct_1(X2,X3)
    | ~ v2_pralg_1(X2)
    | ~ v1_partfun1(X2,X1)
    | ~ v1_funct_1(X2)
    | ~ v4_relat_1(X2,X1)
    | ~ v1_relat_1(X2)
    | ~ r2_hidden(X3,X1) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_15]),c_0_11]),c_0_12]),c_0_13]),c_0_14])).

fof(c_0_27,plain,(
    ! [X6,X7] :
      ( ( ~ m1_subset_1(X7,X6)
        | r2_hidden(X7,X6)
        | v1_xboole_0(X6) )
      & ( ~ r2_hidden(X7,X6)
        | m1_subset_1(X7,X6)
        | v1_xboole_0(X6) )
      & ( ~ m1_subset_1(X7,X6)
        | v1_xboole_0(X7)
        | ~ v1_xboole_0(X6) )
      & ( ~ v1_xboole_0(X7)
        | m1_subset_1(X7,X6)
        | ~ v1_xboole_0(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).

cnf(c_0_28,negated_conjecture,
    ( u1_struct_0(k1_funct_1(esk4_0,esk5_0)) != k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19]),c_0_20]),c_0_21]),c_0_22]),c_0_23])]),c_0_24])).

cnf(c_0_29,plain,
    ( u1_struct_0(k1_funct_1(X1,X2)) = k1_funct_1(k12_pralg_1(X3,X1),X2)
    | ~ v2_pralg_1(X1)
    | ~ v1_partfun1(X1,X3)
    | ~ v1_funct_1(X1)
    | ~ v4_relat_1(X1,X3)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,X3) ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_30,plain,
    ( r2_hidden(X1,X2)
    | v1_xboole_0(X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( k1_funct_1(k12_pralg_1(X1,esk4_0),esk5_0) != k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0)
    | ~ v1_partfun1(esk4_0,X1)
    | ~ v4_relat_1(esk4_0,X1)
    | ~ r2_hidden(esk5_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_18]),c_0_20]),c_0_22])])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(esk5_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_23]),c_0_24])).

cnf(c_0_33,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_31]),c_0_19]),c_0_21]),c_0_32])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:05:24 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S5PRR_S0Y
% 0.12/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.029 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t9_yellow_6, conjecture, ![X1]:(~(v1_xboole_0(X1))=>![X2]:(((((v1_relat_1(X2)&v4_relat_1(X2,X1))&v1_funct_1(X2))&v1_partfun1(X2,X1))&v2_pralg_1(X2))=>![X3]:(m1_subset_1(X3,X1)=>k1_funct_1(k12_pralg_1(X1,X2),X3)=u1_struct_0(k10_pralg_1(X1,X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t9_yellow_6)).
% 0.12/0.37  fof(d13_pralg_1, axiom, ![X1, X2]:(((((v1_relat_1(X2)&v4_relat_1(X2,X1))&v1_funct_1(X2))&v1_partfun1(X2,X1))&v2_pralg_1(X2))=>![X3]:((((v1_relat_1(X3)&v4_relat_1(X3,X1))&v1_funct_1(X3))&v1_partfun1(X3,X1))=>(X3=k12_pralg_1(X1,X2)<=>![X4]:~((r2_hidden(X4,X1)&![X5]:(l1_struct_0(X5)=>~((X5=k1_funct_1(X2,X4)&k1_funct_1(X3,X4)=u1_struct_0(X5))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d13_pralg_1)).
% 0.12/0.37  fof(dt_k12_pralg_1, axiom, ![X1, X2]:(((((v1_relat_1(X2)&v4_relat_1(X2,X1))&v1_funct_1(X2))&v1_partfun1(X2,X1))&v2_pralg_1(X2))=>(((v1_relat_1(k12_pralg_1(X1,X2))&v4_relat_1(k12_pralg_1(X1,X2),X1))&v1_funct_1(k12_pralg_1(X1,X2)))&v1_partfun1(k12_pralg_1(X1,X2),X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k12_pralg_1)).
% 0.12/0.37  fof(redefinition_k10_pralg_1, axiom, ![X1, X2, X3]:(((((((~(v1_xboole_0(X1))&v1_relat_1(X2))&v4_relat_1(X2,X1))&v1_funct_1(X2))&v1_partfun1(X2,X1))&v2_pralg_1(X2))&m1_subset_1(X3,X1))=>k10_pralg_1(X1,X2,X3)=k1_funct_1(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k10_pralg_1)).
% 0.12/0.37  fof(d2_subset_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))=>(m1_subset_1(X2,X1)<=>r2_hidden(X2,X1)))&(v1_xboole_0(X1)=>(m1_subset_1(X2,X1)<=>v1_xboole_0(X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_subset_1)).
% 0.12/0.37  fof(c_0_5, negated_conjecture, ~(![X1]:(~(v1_xboole_0(X1))=>![X2]:(((((v1_relat_1(X2)&v4_relat_1(X2,X1))&v1_funct_1(X2))&v1_partfun1(X2,X1))&v2_pralg_1(X2))=>![X3]:(m1_subset_1(X3,X1)=>k1_funct_1(k12_pralg_1(X1,X2),X3)=u1_struct_0(k10_pralg_1(X1,X2,X3)))))), inference(assume_negation,[status(cth)],[t9_yellow_6])).
% 0.12/0.37  fof(c_0_6, plain, ![X8, X9, X10, X11, X14]:(((l1_struct_0(esk1_4(X8,X9,X10,X11))|~r2_hidden(X11,X8)|X10!=k12_pralg_1(X8,X9)|(~v1_relat_1(X10)|~v4_relat_1(X10,X8)|~v1_funct_1(X10)|~v1_partfun1(X10,X8))|(~v1_relat_1(X9)|~v4_relat_1(X9,X8)|~v1_funct_1(X9)|~v1_partfun1(X9,X8)|~v2_pralg_1(X9)))&((esk1_4(X8,X9,X10,X11)=k1_funct_1(X9,X11)|~r2_hidden(X11,X8)|X10!=k12_pralg_1(X8,X9)|(~v1_relat_1(X10)|~v4_relat_1(X10,X8)|~v1_funct_1(X10)|~v1_partfun1(X10,X8))|(~v1_relat_1(X9)|~v4_relat_1(X9,X8)|~v1_funct_1(X9)|~v1_partfun1(X9,X8)|~v2_pralg_1(X9)))&(k1_funct_1(X10,X11)=u1_struct_0(esk1_4(X8,X9,X10,X11))|~r2_hidden(X11,X8)|X10!=k12_pralg_1(X8,X9)|(~v1_relat_1(X10)|~v4_relat_1(X10,X8)|~v1_funct_1(X10)|~v1_partfun1(X10,X8))|(~v1_relat_1(X9)|~v4_relat_1(X9,X8)|~v1_funct_1(X9)|~v1_partfun1(X9,X8)|~v2_pralg_1(X9)))))&((r2_hidden(esk2_3(X8,X9,X10),X8)|X10=k12_pralg_1(X8,X9)|(~v1_relat_1(X10)|~v4_relat_1(X10,X8)|~v1_funct_1(X10)|~v1_partfun1(X10,X8))|(~v1_relat_1(X9)|~v4_relat_1(X9,X8)|~v1_funct_1(X9)|~v1_partfun1(X9,X8)|~v2_pralg_1(X9)))&(~l1_struct_0(X14)|(X14!=k1_funct_1(X9,esk2_3(X8,X9,X10))|k1_funct_1(X10,esk2_3(X8,X9,X10))!=u1_struct_0(X14))|X10=k12_pralg_1(X8,X9)|(~v1_relat_1(X10)|~v4_relat_1(X10,X8)|~v1_funct_1(X10)|~v1_partfun1(X10,X8))|(~v1_relat_1(X9)|~v4_relat_1(X9,X8)|~v1_funct_1(X9)|~v1_partfun1(X9,X8)|~v2_pralg_1(X9))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d13_pralg_1])])])])])).
% 0.12/0.37  fof(c_0_7, plain, ![X15, X16]:((((v1_relat_1(k12_pralg_1(X15,X16))|(~v1_relat_1(X16)|~v4_relat_1(X16,X15)|~v1_funct_1(X16)|~v1_partfun1(X16,X15)|~v2_pralg_1(X16)))&(v4_relat_1(k12_pralg_1(X15,X16),X15)|(~v1_relat_1(X16)|~v4_relat_1(X16,X15)|~v1_funct_1(X16)|~v1_partfun1(X16,X15)|~v2_pralg_1(X16))))&(v1_funct_1(k12_pralg_1(X15,X16))|(~v1_relat_1(X16)|~v4_relat_1(X16,X15)|~v1_funct_1(X16)|~v1_partfun1(X16,X15)|~v2_pralg_1(X16))))&(v1_partfun1(k12_pralg_1(X15,X16),X15)|(~v1_relat_1(X16)|~v4_relat_1(X16,X15)|~v1_funct_1(X16)|~v1_partfun1(X16,X15)|~v2_pralg_1(X16)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k12_pralg_1])])])).
% 0.12/0.37  fof(c_0_8, negated_conjecture, (~v1_xboole_0(esk3_0)&(((((v1_relat_1(esk4_0)&v4_relat_1(esk4_0,esk3_0))&v1_funct_1(esk4_0))&v1_partfun1(esk4_0,esk3_0))&v2_pralg_1(esk4_0))&(m1_subset_1(esk5_0,esk3_0)&k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0)!=u1_struct_0(k10_pralg_1(esk3_0,esk4_0,esk5_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_5])])])])).
% 0.12/0.37  fof(c_0_9, plain, ![X17, X18, X19]:(v1_xboole_0(X17)|~v1_relat_1(X18)|~v4_relat_1(X18,X17)|~v1_funct_1(X18)|~v1_partfun1(X18,X17)|~v2_pralg_1(X18)|~m1_subset_1(X19,X17)|k10_pralg_1(X17,X18,X19)=k1_funct_1(X18,X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k10_pralg_1])])])).
% 0.12/0.37  cnf(c_0_10, plain, (k1_funct_1(X1,X2)=u1_struct_0(esk1_4(X3,X4,X1,X2))|~r2_hidden(X2,X3)|X1!=k12_pralg_1(X3,X4)|~v1_relat_1(X1)|~v4_relat_1(X1,X3)|~v1_funct_1(X1)|~v1_partfun1(X1,X3)|~v1_relat_1(X4)|~v4_relat_1(X4,X3)|~v1_funct_1(X4)|~v1_partfun1(X4,X3)|~v2_pralg_1(X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_11, plain, (v1_relat_1(k12_pralg_1(X1,X2))|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_12, plain, (v4_relat_1(k12_pralg_1(X1,X2),X1)|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_13, plain, (v1_funct_1(k12_pralg_1(X1,X2))|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_14, plain, (v1_partfun1(k12_pralg_1(X1,X2),X1)|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_15, plain, (esk1_4(X1,X2,X3,X4)=k1_funct_1(X2,X4)|~r2_hidden(X4,X1)|X3!=k12_pralg_1(X1,X2)|~v1_relat_1(X3)|~v4_relat_1(X3,X1)|~v1_funct_1(X3)|~v1_partfun1(X3,X1)|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.37  cnf(c_0_16, negated_conjecture, (k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0)!=u1_struct_0(k10_pralg_1(esk3_0,esk4_0,esk5_0))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_17, plain, (v1_xboole_0(X1)|k10_pralg_1(X1,X2,X3)=k1_funct_1(X2,X3)|~v1_relat_1(X2)|~v4_relat_1(X2,X1)|~v1_funct_1(X2)|~v1_partfun1(X2,X1)|~v2_pralg_1(X2)|~m1_subset_1(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_18, negated_conjecture, (v2_pralg_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_19, negated_conjecture, (v1_partfun1(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_21, negated_conjecture, (v4_relat_1(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_22, negated_conjecture, (v1_relat_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (m1_subset_1(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, (~v1_xboole_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_25, plain, (u1_struct_0(esk1_4(X1,X2,k12_pralg_1(X1,X2),X3))=k1_funct_1(k12_pralg_1(X1,X2),X3)|~v2_pralg_1(X2)|~v1_partfun1(X2,X1)|~v1_funct_1(X2)|~v4_relat_1(X2,X1)|~v1_relat_1(X2)|~r2_hidden(X3,X1)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_10]), c_0_11]), c_0_12]), c_0_13]), c_0_14])).
% 0.12/0.37  cnf(c_0_26, plain, (esk1_4(X1,X2,k12_pralg_1(X1,X2),X3)=k1_funct_1(X2,X3)|~v2_pralg_1(X2)|~v1_partfun1(X2,X1)|~v1_funct_1(X2)|~v4_relat_1(X2,X1)|~v1_relat_1(X2)|~r2_hidden(X3,X1)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_15]), c_0_11]), c_0_12]), c_0_13]), c_0_14])).
% 0.12/0.37  fof(c_0_27, plain, ![X6, X7]:(((~m1_subset_1(X7,X6)|r2_hidden(X7,X6)|v1_xboole_0(X6))&(~r2_hidden(X7,X6)|m1_subset_1(X7,X6)|v1_xboole_0(X6)))&((~m1_subset_1(X7,X6)|v1_xboole_0(X7)|~v1_xboole_0(X6))&(~v1_xboole_0(X7)|m1_subset_1(X7,X6)|~v1_xboole_0(X6)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d2_subset_1])])])])).
% 0.12/0.37  cnf(c_0_28, negated_conjecture, (u1_struct_0(k1_funct_1(esk4_0,esk5_0))!=k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19]), c_0_20]), c_0_21]), c_0_22]), c_0_23])]), c_0_24])).
% 0.12/0.37  cnf(c_0_29, plain, (u1_struct_0(k1_funct_1(X1,X2))=k1_funct_1(k12_pralg_1(X3,X1),X2)|~v2_pralg_1(X1)|~v1_partfun1(X1,X3)|~v1_funct_1(X1)|~v4_relat_1(X1,X3)|~v1_relat_1(X1)|~r2_hidden(X2,X3)), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.12/0.37  cnf(c_0_30, plain, (r2_hidden(X1,X2)|v1_xboole_0(X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.12/0.37  cnf(c_0_31, negated_conjecture, (k1_funct_1(k12_pralg_1(X1,esk4_0),esk5_0)!=k1_funct_1(k12_pralg_1(esk3_0,esk4_0),esk5_0)|~v1_partfun1(esk4_0,X1)|~v4_relat_1(esk4_0,X1)|~r2_hidden(esk5_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_18]), c_0_20]), c_0_22])])).
% 0.12/0.37  cnf(c_0_32, negated_conjecture, (r2_hidden(esk5_0,esk3_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_23]), c_0_24])).
% 0.12/0.37  cnf(c_0_33, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(er,[status(thm)],[c_0_31]), c_0_19]), c_0_21]), c_0_32])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 34
% 0.12/0.37  # Proof object clause steps            : 23
% 0.12/0.37  # Proof object formula steps           : 11
% 0.12/0.37  # Proof object conjectures             : 15
% 0.12/0.37  # Proof object clause conjectures      : 12
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 16
% 0.12/0.37  # Proof object initial formulas used   : 5
% 0.12/0.37  # Proof object generating inferences   : 5
% 0.12/0.37  # Proof object simplifying inferences  : 27
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 5
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 22
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 22
% 0.12/0.37  # Processed clauses                    : 56
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 1
% 0.12/0.37  # ...remaining for further processing  : 55
% 0.12/0.37  # Other redundant clauses eliminated   : 4
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 0
% 0.12/0.37  # Generated clauses                    : 23
% 0.12/0.37  # ...of the previous two non-trivial   : 17
% 0.12/0.37  # Contextual simplify-reflections      : 12
% 0.12/0.37  # Paramodulations                      : 18
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 5
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
% 0.12/0.37  # Current number of processed clauses  : 29
% 0.12/0.37  #    Positive orientable unit clauses  : 8
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 3
% 0.12/0.37  #    Non-unit-clauses                  : 18
% 0.12/0.37  # Current number of unprocessed clauses: 5
% 0.12/0.37  # ...number of literals in the above   : 60
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 22
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 423
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 12
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 12
% 0.12/0.37  # Unit Clause-clause subsumption calls : 4
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 0
% 0.12/0.37  # BW rewrite match successes           : 0
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 2878
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.031 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.036 s
% 0.12/0.37  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
