%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:10:08 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   76 (1093 expanded)
%              Number of clauses        :   49 ( 358 expanded)
%              Number of leaves         :   13 ( 263 expanded)
%              Depth                    :   14
%              Number of atoms          :  327 (8312 expanded)
%              Number of equality atoms :   35 ( 126 expanded)
%              Maximal formula depth    :   17 (   5 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t84_orders_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m2_orders_2(X3,X1,X2)
             => ! [X4] :
                  ( m2_orders_2(X4,X1,X2)
                 => ( r2_xboole_0(X3,X4)
                  <=> m1_orders_2(X3,X1,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t84_orders_2)).

fof(dt_m2_orders_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1)
        & m1_orders_1(X2,k1_orders_1(u1_struct_0(X1))) )
     => ! [X3] :
          ( m2_orders_2(X3,X1,X2)
         => ( v6_orders_2(X3,X1)
            & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_m2_orders_2)).

fof(t67_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_orders_2(X3,X1,X2)
             => r1_tarski(X3,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t67_orders_2)).

fof(d8_xboole_0,axiom,(
    ! [X1,X2] :
      ( r2_xboole_0(X1,X2)
    <=> ( r1_tarski(X1,X2)
        & X1 != X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_xboole_0)).

fof(t83_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m2_orders_2(X3,X1,X2)
             => ! [X4] :
                  ( m2_orders_2(X4,X1,X2)
                 => ( X3 != X4
                   => ( m1_orders_2(X3,X1,X4)
                    <=> ~ m1_orders_2(X4,X1,X3) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_orders_2)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(t79_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m2_orders_2(X3,X1,X2)
             => r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_orders_2)).

fof(t69_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ~ ( X2 != k1_xboole_0
                  & m1_orders_2(X2,X1,X3)
                  & m1_orders_2(X3,X1,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_orders_2)).

fof(dt_m1_orders_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => ! [X3] :
          ( m1_orders_2(X3,X1,X2)
         => m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_m1_orders_2)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_ordinal1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & v5_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
           => ! [X3] :
                ( m2_orders_2(X3,X1,X2)
               => ! [X4] :
                    ( m2_orders_2(X4,X1,X2)
                   => ( r2_xboole_0(X3,X4)
                    <=> m1_orders_2(X3,X1,X4) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t84_orders_2])).

fof(c_0_14,plain,(
    ! [X19,X20,X21] :
      ( ( v6_orders_2(X21,X19)
        | ~ m2_orders_2(X21,X19,X20)
        | v2_struct_0(X19)
        | ~ v3_orders_2(X19)
        | ~ v4_orders_2(X19)
        | ~ v5_orders_2(X19)
        | ~ l1_orders_2(X19)
        | ~ m1_orders_1(X20,k1_orders_1(u1_struct_0(X19))) )
      & ( m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))
        | ~ m2_orders_2(X21,X19,X20)
        | v2_struct_0(X19)
        | ~ v3_orders_2(X19)
        | ~ v4_orders_2(X19)
        | ~ v5_orders_2(X19)
        | ~ l1_orders_2(X19)
        | ~ m1_orders_1(X20,k1_orders_1(u1_struct_0(X19))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m2_orders_2])])])])])).

fof(c_0_15,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v3_orders_2(esk1_0)
    & v4_orders_2(esk1_0)
    & v5_orders_2(esk1_0)
    & l1_orders_2(esk1_0)
    & m1_orders_1(esk2_0,k1_orders_1(u1_struct_0(esk1_0)))
    & m2_orders_2(esk3_0,esk1_0,esk2_0)
    & m2_orders_2(esk4_0,esk1_0,esk2_0)
    & ( ~ r2_xboole_0(esk3_0,esk4_0)
      | ~ m1_orders_2(esk3_0,esk1_0,esk4_0) )
    & ( r2_xboole_0(esk3_0,esk4_0)
      | m1_orders_2(esk3_0,esk1_0,esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).

cnf(c_0_16,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | v2_struct_0(X2)
    | ~ m2_orders_2(X1,X2,X3)
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_orders_1(X3,k1_orders_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_17,negated_conjecture,
    ( m1_orders_1(esk2_0,k1_orders_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_18,negated_conjecture,
    ( l1_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( v5_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( v4_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,negated_conjecture,
    ( v3_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_23,plain,(
    ! [X22,X23,X24] :
      ( v2_struct_0(X22)
      | ~ v3_orders_2(X22)
      | ~ v4_orders_2(X22)
      | ~ v5_orders_2(X22)
      | ~ l1_orders_2(X22)
      | ~ m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))
      | ~ m1_orders_2(X24,X22,X23)
      | r1_tarski(X24,X23) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t67_orders_2])])])])).

cnf(c_0_24,negated_conjecture,
    ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m2_orders_2(X1,esk1_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_25,negated_conjecture,
    ( m2_orders_2(esk4_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_26,plain,(
    ! [X5,X6] :
      ( ( r1_tarski(X5,X6)
        | ~ r2_xboole_0(X5,X6) )
      & ( X5 != X6
        | ~ r2_xboole_0(X5,X6) )
      & ( ~ r1_tarski(X5,X6)
        | X5 = X6
        | r2_xboole_0(X5,X6) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).

cnf(c_0_27,plain,
    ( v2_struct_0(X1)
    | r1_tarski(X3,X2)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_orders_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_28,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_29,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_30,negated_conjecture,
    ( r2_xboole_0(esk3_0,esk4_0)
    | m1_orders_2(esk3_0,esk1_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_31,plain,(
    ! [X31,X32,X33,X34] :
      ( ( ~ m1_orders_2(X33,X31,X34)
        | ~ m1_orders_2(X34,X31,X33)
        | X33 = X34
        | ~ m2_orders_2(X34,X31,X32)
        | ~ m2_orders_2(X33,X31,X32)
        | ~ m1_orders_1(X32,k1_orders_1(u1_struct_0(X31)))
        | v2_struct_0(X31)
        | ~ v3_orders_2(X31)
        | ~ v4_orders_2(X31)
        | ~ v5_orders_2(X31)
        | ~ l1_orders_2(X31) )
      & ( m1_orders_2(X34,X31,X33)
        | m1_orders_2(X33,X31,X34)
        | X33 = X34
        | ~ m2_orders_2(X34,X31,X32)
        | ~ m2_orders_2(X33,X31,X32)
        | ~ m1_orders_1(X32,k1_orders_1(u1_struct_0(X31)))
        | v2_struct_0(X31)
        | ~ v3_orders_2(X31)
        | ~ v4_orders_2(X31)
        | ~ v5_orders_2(X31)
        | ~ l1_orders_2(X31) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_orders_2])])])])])).

cnf(c_0_32,negated_conjecture,
    ( r1_tarski(X1,esk4_0)
    | ~ m1_orders_2(X1,esk1_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_33,negated_conjecture,
    ( m1_orders_2(esk3_0,esk1_0,esk4_0)
    | r1_tarski(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_34,plain,
    ( m1_orders_2(X1,X2,X3)
    | m1_orders_2(X3,X2,X1)
    | X3 = X1
    | v2_struct_0(X2)
    | ~ m2_orders_2(X1,X2,X4)
    | ~ m2_orders_2(X3,X2,X4)
    | ~ m1_orders_1(X4,k1_orders_1(u1_struct_0(X2)))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_35,plain,
    ( X1 = X2
    | r2_xboole_0(X1,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_36,negated_conjecture,
    ( r1_tarski(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( m2_orders_2(esk3_0,esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_38,negated_conjecture,
    ( X1 = X2
    | m1_orders_2(X1,esk1_0,X2)
    | m1_orders_2(X2,esk1_0,X1)
    | ~ m2_orders_2(X2,esk1_0,esk2_0)
    | ~ m2_orders_2(X1,esk1_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_17]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_39,negated_conjecture,
    ( ~ r2_xboole_0(esk3_0,esk4_0)
    | ~ m1_orders_2(esk3_0,esk1_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_40,negated_conjecture,
    ( esk4_0 = esk3_0
    | r2_xboole_0(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

fof(c_0_41,plain,(
    ! [X7,X8] :
      ( ( r1_tarski(X7,X8)
        | X7 != X8 )
      & ( r1_tarski(X8,X7)
        | X7 != X8 )
      & ( ~ r1_tarski(X7,X8)
        | ~ r1_tarski(X8,X7)
        | X7 = X8 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_42,plain,(
    ! [X28,X29,X30] :
      ( v2_struct_0(X28)
      | ~ v3_orders_2(X28)
      | ~ v4_orders_2(X28)
      | ~ v5_orders_2(X28)
      | ~ l1_orders_2(X28)
      | ~ m1_orders_1(X29,k1_orders_1(u1_struct_0(X28)))
      | ~ m2_orders_2(X30,X28,X29)
      | r2_hidden(k1_funct_1(X29,u1_struct_0(X28)),X30) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t79_orders_2])])])])).

fof(c_0_43,plain,(
    ! [X25,X26,X27] :
      ( v2_struct_0(X25)
      | ~ v3_orders_2(X25)
      | ~ v4_orders_2(X25)
      | ~ v5_orders_2(X25)
      | ~ l1_orders_2(X25)
      | ~ m1_subset_1(X26,k1_zfmisc_1(u1_struct_0(X25)))
      | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X25)))
      | X26 = k1_xboole_0
      | ~ m1_orders_2(X26,X25,X27)
      | ~ m1_orders_2(X27,X25,X26) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t69_orders_2])])])])).

fof(c_0_44,plain,(
    ! [X16,X17,X18] :
      ( v2_struct_0(X16)
      | ~ v3_orders_2(X16)
      | ~ v4_orders_2(X16)
      | ~ v5_orders_2(X16)
      | ~ l1_orders_2(X16)
      | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))
      | ~ m1_orders_2(X18,X16,X17)
      | m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X16))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_orders_2])])])])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_24,c_0_37])).

cnf(c_0_46,negated_conjecture,
    ( X1 = esk4_0
    | m1_orders_2(esk4_0,esk1_0,X1)
    | m1_orders_2(X1,esk1_0,esk4_0)
    | ~ m2_orders_2(X1,esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_25])).

cnf(c_0_47,negated_conjecture,
    ( esk4_0 = esk3_0
    | ~ m1_orders_2(esk3_0,esk1_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_48,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_49,plain,
    ( v2_struct_0(X1)
    | r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))
    | ~ m2_orders_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_50,plain,
    ( v2_struct_0(X1)
    | X2 = k1_xboole_0
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_orders_2(X2,X1,X3)
    | ~ m1_orders_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_51,plain,
    ( v2_struct_0(X1)
    | m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_orders_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_52,negated_conjecture,
    ( r1_tarski(X1,esk3_0)
    | ~ m1_orders_2(X1,esk1_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_45]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_53,negated_conjecture,
    ( esk4_0 = esk3_0
    | m1_orders_2(esk4_0,esk1_0,esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_37]),c_0_47])).

cnf(c_0_54,negated_conjecture,
    ( esk4_0 = esk3_0
    | ~ r1_tarski(esk4_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_36])).

cnf(c_0_55,plain,
    ( X1 != X2
    | ~ r2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_56,plain,(
    ! [X13] :
      ( ~ r1_tarski(X13,k1_xboole_0)
      | X13 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

fof(c_0_57,plain,(
    ! [X11,X12] : r1_tarski(k4_xboole_0(X11,X12),X11) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_58,plain,(
    ! [X14,X15] :
      ( ~ r2_hidden(X14,X15)
      | ~ r1_tarski(X15,X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

cnf(c_0_59,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk2_0,u1_struct_0(esk1_0)),X1)
    | ~ m2_orders_2(X1,esk1_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_17]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_60,plain,
    ( X1 = k1_xboole_0
    | v2_struct_0(X2)
    | ~ m1_orders_2(X3,X2,X1)
    | ~ m1_orders_2(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v3_orders_2(X2) ),
    inference(csr,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_61,negated_conjecture,
    ( esk4_0 = esk3_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_54])).

cnf(c_0_62,plain,
    ( ~ r2_xboole_0(X1,X1) ),
    inference(er,[status(thm)],[c_0_55])).

fof(c_0_63,plain,(
    ! [X9,X10] :
      ( ( k4_xboole_0(X9,X10) != k1_xboole_0
        | r1_tarski(X9,X10) )
      & ( ~ r1_tarski(X9,X10)
        | k4_xboole_0(X9,X10) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

cnf(c_0_64,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_56])).

cnf(c_0_65,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_66,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_67,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk2_0,u1_struct_0(esk1_0)),esk3_0) ),
    inference(spm,[status(thm)],[c_0_59,c_0_37])).

cnf(c_0_68,negated_conjecture,
    ( X1 = k1_xboole_0
    | ~ m1_orders_2(esk3_0,esk1_0,X1)
    | ~ m1_orders_2(X1,esk1_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_45]),c_0_18]),c_0_19]),c_0_20]),c_0_21])]),c_0_22])).

cnf(c_0_69,negated_conjecture,
    ( m1_orders_2(esk3_0,esk1_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_61]),c_0_61]),c_0_62])).

cnf(c_0_70,plain,
    ( r1_tarski(X1,X2)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_71,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_72,negated_conjecture,
    ( ~ r1_tarski(esk3_0,k1_funct_1(esk2_0,u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_73,negated_conjecture,
    ( esk3_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_69])])).

cnf(c_0_74,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(spm,[status(thm)],[c_0_70,c_0_71])).

cnf(c_0_75,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72,c_0_73]),c_0_74])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n023.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 10:07:21 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_SE_CS_SP_PI_PS_S2S
% 0.19/0.38  # and selection function SelectNewComplexAHP.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.029 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t84_orders_2, conjecture, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(m2_orders_2(X3,X1,X2)=>![X4]:(m2_orders_2(X4,X1,X2)=>(r2_xboole_0(X3,X4)<=>m1_orders_2(X3,X1,X4)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t84_orders_2)).
% 0.19/0.38  fof(dt_m2_orders_2, axiom, ![X1, X2]:((((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))&m1_orders_1(X2,k1_orders_1(u1_struct_0(X1))))=>![X3]:(m2_orders_2(X3,X1,X2)=>(v6_orders_2(X3,X1)&m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_m2_orders_2)).
% 0.19/0.38  fof(t67_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_orders_2(X3,X1,X2)=>r1_tarski(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t67_orders_2)).
% 0.19/0.38  fof(d8_xboole_0, axiom, ![X1, X2]:(r2_xboole_0(X1,X2)<=>(r1_tarski(X1,X2)&X1!=X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_xboole_0)).
% 0.19/0.38  fof(t83_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(m2_orders_2(X3,X1,X2)=>![X4]:(m2_orders_2(X4,X1,X2)=>(X3!=X4=>(m1_orders_2(X3,X1,X4)<=>~(m1_orders_2(X4,X1,X3)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_orders_2)).
% 0.19/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.38  fof(t79_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(m2_orders_2(X3,X1,X2)=>r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t79_orders_2)).
% 0.19/0.38  fof(t69_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>~(((X2!=k1_xboole_0&m1_orders_2(X2,X1,X3))&m1_orders_2(X3,X1,X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_orders_2)).
% 0.19/0.38  fof(dt_m1_orders_2, axiom, ![X1, X2]:((((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>![X3]:(m1_orders_2(X3,X1,X2)=>m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_m1_orders_2)).
% 0.19/0.38  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_xboole_1)).
% 0.19/0.38  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.19/0.38  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.19/0.38  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l32_xboole_1)).
% 0.19/0.38  fof(c_0_13, negated_conjecture, ~(![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))=>![X3]:(m2_orders_2(X3,X1,X2)=>![X4]:(m2_orders_2(X4,X1,X2)=>(r2_xboole_0(X3,X4)<=>m1_orders_2(X3,X1,X4))))))), inference(assume_negation,[status(cth)],[t84_orders_2])).
% 0.19/0.38  fof(c_0_14, plain, ![X19, X20, X21]:((v6_orders_2(X21,X19)|~m2_orders_2(X21,X19,X20)|(v2_struct_0(X19)|~v3_orders_2(X19)|~v4_orders_2(X19)|~v5_orders_2(X19)|~l1_orders_2(X19)|~m1_orders_1(X20,k1_orders_1(u1_struct_0(X19)))))&(m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))|~m2_orders_2(X21,X19,X20)|(v2_struct_0(X19)|~v3_orders_2(X19)|~v4_orders_2(X19)|~v5_orders_2(X19)|~l1_orders_2(X19)|~m1_orders_1(X20,k1_orders_1(u1_struct_0(X19)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m2_orders_2])])])])])).
% 0.19/0.38  fof(c_0_15, negated_conjecture, (((((~v2_struct_0(esk1_0)&v3_orders_2(esk1_0))&v4_orders_2(esk1_0))&v5_orders_2(esk1_0))&l1_orders_2(esk1_0))&(m1_orders_1(esk2_0,k1_orders_1(u1_struct_0(esk1_0)))&(m2_orders_2(esk3_0,esk1_0,esk2_0)&(m2_orders_2(esk4_0,esk1_0,esk2_0)&((~r2_xboole_0(esk3_0,esk4_0)|~m1_orders_2(esk3_0,esk1_0,esk4_0))&(r2_xboole_0(esk3_0,esk4_0)|m1_orders_2(esk3_0,esk1_0,esk4_0))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_13])])])])).
% 0.19/0.38  cnf(c_0_16, plain, (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|v2_struct_0(X2)|~m2_orders_2(X1,X2,X3)|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_orders_1(X3,k1_orders_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_17, negated_conjecture, (m1_orders_1(esk2_0,k1_orders_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_18, negated_conjecture, (l1_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_19, negated_conjecture, (v5_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_20, negated_conjecture, (v4_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_21, negated_conjecture, (v3_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_22, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  fof(c_0_23, plain, ![X22, X23, X24]:(v2_struct_0(X22)|~v3_orders_2(X22)|~v4_orders_2(X22)|~v5_orders_2(X22)|~l1_orders_2(X22)|(~m1_subset_1(X23,k1_zfmisc_1(u1_struct_0(X22)))|(~m1_orders_2(X24,X22,X23)|r1_tarski(X24,X23)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t67_orders_2])])])])).
% 0.19/0.38  cnf(c_0_24, negated_conjecture, (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))|~m2_orders_2(X1,esk1_0,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_25, negated_conjecture, (m2_orders_2(esk4_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  fof(c_0_26, plain, ![X5, X6]:(((r1_tarski(X5,X6)|~r2_xboole_0(X5,X6))&(X5!=X6|~r2_xboole_0(X5,X6)))&(~r1_tarski(X5,X6)|X5=X6|r2_xboole_0(X5,X6))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_xboole_0])])])).
% 0.19/0.38  cnf(c_0_27, plain, (v2_struct_0(X1)|r1_tarski(X3,X2)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_orders_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.38  cnf(c_0_28, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.19/0.38  cnf(c_0_29, plain, (r1_tarski(X1,X2)|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.38  cnf(c_0_30, negated_conjecture, (r2_xboole_0(esk3_0,esk4_0)|m1_orders_2(esk3_0,esk1_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  fof(c_0_31, plain, ![X31, X32, X33, X34]:((~m1_orders_2(X33,X31,X34)|~m1_orders_2(X34,X31,X33)|X33=X34|~m2_orders_2(X34,X31,X32)|~m2_orders_2(X33,X31,X32)|~m1_orders_1(X32,k1_orders_1(u1_struct_0(X31)))|(v2_struct_0(X31)|~v3_orders_2(X31)|~v4_orders_2(X31)|~v5_orders_2(X31)|~l1_orders_2(X31)))&(m1_orders_2(X34,X31,X33)|m1_orders_2(X33,X31,X34)|X33=X34|~m2_orders_2(X34,X31,X32)|~m2_orders_2(X33,X31,X32)|~m1_orders_1(X32,k1_orders_1(u1_struct_0(X31)))|(v2_struct_0(X31)|~v3_orders_2(X31)|~v4_orders_2(X31)|~v5_orders_2(X31)|~l1_orders_2(X31)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_orders_2])])])])])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (r1_tarski(X1,esk4_0)|~m1_orders_2(X1,esk1_0,esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_28]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_33, negated_conjecture, (m1_orders_2(esk3_0,esk1_0,esk4_0)|r1_tarski(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.38  cnf(c_0_34, plain, (m1_orders_2(X1,X2,X3)|m1_orders_2(X3,X2,X1)|X3=X1|v2_struct_0(X2)|~m2_orders_2(X1,X2,X4)|~m2_orders_2(X3,X2,X4)|~m1_orders_1(X4,k1_orders_1(u1_struct_0(X2)))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.38  cnf(c_0_35, plain, (X1=X2|r2_xboole_0(X1,X2)|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.38  cnf(c_0_36, negated_conjecture, (r1_tarski(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.19/0.38  cnf(c_0_37, negated_conjecture, (m2_orders_2(esk3_0,esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_38, negated_conjecture, (X1=X2|m1_orders_2(X1,esk1_0,X2)|m1_orders_2(X2,esk1_0,X1)|~m2_orders_2(X2,esk1_0,esk2_0)|~m2_orders_2(X1,esk1_0,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_17]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_39, negated_conjecture, (~r2_xboole_0(esk3_0,esk4_0)|~m1_orders_2(esk3_0,esk1_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_40, negated_conjecture, (esk4_0=esk3_0|r2_xboole_0(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.19/0.38  fof(c_0_41, plain, ![X7, X8]:(((r1_tarski(X7,X8)|X7!=X8)&(r1_tarski(X8,X7)|X7!=X8))&(~r1_tarski(X7,X8)|~r1_tarski(X8,X7)|X7=X8)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.38  fof(c_0_42, plain, ![X28, X29, X30]:(v2_struct_0(X28)|~v3_orders_2(X28)|~v4_orders_2(X28)|~v5_orders_2(X28)|~l1_orders_2(X28)|(~m1_orders_1(X29,k1_orders_1(u1_struct_0(X28)))|(~m2_orders_2(X30,X28,X29)|r2_hidden(k1_funct_1(X29,u1_struct_0(X28)),X30)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t79_orders_2])])])])).
% 0.19/0.38  fof(c_0_43, plain, ![X25, X26, X27]:(v2_struct_0(X25)|~v3_orders_2(X25)|~v4_orders_2(X25)|~v5_orders_2(X25)|~l1_orders_2(X25)|(~m1_subset_1(X26,k1_zfmisc_1(u1_struct_0(X25)))|(~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X25)))|(X26=k1_xboole_0|~m1_orders_2(X26,X25,X27)|~m1_orders_2(X27,X25,X26))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t69_orders_2])])])])).
% 0.19/0.38  fof(c_0_44, plain, ![X16, X17, X18]:(v2_struct_0(X16)|~v3_orders_2(X16)|~v4_orders_2(X16)|~v5_orders_2(X16)|~l1_orders_2(X16)|~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))|(~m1_orders_2(X18,X16,X17)|m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X16))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_orders_2])])])])).
% 0.19/0.38  cnf(c_0_45, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_24, c_0_37])).
% 0.19/0.38  cnf(c_0_46, negated_conjecture, (X1=esk4_0|m1_orders_2(esk4_0,esk1_0,X1)|m1_orders_2(X1,esk1_0,esk4_0)|~m2_orders_2(X1,esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_38, c_0_25])).
% 0.19/0.38  cnf(c_0_47, negated_conjecture, (esk4_0=esk3_0|~m1_orders_2(esk3_0,esk1_0,esk4_0)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.19/0.38  cnf(c_0_48, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.19/0.38  cnf(c_0_49, plain, (v2_struct_0(X1)|r2_hidden(k1_funct_1(X2,u1_struct_0(X1)),X3)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_orders_1(X2,k1_orders_1(u1_struct_0(X1)))|~m2_orders_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.38  cnf(c_0_50, plain, (v2_struct_0(X1)|X2=k1_xboole_0|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~m1_orders_2(X2,X1,X3)|~m1_orders_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.38  cnf(c_0_51, plain, (v2_struct_0(X1)|m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_orders_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.38  cnf(c_0_52, negated_conjecture, (r1_tarski(X1,esk3_0)|~m1_orders_2(X1,esk1_0,esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_45]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_53, negated_conjecture, (esk4_0=esk3_0|m1_orders_2(esk4_0,esk1_0,esk3_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_37]), c_0_47])).
% 0.19/0.38  cnf(c_0_54, negated_conjecture, (esk4_0=esk3_0|~r1_tarski(esk4_0,esk3_0)), inference(spm,[status(thm)],[c_0_48, c_0_36])).
% 0.19/0.38  cnf(c_0_55, plain, (X1!=X2|~r2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.38  fof(c_0_56, plain, ![X13]:(~r1_tarski(X13,k1_xboole_0)|X13=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 0.19/0.38  fof(c_0_57, plain, ![X11, X12]:r1_tarski(k4_xboole_0(X11,X12),X11), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.19/0.38  fof(c_0_58, plain, ![X14, X15]:(~r2_hidden(X14,X15)|~r1_tarski(X15,X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.19/0.38  cnf(c_0_59, negated_conjecture, (r2_hidden(k1_funct_1(esk2_0,u1_struct_0(esk1_0)),X1)|~m2_orders_2(X1,esk1_0,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_17]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_60, plain, (X1=k1_xboole_0|v2_struct_0(X2)|~m1_orders_2(X3,X2,X1)|~m1_orders_2(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~l1_orders_2(X2)|~v5_orders_2(X2)|~v4_orders_2(X2)|~v3_orders_2(X2)), inference(csr,[status(thm)],[c_0_50, c_0_51])).
% 0.19/0.38  cnf(c_0_61, negated_conjecture, (esk4_0=esk3_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_54])).
% 0.19/0.38  cnf(c_0_62, plain, (~r2_xboole_0(X1,X1)), inference(er,[status(thm)],[c_0_55])).
% 0.19/0.38  fof(c_0_63, plain, ![X9, X10]:((k4_xboole_0(X9,X10)!=k1_xboole_0|r1_tarski(X9,X10))&(~r1_tarski(X9,X10)|k4_xboole_0(X9,X10)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 0.19/0.38  cnf(c_0_64, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_56])).
% 0.19/0.38  cnf(c_0_65, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.19/0.38  cnf(c_0_66, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.19/0.38  cnf(c_0_67, negated_conjecture, (r2_hidden(k1_funct_1(esk2_0,u1_struct_0(esk1_0)),esk3_0)), inference(spm,[status(thm)],[c_0_59, c_0_37])).
% 0.19/0.38  cnf(c_0_68, negated_conjecture, (X1=k1_xboole_0|~m1_orders_2(esk3_0,esk1_0,X1)|~m1_orders_2(X1,esk1_0,esk3_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_45]), c_0_18]), c_0_19]), c_0_20]), c_0_21])]), c_0_22])).
% 0.19/0.38  cnf(c_0_69, negated_conjecture, (m1_orders_2(esk3_0,esk1_0,esk3_0)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_61]), c_0_61]), c_0_62])).
% 0.19/0.38  cnf(c_0_70, plain, (r1_tarski(X1,X2)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.19/0.38  cnf(c_0_71, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_64, c_0_65])).
% 0.19/0.38  cnf(c_0_72, negated_conjecture, (~r1_tarski(esk3_0,k1_funct_1(esk2_0,u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_66, c_0_67])).
% 0.19/0.38  cnf(c_0_73, negated_conjecture, (esk3_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_69])])).
% 0.19/0.38  cnf(c_0_74, plain, (r1_tarski(k1_xboole_0,X1)), inference(spm,[status(thm)],[c_0_70, c_0_71])).
% 0.19/0.38  cnf(c_0_75, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72, c_0_73]), c_0_74])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 76
% 0.19/0.38  # Proof object clause steps            : 49
% 0.19/0.38  # Proof object formula steps           : 27
% 0.19/0.38  # Proof object conjectures             : 34
% 0.19/0.38  # Proof object clause conjectures      : 31
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 24
% 0.19/0.38  # Proof object initial formulas used   : 13
% 0.19/0.38  # Proof object generating inferences   : 21
% 0.19/0.38  # Proof object simplifying inferences  : 48
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 13
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 29
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 29
% 0.19/0.38  # Processed clauses                    : 112
% 0.19/0.38  # ...of these trivial                  : 2
% 0.19/0.38  # ...subsumed                          : 10
% 0.19/0.38  # ...remaining for further processing  : 100
% 0.19/0.38  # Other redundant clauses eliminated   : 3
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 1
% 0.19/0.38  # Backward-rewritten                   : 31
% 0.19/0.38  # Generated clauses                    : 76
% 0.19/0.38  # ...of the previous two non-trivial   : 67
% 0.19/0.38  # Contextual simplify-reflections      : 3
% 0.19/0.38  # Paramodulations                      : 73
% 0.19/0.38  # Factorizations                       : 0
% 0.19/0.38  # Equation resolutions                 : 3
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 37
% 0.19/0.38  #    Positive orientable unit clauses  : 12
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 2
% 0.19/0.38  #    Non-unit-clauses                  : 23
% 0.19/0.38  # Current number of unprocessed clauses: 9
% 0.19/0.38  # ...number of literals in the above   : 25
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 60
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 1034
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 150
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 13
% 0.19/0.38  # Unit Clause-clause subsumption calls : 69
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 15
% 0.19/0.38  # BW rewrite match successes           : 4
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 4211
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.034 s
% 0.19/0.38  # System time              : 0.004 s
% 0.19/0.38  # Total time               : 0.038 s
% 0.19/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
